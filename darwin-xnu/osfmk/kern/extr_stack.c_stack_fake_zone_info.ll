; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_stack.c_stack_fake_zone_info.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_stack.c_stack_fake_zone_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stack_allocs = common dso_local global i64 0, align 8
@stack_total = common dso_local global i32 0, align 4
@stack_hiwat = common dso_local global i32 0, align 4
@stack_free_count = common dso_local global i32 0, align 4
@kernel_stack_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_fake_zone_info(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %24 = call i32 (...) @splsched()
  store i32 %24, i32* %23, align 4
  %25 = call i32 (...) @stack_lock()
  %26 = load i64, i64* @stack_allocs, align 8
  store i64 %26, i64* %22, align 8
  %27 = load i32, i32* @stack_total, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* @stack_hiwat, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32, i32* @stack_free_count, align 4
  store i32 %29, i32* %21, align 4
  %30 = call i32 (...) @stack_unlock()
  %31 = load i32, i32* %23, align 4
  %32 = call i32 @splx(i32 %31)
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %21, align 4
  %35 = sub i32 %33, %34
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @kernel_stack_size, align 4
  %38 = load i32, i32* %19, align 4
  %39 = mul i32 %37, %38
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @kernel_stack_size, align 4
  %42 = load i32, i32* %20, align 4
  %43 = mul i32 %41, %42
  %44 = load i32*, i32** %12, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @kernel_stack_size, align 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @kernel_stack_size, align 4
  %48 = load i32*, i32** %14, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* %22, align 8
  %50 = load i32, i32* @kernel_stack_size, align 4
  %51 = zext i32 %50 to i64
  %52 = mul i64 %49, %51
  %53 = load i64*, i64** %15, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i32*, i32** %16, align 8
  store i32 1, i32* %54, align 4
  %55 = load i32*, i32** %17, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %18, align 8
  store i32 1, i32* %56, align 4
  ret void
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @stack_lock(...) #1

declare dso_local i32 @stack_unlock(...) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
