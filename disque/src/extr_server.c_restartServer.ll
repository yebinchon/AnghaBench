; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_restartServer.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_restartServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X_OK = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@RESTART_SERVER_CONFIG_REWRITE = common dso_local global i32 0, align 4
@RESTART_SERVER_GRACEFULLY = common dso_local global i32 0, align 4
@SHUTDOWN_NOFLAGS = common dso_local global i32 0, align 4
@C_OK = common dso_local global i64 0, align 8
@environ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @restartServer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %8 = load i32, i32* @X_OK, align 4
  %9 = call i32 @access(i32 %7, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @C_ERR, align 4
  store i32 %12, i32* %3, align 4
  br label %65

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RESTART_SERVER_CONFIG_REWRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %23 = call i32 @rewriteConfig(i64 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @C_ERR, align 4
  store i32 %26, i32* %3, align 4
  br label %65

27:                                               ; preds = %21, %18, %13
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RESTART_SERVER_GRACEFULLY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @SHUTDOWN_NOFLAGS, align 4
  %34 = call i64 @prepareForShutdown(i32 %33)
  %35 = load i64, i64* @C_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @C_ERR, align 4
  store i32 %38, i32* %3, align 4
  br label %65

39:                                               ; preds = %32, %27
  store i32 3, i32* %6, align 4
  br label %40

40:                                               ; preds = %49, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %43 = trunc i64 %42 to i32
  %44 = add nsw i32 %43, 1024
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %40

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = call i32 @usleep(i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %62 = load i32, i32* @environ, align 4
  %63 = call i32 @execve(i32 %60, i32 %61, i32 %62)
  %64 = call i32 @_exit(i32 1) #3
  unreachable

65:                                               ; preds = %37, %25, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @access(i32, i32) #1

declare dso_local i32 @rewriteConfig(i64) #1

declare dso_local i64 @prepareForShutdown(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @execve(i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
