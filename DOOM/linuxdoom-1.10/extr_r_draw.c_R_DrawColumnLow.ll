; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawColumnLow.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawColumnLow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dc_yh = common dso_local global i64 0, align 8
@dc_yl = common dso_local global i64 0, align 8
@dc_x = common dso_local global i32 0, align 4
@ylookup = common dso_local global i32** null, align 8
@columnofs = common dso_local global i32* null, align 8
@dc_iscale = common dso_local global i64 0, align 8
@dc_texturemid = common dso_local global i64 0, align 8
@centery = common dso_local global i64 0, align 8
@dc_colormap = common dso_local global i32* null, align 8
@dc_source = common dso_local global i64* null, align 8
@FRACBITS = common dso_local global i64 0, align 8
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawColumnLow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* @dc_yh, align 8
  %7 = load i64, i64* @dc_yl, align 8
  %8 = sub i64 %6, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %75

13:                                               ; preds = %0
  %14 = load i32, i32* @dc_x, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* @dc_x, align 4
  %16 = load i32**, i32*** @ylookup, align 8
  %17 = load i64, i64* @dc_yl, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load i32*, i32** @columnofs, align 8
  %21 = load i32, i32* @dc_x, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32* %26, i32** %2, align 8
  %27 = load i32**, i32*** @ylookup, align 8
  %28 = load i64, i64* @dc_yl, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** @columnofs, align 8
  %32 = load i32, i32* @dc_x, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %30, i64 %37
  store i32* %38, i32** %3, align 8
  %39 = load i64, i64* @dc_iscale, align 8
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* @dc_texturemid, align 8
  %41 = load i64, i64* @dc_yl, align 8
  %42 = load i64, i64* @centery, align 8
  %43 = sub i64 %41, %42
  %44 = load i64, i64* %5, align 8
  %45 = mul i64 %43, %44
  %46 = add i64 %40, %45
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %71, %13
  %48 = load i32*, i32** @dc_colormap, align 8
  %49 = load i64*, i64** @dc_source, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @FRACBITS, align 8
  %52 = lshr i64 %50, %51
  %53 = and i64 %52, 127
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %48, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %2, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %3, align 8
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @SCREENWIDTH, align 4
  %61 = load i32*, i32** %2, align 8
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %2, align 8
  %64 = load i32, i32* @SCREENWIDTH, align 4
  %65 = load i32*, i32** %3, align 8
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %3, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %47
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %1, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %47, label %75

75:                                               ; preds = %12, %71
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
