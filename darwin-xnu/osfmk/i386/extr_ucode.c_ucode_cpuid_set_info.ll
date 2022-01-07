; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_ucode.c_ucode_cpuid_set_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_ucode.c_ucode_cpuid_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@fpu_capability = common dso_local global i64 0, align 8
@AVX512 = common dso_local global i64 0, align 8
@AVX = common dso_local global i64 0, align 8
@XCR0 = common dso_local global i32 0, align 4
@AVX512_XMASK = common dso_local global i32 0, align 4
@AVX_XMASK = common dso_local global i32 0, align 4
@CR4_OSXSAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ucode_cpuid_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucode_cpuid_set_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @FALSE, align 4
  %6 = call i32 @ml_set_interrupts_enabled(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* @fpu_capability, align 8
  %8 = load i64, i64* @AVX512, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i64, i64* @fpu_capability, align 8
  %12 = load i64, i64* @AVX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10, %0
  %15 = load i32, i32* @XCR0, align 4
  %16 = call i32 @xgetbv(i32 %15)
  store i32 %16, i32* %1, align 4
  %17 = load i64, i64* @fpu_capability, align 8
  %18 = load i64, i64* @AVX512, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @AVX512_XMASK, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @AVX_XMASK, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %2, align 4
  %26 = call i32 (...) @get_cr4()
  %27 = load i32, i32* @CR4_OSXSAVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = ashr i32 %36, 32
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = and i64 %39, 4294967295
  %41 = trunc i64 %40 to i32
  %42 = call i32 @xsetbv(i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %35, %24
  br label %44

44:                                               ; preds = %43, %10
  %45 = call i32 (...) @cpuid_set_info()
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %1, align 4
  %50 = ashr i32 %49, 32
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = and i64 %52, 4294967295
  %54 = trunc i64 %53 to i32
  %55 = call i32 @xsetbv(i32 %50, i32 %54)
  br label %56

56:                                               ; preds = %48, %44
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ml_set_interrupts_enabled(i32 %57)
  ret void
}

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @xgetbv(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_cr4(...) #1

declare dso_local i32 @xsetbv(i32, i32) #1

declare dso_local i32 @cpuid_set_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
