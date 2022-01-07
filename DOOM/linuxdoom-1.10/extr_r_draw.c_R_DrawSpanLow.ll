; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawSpanLow.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawSpanLow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ds_xfrac = common dso_local global i32 0, align 4
@ds_yfrac = common dso_local global i32 0, align 4
@ds_x1 = common dso_local global i32 0, align 4
@ds_x2 = common dso_local global i32 0, align 4
@ylookup = common dso_local global i32** null, align 8
@ds_y = common dso_local global i64 0, align 8
@columnofs = common dso_local global i32* null, align 8
@ds_colormap = common dso_local global i8** null, align 8
@ds_source = common dso_local global i64* null, align 8
@ds_xstep = common dso_local global i64 0, align 8
@ds_ystep = common dso_local global i64 0, align 8
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawSpanLow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ds_xfrac, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @ds_yfrac, align 4
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @ds_x1, align 4
  %9 = shl i32 %8, 1
  store i32 %9, i32* @ds_x1, align 4
  %10 = load i32, i32* @ds_x2, align 4
  %11 = shl i32 %10, 1
  store i32 %11, i32* @ds_x2, align 4
  %12 = load i32**, i32*** @ylookup, align 8
  %13 = load i64, i64* @ds_y, align 8
  %14 = getelementptr inbounds i32*, i32** %12, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = load i32*, i32** @columnofs, align 8
  %17 = load i32, i32* @ds_x1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %15, i64 %21
  store i32* %22, i32** %3, align 8
  %23 = load i32, i32* @ds_x2, align 4
  %24 = load i32, i32* @ds_x1, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %66, %0
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 10
  %29 = and i32 %28, 4032
  %30 = load i32, i32* %1, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 63
  %33 = add nsw i32 %29, %32
  store i32 %33, i32* %5, align 4
  %34 = load i8**, i8*** @ds_colormap, align 8
  %35 = load i64*, i64** @ds_source, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  %45 = load i8**, i8*** @ds_colormap, align 8
  %46 = load i64*, i64** @ds_source, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8*, i8** %45, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %3, align 8
  store i32 %53, i32* %54, align 4
  %56 = load i64, i64* @ds_xstep, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %1, align 4
  %61 = load i64, i64* @ds_ystep, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %26
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %4, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %26, label %70

70:                                               ; preds = %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
