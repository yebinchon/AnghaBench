; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_intel_entropysource.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_intel_entropysource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPUID_LEAF7_FEATURE_RDSEED = common dso_local global i32 0, align 4
@CPUID_FEATURE_RDRAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*)* @intel_entropysource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_entropysource(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = urem i64 %7, 4
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64*, i64** %4, align 8
  %13 = load i64, i64* %12, align 8
  %14 = udiv i64 %13, 4
  store i64 %14, i64* %5, align 8
  %15 = call i32 (...) @cpuid_leaf7_features()
  %16 = load i32, i32* @CPUID_LEAF7_FEATURE_RDSEED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @rdseed_seed(i8* %20, i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 %23, 4
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  br label %41

26:                                               ; preds = %2
  %27 = call i32 (...) @cpuid_features()
  %28 = load i32, i32* @CPUID_FEATURE_RDRAND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @rdrand_seed(i8* %32, i64 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = mul i64 %35, 4
  %37 = load i64*, i64** %4, align 8
  store i64 %36, i64* %37, align 8
  br label %40

38:                                               ; preds = %26
  %39 = load i64*, i64** %4, align 8
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %38, %31
  br label %41

41:                                               ; preds = %40, %19
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cpuid_leaf7_features(...) #1

declare dso_local i64 @rdseed_seed(i8*, i64) #1

declare dso_local i32 @cpuid_features(...) #1

declare dso_local i64 @rdrand_seed(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
