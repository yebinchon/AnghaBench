; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/unit_test/test/main/extr_example_unit_test_test.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/unit_test/test/main/extr_example_unit_test_test.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Executing one test by its name\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Mean of an empty array is zero\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Running tests with [mean] tag\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[mean]\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Running tests without [fails] tag\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"[fails]\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Running all the registered tests\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Starting interactive test menu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = call i32 @print_banner(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (...) @UNITY_BEGIN()
  %3 = call i32 @unity_run_test_by_name(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 (...) @UNITY_END()
  %5 = call i32 @print_banner(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 (...) @UNITY_BEGIN()
  %7 = call i32 @unity_run_tests_by_tag(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %8 = call i32 (...) @UNITY_END()
  %9 = call i32 @print_banner(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (...) @UNITY_BEGIN()
  %11 = call i32 @unity_run_tests_by_tag(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %12 = call i32 (...) @UNITY_END()
  %13 = call i32 @print_banner(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %14 = call i32 (...) @UNITY_BEGIN()
  %15 = call i32 (...) @unity_run_all_tests()
  %16 = call i32 (...) @UNITY_END()
  %17 = call i32 @print_banner(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %18 = call i32 (...) @unity_run_menu()
  ret void
}

declare dso_local i32 @print_banner(i8*) #1

declare dso_local i32 @UNITY_BEGIN(...) #1

declare dso_local i32 @unity_run_test_by_name(i8*) #1

declare dso_local i32 @UNITY_END(...) #1

declare dso_local i32 @unity_run_tests_by_tag(i8*, i32) #1

declare dso_local i32 @unity_run_all_tests(...) #1

declare dso_local i32 @unity_run_menu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
