; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeService.c_signal_handler.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeService.c_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SIGUSR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"debugFlag 135\00", align 1
@SIGUSR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"resetlog\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Shut down signal is %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Shutting down TDengine service...\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"shut down signal is %d, sender PID:%d\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Shut down TDengine service successfully\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"TDengine is shut down!\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @signal_handler(i32 %0, %struct.TYPE_3__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @SIGUSR1, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 @tsCfgDynamicOptions(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SIGUSR2, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @tsCfgDynamicOptions(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %36

18:                                               ; preds = %12
  %19 = load i32, i32* @LOG_INFO, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i8*, ...) @syslog(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @LOG_INFO, align 4
  %23 = call i32 (i32, i8*, ...) @syslog(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @dPrint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %24, i32 %27)
  %29 = call i32 (...) @dnodeCleanUpSystem()
  %30 = load i32, i32* @LOG_INFO, align 4
  %31 = call i32 (i32, i8*, ...) @syslog(i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @dPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i32 (...) @closelog()
  %34 = load i32, i32* @EXIT_SUCCESS, align 4
  %35 = call i32 @exit(i32 %34) #3
  unreachable

36:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @tsCfgDynamicOptions(i8*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @dPrint(i8*, ...) #1

declare dso_local i32 @dnodeCleanUpSystem(...) #1

declare dso_local i32 @closelog(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
