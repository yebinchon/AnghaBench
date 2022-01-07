; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_line_ticker_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64*)* @menu_animation_line_ticker_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_line_ticker_generic(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @get_line_display_ticks(i64 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = sub i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = mul i64 %20, 2
  %22 = add i64 %21, 2
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = udiv i64 %23, %24
  %26 = load i64, i64* %13, align 8
  %27 = urem i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i64, i64* %14, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %14, align 8
  br label %33

33:                                               ; preds = %30, %5
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %14, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %14, align 8
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i64, i64* %14, align 8
  %46 = load i64*, i64** %10, align 8
  store i64 %45, i64* %46, align 8
  br label %53

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = mul i64 %48, 2
  %50 = load i64, i64* %14, align 8
  %51 = sub i64 %49, %50
  %52 = load i64*, i64** %10, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %44
  ret void
}

declare dso_local i64 @get_line_display_ticks(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
