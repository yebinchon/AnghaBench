; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngread.c_make_ga_colormap.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngread.c_make_ga_colormap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_sRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @make_ga_colormap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ga_colormap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %10, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 231
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = mul i32 %11, 256
  %13 = add i32 %12, 115
  %14 = udiv i32 %13, 231
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @P_sRGB, align 4
  %22 = call i32 @png_create_colormap_entry(i32* %15, i32 %16, i32 %18, i32 %19, i32 %20, i32 255, i32 %21)
  br label %7

23:                                               ; preds = %7
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @P_sRGB, align 4
  %28 = call i32 @png_create_colormap_entry(i32* %24, i32 %25, i32 255, i32 255, i32 255, i32 0, i32 %27)
  store i32 1, i32* %4, align 4
  br label %29

29:                                               ; preds = %54, %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ult i32 %30, 5
  br i1 %31, label %32, label %57

32:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %34, 6
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul i32 %40, 51
  %42 = load i32, i32* %6, align 4
  %43 = mul i32 %42, 51
  %44 = load i32, i32* %6, align 4
  %45 = mul i32 %44, 51
  %46 = load i32, i32* %4, align 4
  %47 = mul i32 %46, 51
  %48 = load i32, i32* @P_sRGB, align 4
  %49 = call i32 @png_create_colormap_entry(i32* %37, i32 %38, i32 %41, i32 %43, i32 %45, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %33

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %29

57:                                               ; preds = %29
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @png_create_colormap_entry(i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
