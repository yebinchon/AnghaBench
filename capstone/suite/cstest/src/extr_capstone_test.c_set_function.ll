; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_capstone_test.c_set_function.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_capstone_test.c_set_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_detail_arm = common dso_local global i32 0, align 4
@function = common dso_local global i32 0, align 4
@get_detail_arm64 = common dso_local global i32 0, align 4
@get_detail_mips = common dso_local global i32 0, align 4
@get_detail_ppc = common dso_local global i32 0, align 4
@get_detail_sparc = common dso_local global i32 0, align 4
@get_detail_sysz = common dso_local global i32 0, align 4
@get_detail_x86 = common dso_local global i32 0, align 4
@get_detail_xcore = common dso_local global i32 0, align 4
@get_detail_m68k = common dso_local global i32 0, align 4
@get_detail_m680x = common dso_local global i32 0, align 4
@get_detail_evm = common dso_local global i32 0, align 4
@get_detail_mos65xx = common dso_local global i32 0, align 4
@get_detail_tms320c64x = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_function(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %31 [
    i32 140, label %5
    i32 139, label %7
    i32 135, label %9
    i32 133, label %11
    i32 132, label %13
    i32 131, label %15
    i32 129, label %17
    i32 128, label %19
    i32 136, label %21
    i32 137, label %23
    i32 138, label %25
    i32 134, label %27
    i32 130, label %29
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @get_detail_arm, align 4
  store i32 %6, i32* @function, align 4
  br label %32

7:                                                ; preds = %1
  %8 = load i32, i32* @get_detail_arm64, align 4
  store i32 %8, i32* @function, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load i32, i32* @get_detail_mips, align 4
  store i32 %10, i32* @function, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @get_detail_ppc, align 4
  store i32 %12, i32* @function, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @get_detail_sparc, align 4
  store i32 %14, i32* @function, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load i32, i32* @get_detail_sysz, align 4
  store i32 %16, i32* @function, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @get_detail_x86, align 4
  store i32 %18, i32* @function, align 4
  br label %32

19:                                               ; preds = %1
  %20 = load i32, i32* @get_detail_xcore, align 4
  store i32 %20, i32* @function, align 4
  br label %32

21:                                               ; preds = %1
  %22 = load i32, i32* @get_detail_m68k, align 4
  store i32 %22, i32* @function, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @get_detail_m680x, align 4
  store i32 %24, i32* @function, align 4
  br label %32

25:                                               ; preds = %1
  %26 = load i32, i32* @get_detail_evm, align 4
  store i32 %26, i32* @function, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @get_detail_mos65xx, align 4
  store i32 %28, i32* @function, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @get_detail_tms320c64x, align 4
  store i32 %30, i32* @function, align 4
  br label %32

31:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

32:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
