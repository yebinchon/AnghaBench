; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_runner.c_setUp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/unit-test-app/components/test_utils/extr_test_runner.c_setUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CONFIG_UNITY_CRITICAL_LEAK_LEVEL_GENERAL = common dso_local global i32 0, align 4
@TYPE_LEAK_CRITICAL = common dso_local global i32 0, align 4
@COMP_LEAK_GENERAL = common dso_local global i32 0, align 4
@CONFIG_UNITY_WARN_LEAK_LEVEL_GENERAL = common dso_local global i32 0, align 4
@TYPE_LEAK_WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setUp() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 (...) @unity_reset_leak_checks()
  %3 = load i32, i32* @CONFIG_UNITY_CRITICAL_LEAK_LEVEL_GENERAL, align 4
  %4 = load i32, i32* @TYPE_LEAK_CRITICAL, align 4
  %5 = load i32, i32* @COMP_LEAK_GENERAL, align 4
  %6 = call i32 @test_utils_set_leak_level(i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @CONFIG_UNITY_WARN_LEAK_LEVEL_GENERAL, align 4
  %8 = load i32, i32* @TYPE_LEAK_WARNING, align 4
  %9 = load i32, i32* @COMP_LEAK_GENERAL, align 4
  %10 = call i32 @test_utils_set_leak_level(i32 %7, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @unity_reset_leak_checks(...) #1

declare dso_local i32 @test_utils_set_leak_level(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
