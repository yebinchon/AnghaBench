; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdgraphics.c_cdg_tile_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cdgraphics.c_cdg_tile_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32** }

@CDG_TILE_HEIGHT = common dso_local global i32 0, align 4
@CDG_TILE_WIDTH = common dso_local global i32 0, align 4
@CDG_FULL_HEIGHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CDG_FULL_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32)* @cdg_tile_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdg_tile_block(%struct.TYPE_5__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 31
  %34 = load i32, i32* @CDG_TILE_HEIGHT, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 63
  %44 = load i32, i32* @CDG_TILE_WIDTH, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @CDG_FULL_HEIGHT, align 4
  %52 = load i32, i32* @CDG_TILE_HEIGHT, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @AVERROR(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %133

58:                                               ; preds = %3
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @CDG_FULL_WIDTH, align 4
  %61 = load i32, i32* @CDG_TILE_WIDTH, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp ugt i32 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @AVERROR(i32 %65)
  store i32 %66, i32* %4, align 4
  br label %133

67:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %129, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @CDG_TILE_HEIGHT, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %132

72:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %125, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @CDG_TILE_WIDTH, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %128

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 4, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 5, %84
  %86 = ashr i32 %83, %85
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %77
  %90 = load i32*, i32** %6, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  store i32 %93, i32* %10, align 4
  br label %99

94:                                               ; preds = %77
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 15
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add i32 %100, %101
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %12, align 4
  %106 = add i32 %104, %105
  %107 = mul i32 %103, %106
  %108 = add i32 %102, %107
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %111, %99
  %120 = load i32, i32* %10, align 4
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %73

128:                                              ; preds = %73
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %68

132:                                              ; preds = %68
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %132, %64, %55
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
