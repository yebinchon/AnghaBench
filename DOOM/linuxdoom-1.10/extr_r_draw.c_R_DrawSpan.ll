; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawSpan.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawSpan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ds_xfrac = common dso_local global i32 0, align 4
@ds_yfrac = common dso_local global i32 0, align 4
@ylookup = common dso_local global i32** null, align 8
@ds_y = common dso_local global i64 0, align 8
@columnofs = common dso_local global i32* null, align 8
@ds_x1 = common dso_local global i64 0, align 8
@ds_x2 = common dso_local global i64 0, align 8
@ds_colormap = common dso_local global i32* null, align 8
@ds_source = common dso_local global i64* null, align 8
@ds_xstep = common dso_local global i64 0, align 8
@ds_ystep = common dso_local global i64 0, align 8
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawSpan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ds_xfrac, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @ds_yfrac, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32**, i32*** @ylookup, align 8
  %9 = load i64, i64* @ds_y, align 8
  %10 = getelementptr inbounds i32*, i32** %8, i64 %9
  %11 = load i32*, i32** %10, align 8
  %12 = load i32*, i32** @columnofs, align 8
  %13 = load i64, i64* @ds_x1, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %11, i64 %16
  store i32* %17, i32** %3, align 8
  %18 = load i64, i64* @ds_x2, align 8
  %19 = load i64, i64* @ds_x1, align 8
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %50, %0
  %23 = load i32, i32* %2, align 4
  %24 = ashr i32 %23, 10
  %25 = and i32 %24, 4032
  %26 = load i32, i32* %1, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 63
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** @ds_colormap, align 8
  %31 = load i64*, i64** @ds_source, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %3, align 8
  store i32 %37, i32* %38, align 4
  %40 = load i64, i64* @ds_xstep, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %1, align 4
  %45 = load i64, i64* @ds_ystep, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %4, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %22, label %54

54:                                               ; preds = %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
