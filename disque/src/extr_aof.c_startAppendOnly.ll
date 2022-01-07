; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_startAppendOnly.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_startAppendOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Disque needs to enable the AOF but can't open the append only file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [137 x i8] c"Disque needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error.\00", align 1
@AOF_WAIT_REWRITE = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @startAppendOnly() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %4 = load i32, i32* @O_WRONLY, align 4
  %5 = load i32, i32* @O_APPEND, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @O_CREAT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @open(i32 %3, i32 %8, i32 420)
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %11 = load i64, i64* @AOF_OFF, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @serverAssert(i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i32, i32* @LL_WARNING, align 4
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @strerror(i32 %19)
  %21 = call i32 (i32, i8*, ...) @serverLog(i32 %18, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @C_ERR, align 4
  store i32 %22, i32* %1, align 4
  br label %36

23:                                               ; preds = %0
  %24 = call i32 (...) @rewriteAppendOnlyFileBackground()
  %25 = load i32, i32* @C_ERR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* @LL_WARNING, align 4
  %31 = call i32 (i32, i8*, ...) @serverLog(i32 %30, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @C_ERR, align 4
  store i32 %32, i32* %1, align 4
  br label %36

33:                                               ; preds = %23
  %34 = load i64, i64* @AOF_WAIT_REWRITE, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %35 = load i32, i32* @C_OK, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %33, %27, %17
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @rewriteAppendOnlyFileBackground(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
