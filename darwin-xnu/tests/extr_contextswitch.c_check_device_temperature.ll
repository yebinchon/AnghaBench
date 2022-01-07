; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_contextswitch.c_check_device_temperature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_contextswitch.c_check_device_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"powerctrl Factor1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to check device temperature\00", align 1
@T_END = common dso_local global i32 0, align 4
@POWERCTRL_SUCCESS_STR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"device temperature\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Device temperature check pass\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_device_temperature() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = call i32* @popen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @T_FAIL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @T_END, align 4
  br label %9

9:                                                ; preds = %6, %0
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @fgets(i8* %10, i32 256, i32* %11)
  %13 = load i32, i32* @POWERCTRL_SUCCESS_STR, align 4
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %15 = load i32, i32* @POWERCTRL_SUCCESS_STR, align 4
  %16 = call i32 @strlen(i32 %15)
  %17 = call i64 @strncmp(i32 %13, i8* %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %9
  %20 = call i32 @T_PERF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), double 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %24

21:                                               ; preds = %9
  %22 = call i32 @T_PASS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %23 = call i32 @T_PERF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), double 1.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %19
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @pclose(i32* %25)
  ret void
}

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @T_FAIL(i8*) #1

declare dso_local i32 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @T_PERF(i8*, double, i8*, i8*) #1

declare dso_local i32 @T_PASS(i8*) #1

declare dso_local i32 @pclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
