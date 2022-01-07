; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_atm_diagnostic_flag.c__save_atm_diagnostic_flag.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_atm_diagnostic_flag.c__save_atm_diagnostic_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_original = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"host_get_atm_diagnostic_flag()\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Original ATM diagnostic flag: 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_save_atm_diagnostic_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_save_atm_diagnostic_flag() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @mach_host_self()
  %3 = call i32 @host_get_atm_diagnostic_flag(i32 %2, i32* @_original)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @T_QUIET, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @_original, align 4
  %8 = call i32 @T_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @_original, align 4
  ret i32 %9
}

declare dso_local i32 @host_get_atm_diagnostic_flag(i32, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

declare dso_local i32 @T_LOG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
