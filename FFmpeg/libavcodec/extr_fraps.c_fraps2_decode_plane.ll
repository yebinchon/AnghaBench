; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fraps.c_fraps2_decode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_fraps.c_fraps2_decode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@VLC_BITS = common dso_local global i32 0, align 4
@huff_cmp = common dso_local global i32 0, align 4
@FF_HUFFMAN_FLAG_ZERO_COUNT = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*, i32, i32, i32, i64*, i32, i32, i32)* @fraps2_decode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fraps2_decode_plane(%struct.TYPE_12__* %0, i64* %1, i32 %2, i32 %3, i32 %4, i64* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_10__, align 4
  %25 = alloca [512 x %struct.TYPE_11__], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64* %5, i64** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %26

26:                                               ; preds = %35, %9
  %27 = load i32, i32* %20, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = call i32 @bytestream_get_le32(i64** %16)
  %31 = load i32, i32* %20, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [512 x %struct.TYPE_11__], [512 x %struct.TYPE_11__]* %25, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %20, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %20, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load i32, i32* %17, align 4
  %40 = sub nsw i32 %39, 1024
  store i32 %40, i32* %17, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @VLC_BITS, align 4
  %45 = getelementptr inbounds [512 x %struct.TYPE_11__], [512 x %struct.TYPE_11__]* %25, i64 0, i64 0
  %46 = load i32, i32* @huff_cmp, align 4
  %47 = load i32, i32* @FF_HUFFMAN_FLAG_ZERO_COUNT, align 4
  %48 = call i32 @ff_huff_build_tree(i32 %43, %struct.TYPE_10__* %24, i32 256, i32 %44, %struct.TYPE_11__* %45, i32 %46, i32 %47)
  store i32 %48, i32* %22, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %22, align 4
  store i32 %51, i32* %10, align 4
  br label %143

52:                                               ; preds = %38
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load i64*, i64** %16, align 8
  %62 = bitcast i64* %61 to i32*
  %63 = load i32, i32* %17, align 4
  %64 = ashr i32 %63, 2
  %65 = call i32 %56(i32* %60, i32* %62, i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @init_get_bits8(i32* %23, i64 %68, i32 %69)
  store i32 %70, i32* %22, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i32, i32* %22, align 4
  store i32 %73, i32* %10, align 4
  br label %143

74:                                               ; preds = %52
  store i32 0, i32* %21, align 4
  br label %75

75:                                               ; preds = %138, %74
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %141

79:                                               ; preds = %75
  store i32 0, i32* %20, align 4
  br label %80

80:                                               ; preds = %129, %79
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %19, align 4
  %84 = mul nsw i32 %82, %83
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %133

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @VLC_BITS, align 4
  %90 = call i64 @get_vlc2(i32* %23, i32 %88, i32 %89, i32 3)
  %91 = load i64*, i64** %12, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  store i64 %90, i64* %94, align 8
  %95 = load i32, i32* %21, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %86
  %98 = load i64*, i64** %12, align 8
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %12, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %104
  store i64 %110, i64* %108, align 8
  br label %122

111:                                              ; preds = %86
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i64*, i64** %12, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 128
  store i64 %120, i64* %118, align 8
  br label %121

121:                                              ; preds = %114, %111
  br label %122

122:                                              ; preds = %121, %97
  %123 = call i64 @get_bits_left(i32* %23)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = call i32 @ff_free_vlc(%struct.TYPE_10__* %24)
  %127 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %127, i32* %10, align 4
  br label %143

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %20, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %20, align 4
  br label %80

133:                                              ; preds = %80
  %134 = load i32, i32* %13, align 4
  %135 = load i64*, i64** %12, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  store i64* %137, i64** %12, align 8
  br label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %21, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %21, align 4
  br label %75

141:                                              ; preds = %75
  %142 = call i32 @ff_free_vlc(%struct.TYPE_10__* %24)
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %141, %125, %72, %50
  %144 = load i32, i32* %10, align 4
  ret i32 %144
}

declare dso_local i32 @bytestream_get_le32(i64**) #1

declare dso_local i32 @ff_huff_build_tree(i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i64, i32) #1

declare dso_local i64 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i32 @ff_free_vlc(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
