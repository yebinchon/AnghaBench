; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawFuzzColumn.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_draw.c_R_DrawFuzzColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dc_yl = common dso_local global i32 0, align 4
@dc_yh = common dso_local global i32 0, align 4
@viewheight = common dso_local global i32 0, align 4
@ylookup = common dso_local global i32** null, align 8
@columnofs = common dso_local global i32* null, align 8
@dc_x = common dso_local global i64 0, align 8
@dc_iscale = common dso_local global i32 0, align 4
@dc_texturemid = common dso_local global i32 0, align 4
@centery = common dso_local global i32 0, align 4
@colormaps = common dso_local global i32* null, align 8
@fuzzoffset = common dso_local global i64* null, align 8
@fuzzpos = common dso_local global i64 0, align 8
@FUZZTABLE = common dso_local global i64 0, align 8
@SCREENWIDTH = common dso_local global i32 0, align 4
@SCREENHEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawFuzzColumn() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @dc_yl, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 1, i32* @dc_yl, align 4
  br label %8

8:                                                ; preds = %7, %0
  %9 = load i32, i32* @dc_yh, align 4
  %10 = load i32, i32* @viewheight, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @viewheight, align 4
  %15 = sub nsw i32 %14, 2
  store i32 %15, i32* @dc_yh, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, i32* @dc_yh, align 4
  %18 = load i32, i32* @dc_yl, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %74

23:                                               ; preds = %16
  %24 = load i32**, i32*** @ylookup, align 8
  %25 = load i32, i32* @dc_yl, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i32*, i32** @columnofs, align 8
  %30 = load i64, i64* @dc_x, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32* %34, i32** %2, align 8
  %35 = load i32, i32* @dc_iscale, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @dc_texturemid, align 4
  %37 = load i32, i32* @dc_yl, align 4
  %38 = load i32, i32* @centery, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = mul nsw i32 %39, %40
  %42 = add nsw i32 %36, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %70, %23
  %44 = load i32*, i32** @colormaps, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load i64*, i64** @fuzzoffset, align 8
  %47 = load i64, i64* @fuzzpos, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 1536, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %44, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %2, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i64, i64* @fuzzpos, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* @fuzzpos, align 8
  %59 = load i64, i64* @FUZZTABLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %43
  store i64 0, i64* @fuzzpos, align 8
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* @SCREENWIDTH, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %1, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %43, label %74

74:                                               ; preds = %22, %70
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
