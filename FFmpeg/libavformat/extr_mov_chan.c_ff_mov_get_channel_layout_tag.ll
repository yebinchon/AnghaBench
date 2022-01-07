; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov_chan.c_ff_mov_get_channel_layout_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov_chan.c_ff_mov_get_channel_layout_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }
%struct.MovChannelLayoutMap = type { i64, i64 }

@mov_codec_ch_layouts = common dso_local global %struct.TYPE_2__* null, align 8
@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@mov_ch_layout_map = common dso_local global %struct.MovChannelLayoutMap** null, align 8
@MOV_CH_LAYOUT_USE_BITMAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ff_mov_get_channel_layout_tag(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.MovChannelLayoutMap*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %34, %3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mov_codec_ch_layouts, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mov_codec_ch_layouts, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %13

37:                                               ; preds = %32, %13
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mov_codec_ch_layouts, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mov_codec_ch_layouts, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  br label %53

53:                                               ; preds = %46, %37
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %142

56:                                               ; preds = %53
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @av_get_channel_layout_nb_channels(i64 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp sgt i32 %59, 9
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %56
  %63 = load %struct.MovChannelLayoutMap**, %struct.MovChannelLayoutMap*** @mov_ch_layout_map, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %63, i64 %65
  %67 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %66, align 8
  store %struct.MovChannelLayoutMap* %67, %struct.MovChannelLayoutMap** %12, align 8
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %132, %62
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %135

75:                                               ; preds = %68
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 65535
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %132

85:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %119, %85
  %87 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %12, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %87, i64 %89
  %91 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %86
  %95 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %12, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %95, i64 %97
  %99 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  %107 = icmp eq i64 %100, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %94
  %109 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %12, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %109, i64 %111
  %113 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %122

118:                                              ; preds = %108, %94
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %86

122:                                              ; preds = %117, %86
  %123 = load %struct.MovChannelLayoutMap*, %struct.MovChannelLayoutMap** %12, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %123, i64 %125
  %127 = getelementptr inbounds %struct.MovChannelLayoutMap, %struct.MovChannelLayoutMap* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  br label %135

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131, %84
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %68

135:                                              ; preds = %130, %68
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %9, align 8
  br label %142

142:                                              ; preds = %135, %53
  %143 = load i64, i64* %9, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i64, i64* %5, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i64, i64* %5, align 8
  %150 = icmp slt i64 %149, 262144
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i64, i64* @MOV_CH_LAYOUT_USE_BITMAP, align 8
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %5, align 8
  %154 = load i64*, i64** %6, align 8
  store i64 %153, i64* %154, align 8
  br label %157

155:                                              ; preds = %148, %145, %142
  %156 = load i64*, i64** %6, align 8
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %155, %151
  %158 = load i64, i64* %9, align 8
  ret i64 %158
}

declare dso_local i32 @av_get_channel_layout_nb_channels(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
