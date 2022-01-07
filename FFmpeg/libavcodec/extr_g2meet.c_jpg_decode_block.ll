; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_jpg_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_jpg_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32*)* }

@chroma_quant = common dso_local global i32* null, align 8
@luma_quant = common dso_local global i32* null, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_zigzag_direct = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32, i32*)* @jpg_decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jpg_decode_block(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** @chroma_quant, align 8
  br label %27

25:                                               ; preds = %4
  %26 = load i32*, i32** @luma_quant, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32* [ %24, %23 ], [ %26, %25 ]
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @get_bits_left(i32* %29)
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %33, i32* %5, align 4
  br label %152

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32 (i32*)*, i32 (i32*)** %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 %38(i32* %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_vlc2(i32* %41, i32 %49, i32 9, i32 3)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %54, i32* %5, align 4
  br label %152

55:                                               ; preds = %34
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @get_xbits(i32* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %67, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %150, %62
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 63
  br i1 %88, label %89, label %151

89:                                               ; preds = %86
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @get_vlc2(i32* %90, i32 %98, i32 9, i32 3)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %103, i32* %5, align 4
  br label %152

104:                                              ; preds = %89
  %105 = load i32, i32* %11, align 4
  %106 = ashr i32 %105, 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 15
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp sgt i32 %111, 63
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  br label %119

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  store i32 %120, i32* %5, align 4
  br label %152

121:                                              ; preds = %104
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %15, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @get_xbits(i32* %126, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = load i64*, i64** @ff_zigzag_direct, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 %137, %136
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i32*, i32** %9, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %140, i64 %148
  store i32 %139, i32* %149, align 4
  br label %150

150:                                              ; preds = %124, %121
  br label %86

151:                                              ; preds = %86
  store i32 0, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %119, %102, %53, %32
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_xbits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
