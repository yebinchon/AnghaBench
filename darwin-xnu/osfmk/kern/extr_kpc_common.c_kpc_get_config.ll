; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_RAWPMU_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_config(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @assert(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @kpc_get_fixed_config(i32* %19)
  %21 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %22 = call i64 @kpc_get_config_count(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %34 = call i32 @kpc_get_configurable_pmc_mask(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @kpc_get_configurable_config(i32* %38, i32 %39)
  %41 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %42 = call i64 @kpc_get_config_count(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %32, %27
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %54 = call i32 @kpc_get_configurable_pmc_mask(i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @kpc_get_configurable_config(i32* %58, i32 %59)
  %61 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %62 = call i64 @kpc_get_config_count(i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %52, %47
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @KPC_CLASS_RAWPMU_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = call i64 (...) @kpc_multiple_clients()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* @EPERM, align 4
  store i32 %76, i32* %3, align 4
  br label %90

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @kpc_get_rawpmu_config(i32* %81)
  %83 = load i32, i32* @KPC_CLASS_RAWPMU_MASK, align 4
  %84 = call i64 @kpc_get_config_count(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %77, %67
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %75
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @kpc_get_fixed_config(i32*) #1

declare dso_local i64 @kpc_get_config_count(i32) #1

declare dso_local i32 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i32 @kpc_get_configurable_config(i32*, i32) #1

declare dso_local i64 @kpc_multiple_clients(...) #1

declare dso_local i32 @kpc_get_rawpmu_config(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
