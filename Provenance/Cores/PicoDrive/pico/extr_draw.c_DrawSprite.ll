; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSprite.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawSprite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DrawScanline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @DrawSprite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawSprite(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32 (i32, i32, i32)*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = ashr i32 %23, 28
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %13, align 4
  %26 = ashr i32 %25, 24
  %27 = and i32 %26, 7
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %13, align 4
  %29 = shl i32 %28, 16
  %30 = ashr i32 %29, 16
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @DrawScanline, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 4096
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %38, 3
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %2
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 3
  %47 = add nsw i32 %44, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 2048
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 %54, 1
  %56 = mul nsw i32 %53, %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 2047
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %64, 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 7
  %68 = shl i32 %67, 1
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 %71, 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %8, align 4
  %74 = ashr i32 %73, 9
  %75 = and i32 %74, 48
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 %76, 6
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %61
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 24576
  %85 = icmp eq i32 %84, 24576
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 2048
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 (i32, i32, i32)* @TileFlipSH_markop, i32 (i32, i32, i32)** %14, align 8
  br label %92

91:                                               ; preds = %86
  store i32 (i32, i32, i32)* @TileNormSH_markop, i32 (i32, i32, i32)** %14, align 8
  br label %92

92:                                               ; preds = %91, %90
  br label %100

93:                                               ; preds = %82, %61
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 2048
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 (i32, i32, i32)* @TileFlip, i32 (i32, i32, i32)** %14, align 8
  br label %99

98:                                               ; preds = %93
  store i32 (i32, i32, i32)* @TileNorm, i32 (i32, i32, i32)** %14, align 8
  br label %99

99:                                               ; preds = %98, %97
  br label %100

100:                                              ; preds = %99, %92
  br label %101

101:                                              ; preds = %120, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %120

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = icmp sge i32 %109, 328
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %128

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, 32767
  store i32 %114, i32* %10, align 4
  %115 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 %115(i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %112, %107
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 8
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %101

128:                                              ; preds = %111, %101
  ret void
}

declare dso_local i32 @TileFlipSH_markop(i32, i32, i32) #1

declare dso_local i32 @TileNormSH_markop(i32, i32, i32) #1

declare dso_local i32 @TileFlip(i32, i32, i32) #1

declare dso_local i32 @TileNorm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
