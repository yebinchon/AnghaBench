; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_generic.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_ticker_smooth_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32, i32, i32*, i32*, i32*, i32*)* @menu_animation_ticker_smooth_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_ticker_smooth_generic(i32 %0, i32* %1, i64 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @get_ticker_smooth_generic_scroll_offset(i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %19, align 4
  %24 = load i32*, i32** %15, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %16, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %17, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %18, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %9
  %30 = load i32*, i32** %18, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %9
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %11, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 @ticker_smooth_scan_characters(i32* %36, i64 %37, i32 %38, i32 %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* null)
  br label %45

45:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @get_ticker_smooth_generic_scroll_offset(i32, i32, i32) #1

declare dso_local i32 @ticker_smooth_scan_characters(i32*, i64, i32, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
