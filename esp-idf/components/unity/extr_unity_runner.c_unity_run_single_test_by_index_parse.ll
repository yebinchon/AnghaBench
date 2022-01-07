; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_single_test_by_index_parse.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_single_test_by_index_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Test ran in \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @unity_run_single_test_by_index_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unity_run_single_test_by_index_parse(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strtol(i8* %6, i32* null, i32 10)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = call i32 (...) @UNITY_EXEC_TIME_START()
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @unity_run_single_test_by_index(i32 %17)
  %19 = call i32 (...) @UNITY_EXEC_TIME_STOP()
  %20 = call i32 @UnityPrint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @UNITY_EXEC_TIME_MS()
  %22 = call i32 @UnityPrintNumberUnsigned(i32 %21)
  %23 = call i32 @UnityPrint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @UNITY_PRINT_EOL()
  %25 = call i32 (...) @UNITY_OUTPUT_FLUSH()
  br label %26

26:                                               ; preds = %14, %10, %2
  ret void
}

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @UNITY_EXEC_TIME_START(...) #1

declare dso_local i32 @unity_run_single_test_by_index(i32) #1

declare dso_local i32 @UNITY_EXEC_TIME_STOP(...) #1

declare dso_local i32 @UnityPrint(i8*) #1

declare dso_local i32 @UnityPrintNumberUnsigned(i32) #1

declare dso_local i32 @UNITY_EXEC_TIME_MS(...) #1

declare dso_local i32 @UNITY_PRINT_EOL(...) #1

declare dso_local i32 @UNITY_OUTPUT_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
