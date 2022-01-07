; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_cpu_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mca_initialized = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@mca_lock = common dso_local global i32 0, align 4
@mca_MCA_present = common dso_local global i64 0, align 8
@mca_control_MSR_present = common dso_local global i64 0, align 8
@IA32_MCG_CTL = common dso_local global i32 0, align 4
@IA32_MCG_CTL_ENABLE = common dso_local global i64 0, align 8
@mca_family = common dso_local global i32 0, align 4
@mca_error_bank_count = common dso_local global i32 0, align 4
@mca_MCE_present = common dso_local global i64 0, align 8
@CR4_MCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mca_cpu_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @mca_initialized, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @mca_get_availability()
  %6 = load i64, i64* @TRUE, align 8
  store i64 %6, i64* @mca_initialized, align 8
  %7 = call i32 @simple_lock_init(i32* @mca_lock, i32 0)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i64, i64* @mca_MCA_present, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %71

11:                                               ; preds = %8
  %12 = load i64, i64* @mca_control_MSR_present, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @IA32_MCG_CTL, align 4
  %16 = load i64, i64* @IA32_MCG_CTL_ENABLE, align 8
  %17 = call i32 @wrmsr64(i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @mca_family, align 4
  switch i32 %19, label %70 [
    i32 6, label %20
    i32 15, label %45
  ]

20:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %29, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @mca_error_bank_count, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @IA32_MCi_CTL(i32 %26)
  %28 = call i32 @wrmsr64(i32 %27, i64 -1)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %21

32:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %41, %32
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @mca_error_bank_count, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @IA32_MCi_STATUS(i32 %38)
  %40 = call i32 @wrmsr64(i32 %39, i64 0)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %1, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %33

44:                                               ; preds = %33
  br label %70

45:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %54, %45
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @mca_error_bank_count, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @IA32_MCi_CTL(i32 %51)
  %53 = call i32 @wrmsr64(i32 %52, i64 -1)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %1, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %46

57:                                               ; preds = %46
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %66, %57
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @mca_error_bank_count, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @IA32_MCi_STATUS(i32 %63)
  %65 = call i32 @wrmsr64(i32 %64, i64 0)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %1, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %58

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %18, %69, %44
  br label %71

71:                                               ; preds = %70, %8
  %72 = load i64, i64* @mca_MCE_present, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i32 (...) @get_cr4()
  %76 = load i32, i32* @CR4_MCE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @set_cr4(i32 %77)
  br label %79

79:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @mca_get_availability(...) #1

declare dso_local i32 @simple_lock_init(i32*, i32) #1

declare dso_local i32 @wrmsr64(i32, i64) #1

declare dso_local i32 @IA32_MCi_CTL(i32) #1

declare dso_local i32 @IA32_MCi_STATUS(i32) #1

declare dso_local i32 @set_cr4(i32) #1

declare dso_local i32 @get_cr4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
