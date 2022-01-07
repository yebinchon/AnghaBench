; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_set_running_configurable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_kpc.c_set_running_configurable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @set_running_configurable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_running_configurable(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i64 (...) @kpc_configurable_count()
  store i64 %9, i64* %5, align 8
  %10 = call i64 (...) @kpc_fixed_count()
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @ml_set_interrupts_enabled(i32 %11)
  store i32 %12, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %46, %2
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = shl i64 1, %18
  %20 = load i64, i64* %3, align 8
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %46

24:                                               ; preds = %17
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @kpc_controls_counter(i64 %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = shl i64 1, %30
  %32 = load i64, i64* %4, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %36, %37
  %39 = call i32 @enable_counter(i64 %38)
  br label %45

40:                                               ; preds = %24
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  %44 = call i32 @disable_counter(i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %13

49:                                               ; preds = %13
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ml_set_interrupts_enabled(i32 %50)
  ret void
}

declare dso_local i64 @kpc_configurable_count(...) #1

declare dso_local i64 @kpc_fixed_count(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kpc_controls_counter(i64) #1

declare dso_local i32 @enable_counter(i64) #1

declare dso_local i32 @disable_counter(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
