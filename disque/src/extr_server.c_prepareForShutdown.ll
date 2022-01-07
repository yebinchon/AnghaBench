; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_prepareForShutdown.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_prepareForShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i32 }

@SHUTDOWN_REWRITE_AOF = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"User requested shutdown...\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_OFF = common dso_local global i64 0, align 8
@AOF_WAIT_REWRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Writing initial AOF, can't exit.\00", align 1
@C_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"There is a child rewriting the AOF. Killing it!\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Calling fsync() on the AOF file.\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Removing the pid file.\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Disque is now ready to exit, bye bye...\00", align 1
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepareForShutdown(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SHUTDOWN_REWRITE_AOF, align 4
  %7 = and i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @LL_WARNING, align 4
  %9 = call i32 @serverLog(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %11 = load i64, i64* @AOF_OFF, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %18 = load i64, i64* @AOF_WAIT_REWRITE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @LL_WARNING, align 4
  %22 = call i32 @serverLog(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @C_ERR, align 4
  store i32 %23, i32* %2, align 4
  br label %59

24:                                               ; preds = %16
  %25 = load i32, i32* @LL_WARNING, align 4
  %26 = call i32 @serverLog(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %28 = load i32, i32* @SIGUSR1, align 4
  %29 = call i32 @kill(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %13
  %31 = load i32, i32* @LL_NOTICE, align 4
  %32 = call i32 @serverLog(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %34 = call i32 @aof_fsync(i32 %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %40 = call i32 @rewriteAppendOnlyFile(i32 %39, i32 0)
  %41 = load i32, i32* @C_ERR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @C_ERR, align 4
  store i32 %44, i32* %2, align 4
  br label %59

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, i32* @LL_NOTICE, align 4
  %51 = call i32 @serverLog(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %53 = call i32 @unlink(i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = call i32 @closeListeningSockets(i32 1)
  %56 = load i32, i32* @LL_WARNING, align 4
  %57 = call i32 @serverLog(i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @C_OK, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %43, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @aof_fsync(i32) #1

declare dso_local i32 @rewriteAppendOnlyFile(i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @closeListeningSockets(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
