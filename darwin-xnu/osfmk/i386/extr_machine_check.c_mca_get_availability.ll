; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_get_availability.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_get_availability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64 }

@CPUID_MODEL_HASWELL = common dso_local global i64 0, align 8
@CPUID_MODEL_HASWELL_ULT = common dso_local global i64 0, align 8
@CPUID_MODEL_CRYSTALWELL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Haswell pre-C0 steppings are not supported\00", align 1
@CPUID_FEATURE_MCE = common dso_local global i32 0, align 4
@mca_MCE_present = common dso_local global i32 0, align 4
@CPUID_FEATURE_MCA = common dso_local global i32 0, align 4
@mca_MCA_present = common dso_local global i32 0, align 4
@mca_family = common dso_local global i64 0, align 8
@IA32_MCG_CAP = common dso_local global i32 0, align 4
@ia32_mcg_cap = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@mca_error_bank_count = common dso_local global i32 0, align 4
@mca_control_MSR_present = common dso_local global i32 0, align 4
@mca_cmci_present = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mca_get_availability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_get_availability() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call %struct.TYPE_6__* (...) @cpuid_info()
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %1, align 4
  %8 = call %struct.TYPE_6__* (...) @cpuid_info()
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %2, align 8
  %11 = call %struct.TYPE_6__* (...) @cpuid_info()
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = call %struct.TYPE_6__* (...) @cpuid_info()
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @CPUID_MODEL_HASWELL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i64, i64* %4, align 8
  %22 = icmp slt i64 %21, 3
  br i1 %22, label %37, label %23

23:                                               ; preds = %20, %0
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @CPUID_MODEL_HASWELL_ULT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = icmp slt i64 %28, 1
  br i1 %29, label %37, label %30

30:                                               ; preds = %27, %23
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @CPUID_MODEL_CRYSTALWELL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = icmp slt i64 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %27, %20
  %38 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34, %30
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @CPUID_FEATURE_MCE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* @mca_MCE_present, align 4
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @CPUID_FEATURE_MCA, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* @mca_MCA_present, align 4
  %50 = load i64, i64* %2, align 8
  store i64 %50, i64* @mca_family, align 8
  %51 = load i32, i32* @mca_MCA_present, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load i32, i32* @IA32_MCG_CAP, align 4
  %55 = call i32 @rdmsr64(i32 %54)
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ia32_mcg_cap, i32 0, i32 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ia32_mcg_cap, i32 0, i32 0, i32 2), align 4
  store i32 %56, i32* @mca_error_bank_count, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ia32_mcg_cap, i32 0, i32 0, i32 1), align 4
  store i32 %57, i32* @mca_control_MSR_present, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ia32_mcg_cap, i32 0, i32 0, i32 0), align 4
  store i32 %58, i32* @mca_cmci_present, align 4
  br label %59

59:                                               ; preds = %53, %39
  ret void
}

declare dso_local %struct.TYPE_6__* @cpuid_info(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @rdmsr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
