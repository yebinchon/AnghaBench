; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_set_configurable_config.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_kpc_set_configurable_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @kpc_set_configurable_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kpc_set_configurable_config(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i64 (...) @kpc_configurable_count()
  store i64 %9, i64* %5, align 8
  %10 = call i64 (...) @kpc_fixed_count()
  store i64 %10, i64* %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @assert(i32* %11)
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @ml_set_interrupts_enabled(i32 %13)
  store i32 %14, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = shl i64 1, %20
  %22 = load i64, i64* %4, align 8
  %23 = and i64 %21, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %39

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %27, %28
  %30 = call i32* @kpc_controls_counter(i64 %29)
  %31 = call i32 @assert(i32* %30)
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %32, %33
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  %37 = load i32, i32* %35, align 4
  %38 = call i32 @set_counter_config(i64 %34, i32 %37)
  br label %39

39:                                               ; preds = %26, %25
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ml_set_interrupts_enabled(i32 %43)
  ret i32 0
}

declare dso_local i64 @kpc_configurable_count(...) #1

declare dso_local i64 @kpc_fixed_count(...) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32* @kpc_controls_counter(i64) #1

declare dso_local i32 @set_counter_config(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
