; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_get_configurable_counters.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_get_configurable_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KPC_ARM64_COUNTER_OVF_MASK = common dso_local global i64 0, align 8
@KPC_ARM64_COUNTER_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kpc_get_configurable_counters(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i64 (...) @kpc_configurable_count()
  store i64 %9, i64* %5, align 8
  %10 = call i64 (...) @kpc_fixed_count()
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = call i32 @assert(i64* %11)
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %59, %2
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = shl i64 1, %18
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %59

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %25, %26
  %28 = call i64 @read_counter(i64 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @KPC_ARM64_COUNTER_OVF_MASK, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @CONFIGURABLE_SHADOW(i64 %34)
  %36 = call i32 (...) @kpc_configurable_max()
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @CONFIGURABLE_RELOAD(i64 %38)
  %40 = sub i64 %37, %39
  %41 = add i64 %40, 1
  %42 = add i64 %35, %41
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @KPC_ARM64_COUNTER_MASK, align 8
  %45 = and i64 %43, %44
  %46 = add i64 %42, %45
  store i64 %46, i64* %7, align 8
  br label %55

47:                                               ; preds = %24
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @CONFIGURABLE_SHADOW(i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @CONFIGURABLE_RELOAD(i64 %51)
  %53 = sub i64 %50, %52
  %54 = add i64 %49, %53
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %47, %33
  %56 = load i64, i64* %7, align 8
  %57 = load i64*, i64** %3, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %3, align 8
  store i64 %56, i64* %57, align 8
  br label %59

59:                                               ; preds = %55, %23
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %13

62:                                               ; preds = %13
  ret i32 0
}

declare dso_local i64 @kpc_configurable_count(...) #1

declare dso_local i64 @kpc_fixed_count(...) #1

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @read_counter(i64) #1

declare dso_local i64 @CONFIGURABLE_SHADOW(i64) #1

declare dso_local i32 @kpc_configurable_max(...) #1

declare dso_local i64 @CONFIGURABLE_RELOAD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
