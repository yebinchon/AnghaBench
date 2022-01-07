; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_period.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kpc_common.c_kpc_get_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kpc_config_lock = common dso_local global i32 0, align 4
@KPC_CLASS_FIXED_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_CONFIGURABLE_MASK = common dso_local global i32 0, align 4
@KPC_CLASS_POWER_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_period(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = call i32 @assert(i64* %10)
  %12 = call i32 @lck_mtx_lock(i32* @kpc_config_lock)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* @KPC_CLASS_FIXED_MASK, align 4
  %19 = call i32 @kpc_get_counter_count(i32 %18)
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %31, %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = call i64 (...) @kpc_fixed_max()
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @FIXED_RELOAD(i32 %26)
  %28 = sub nsw i64 %25, %27
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %4, align 8
  store i64 %28, i64* %29, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %20

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load i32, i32* @KPC_CLASS_CONFIGURABLE_MASK, align 4
  %42 = call i64 @kpc_get_configurable_pmc_mask(i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = call i32 (...) @kpc_configurable_count()
  store i32 %43, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %65, %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = shl i64 1, %50
  %52 = load i64, i64* %6, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = call i8* (...) @kpc_configurable_max()
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @CONFIGURABLE_RELOAD(i32 %57)
  %59 = ptrtoint i8* %56 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = load i64*, i64** %4, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %4, align 8
  store i64 %61, i64* %62, align 8
  br label %64

64:                                               ; preds = %55, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %44

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %103

74:                                               ; preds = %69
  %75 = load i32, i32* @KPC_CLASS_POWER_MASK, align 4
  %76 = call i64 @kpc_get_configurable_pmc_mask(i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = call i32 (...) @kpc_configurable_count()
  store i32 %77, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %99, %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = zext i32 %83 to i64
  %85 = shl i64 1, %84
  %86 = load i64, i64* %6, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = call i8* (...) @kpc_configurable_max()
  %91 = load i32, i32* %9, align 4
  %92 = call i8* @CONFIGURABLE_RELOAD(i32 %91)
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = load i64*, i64** %4, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %4, align 8
  store i64 %95, i64* %96, align 8
  br label %98

98:                                               ; preds = %89, %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %78

102:                                              ; preds = %78
  br label %103

103:                                              ; preds = %102, %69
  %104 = call i32 @lck_mtx_unlock(i32* @kpc_config_lock)
  ret i32 0
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @kpc_get_counter_count(i32) #1

declare dso_local i64 @kpc_fixed_max(...) #1

declare dso_local i64 @FIXED_RELOAD(i32) #1

declare dso_local i64 @kpc_get_configurable_pmc_mask(i32) #1

declare dso_local i32 @kpc_configurable_count(...) #1

declare dso_local i8* @kpc_configurable_max(...) #1

declare dso_local i8* @CONFIGURABLE_RELOAD(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
