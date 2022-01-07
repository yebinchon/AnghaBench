; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_i_can_has_debugger.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_i_can_has_debugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enabled = common dso_local global i64 0, align 8
@debug_boot_arg = common dso_local global i64 0, align 8
@debug_boot_arg_inited = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PE_i_can_has_debugger(i64* %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = icmp ne i64* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i64, i64* @debug_enabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i64, i64* @debug_boot_arg, align 8
  %10 = load i64*, i64** %2, align 8
  store i64 %9, i64* %10, align 8
  br label %13

11:                                               ; preds = %5
  %12 = load i64*, i64** %2, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %11, %8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i64, i64* @debug_enabled, align 8
  ret i64 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
