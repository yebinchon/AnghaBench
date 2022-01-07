; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_ppc.c_co_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/libco/extr_ppc.c_co_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state_size = common dso_local global i64 0, align 8
@above_stack = common dso_local global i64 0, align 8
@stack_align = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @co_create(i32 %0, void ()* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store void ()* %1, void ()** %4, align 8
  %9 = load void ()*, void ()** %4, align 8
  %10 = ptrtoint void ()* %9 to i64
  store i64 %10, i64* %5, align 8
  store i64* null, i64** %6, align 8
  %11 = call i64 (...) @co_active()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i64, i64* @state_size, align 8
  %15 = load i64, i64* @above_stack, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* @stack_align, align 8
  %18 = add i64 %16, %17
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i64* @co_create_(i32 %23, i64 %24)
  store i64* %25, i64** %6, align 8
  br label %26

26:                                               ; preds = %13, %2
  %27 = load i64*, i64** %6, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %69

29:                                               ; preds = %26
  %30 = load i64*, i64** %6, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = call i32 @CO_SWAP_ASM(i64* %30, i64* %31)
  %33 = load i64*, i64** %6, align 8
  %34 = ptrtoint i64* %33 to i64
  %35 = load i32, i32* %3, align 4
  %36 = zext i32 %35 to i64
  %37 = add i64 %34, %36
  %38 = load i64, i64* @above_stack, align 8
  %39 = sub i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @stack_align, align 8
  %42 = urem i64 %40, %41
  %43 = load i64, i64* %7, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = lshr i64 %45, %47
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %48, %50
  %52 = load i64*, i64** %6, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 8
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 9
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = lshr i64 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = lshr i64 %60, %62
  %64 = load i64*, i64** %6, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 10
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 11
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %29, %26
  %70 = load i64*, i64** %6, align 8
  ret i64* %70
}

declare dso_local i64 @co_active(...) #1

declare dso_local i64* @co_create_(i32, i64) #1

declare dso_local i32 @CO_SWAP_ASM(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
