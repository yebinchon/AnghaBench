; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawTilesFromCacheF.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawTilesFromCacheF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PicoDraw2FB = common dso_local global i8* null, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@START_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @DrawTilesFromCacheF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawTilesFromCacheF(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i16 -1, i16* %8, align 2
  %11 = load i8*, i8** @PicoDraw2FB, align 8
  store i8* %11, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %2, align 8
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @LINE_WIDTH, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* @START_ROW, align 4
  %18 = load i32, i32* @LINE_WIDTH, align 4
  %19 = mul nsw i32 %17, %18
  %20 = mul nsw i32 %19, 8
  %21 = sub nsw i32 %16, %20
  %22 = load i8*, i8** %9, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %9, align 8
  br label %25

25:                                               ; preds = %110, %37, %1
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %2, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %111

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = trunc i32 %31 to i16
  %33 = sext i16 %32 to i32
  %34 = load i16, i16* %8, align 2
  %35 = sext i16 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %25

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = lshr i32 %39, 27
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = lshr i32 %44, 27
  store i32 %45, i32* %6, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @LINE_WIDTH, align 4
  %49 = mul i32 %47, %48
  %50 = mul i32 %49, 8
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %46, i64 %51
  store i8* %52, i8** %10, align 8
  br label %53

53:                                               ; preds = %43, %38
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, 2047
  %56 = shl i32 %55, 4
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = ashr i32 %57, 9
  %59 = and i32 %58, 48
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %7, align 1
  %61 = load i32, i32* %3, align 4
  %62 = ashr i32 %61, 11
  %63 = and i32 %62, 3
  switch i32 %63, label %104 [
    i32 0, label %64
    i32 1, label %74
    i32 2, label %84
    i32 3, label %94
  ]

64:                                               ; preds = %53
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %3, align 4
  %67 = ashr i32 %66, 16
  %68 = and i32 %67, 511
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  %71 = load i32, i32* %4, align 4
  %72 = load i8, i8* %7, align 1
  %73 = call i32 @TileXnormYnorm(i8* %70, i32 %71, i8 zeroext %72)
  store i32 %73, i32* %5, align 4
  br label %104

74:                                               ; preds = %53
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %3, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 511
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i32, i32* %4, align 4
  %82 = load i8, i8* %7, align 1
  %83 = call i32 @TileXflipYnorm(i8* %80, i32 %81, i8 zeroext %82)
  store i32 %83, i32* %5, align 4
  br label %104

84:                                               ; preds = %53
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %3, align 4
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 511
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i32, i32* %4, align 4
  %92 = load i8, i8* %7, align 1
  %93 = call i32 @TileXnormYflip(i8* %90, i32 %91, i8 zeroext %92)
  store i32 %93, i32* %5, align 4
  br label %104

94:                                               ; preds = %53
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* %3, align 4
  %97 = ashr i32 %96, 16
  %98 = and i32 %97, 511
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = load i32, i32* %4, align 4
  %102 = load i8, i8* %7, align 1
  %103 = call i32 @TileXflipYflip(i8* %100, i32 %101, i8 zeroext %102)
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %53, %94, %84, %74, %64
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %3, align 4
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* %8, align 2
  br label %110

110:                                              ; preds = %107, %104
  br label %25

111:                                              ; preds = %25
  ret void
}

declare dso_local i32 @TileXnormYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXnormYflip(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYflip(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
