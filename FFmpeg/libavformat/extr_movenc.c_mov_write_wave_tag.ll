; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_wave_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_wave_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"wave\00", align 1
@AV_CODEC_ID_QDM2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"frma\00", align 1
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mp4a\00", align 1
@AV_CODEC_ID_AMR_NB = common dso_local global i64 0, align 8
@AV_CODEC_ID_AC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_EAC3 = common dso_local global i64 0, align 8
@AV_CODEC_ID_ALAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_MS = common dso_local global i64 0, align 8
@AV_CODEC_ID_ADPCM_IMA_WAV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_11__*)* @mov_write_wave_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_wave_tag(i32* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @avio_tell(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @avio_wb32(i32* %10, i32 0)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ffio_wfourcc(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AV_CODEC_ID_QDM2, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @avio_wb32(i32* %22, i32 12)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @ffio_wfourcc(i32* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @avio_wl32(i32* %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %3
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @avio_wb32(i32* %40, i32 12)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ffio_wfourcc(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @avio_wb32(i32* %44, i32 0)
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = call i32 @mov_write_esds_tag(i32* %46, %struct.TYPE_11__* %47)
  br label %157

49:                                               ; preds = %31
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @mov_pcm_le_gt16(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @mov_write_enda_tag(i32* %58)
  br label %156

60:                                               ; preds = %49
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @mov_pcm_be_gt16(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @mov_write_enda_tag_be(i32* %69)
  br label %155

71:                                               ; preds = %60
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AV_CODEC_ID_AMR_NB, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %71
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = call i32 @mov_write_amr_tag(i32* %80, %struct.TYPE_11__* %81)
  br label %154

83:                                               ; preds = %71
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AV_CODEC_ID_AC3, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i32*, i32** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = call i32 @mov_write_ac3_tag(i32* %92, i32* %93, %struct.TYPE_11__* %94)
  br label %153

96:                                               ; preds = %83
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = load i32*, i32** %4, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = call i32 @mov_write_eac3_tag(i32* %105, i32* %106, %struct.TYPE_11__* %107)
  br label %152

109:                                              ; preds = %96
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AV_CODEC_ID_QDM2, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %117, %109
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %128 = call i32 @mov_write_extradata_tag(i32* %126, %struct.TYPE_11__* %127)
  br label %151

129:                                              ; preds = %117
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @AV_CODEC_ID_ADPCM_MS, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %145, label %137

137:                                              ; preds = %129
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @AV_CODEC_ID_ADPCM_IMA_WAV, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137, %129
  %146 = load i32*, i32** %4, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = call i32 @mov_write_ms_tag(i32* %146, i32* %147, %struct.TYPE_11__* %148)
  br label %150

150:                                              ; preds = %145, %137
  br label %151

151:                                              ; preds = %150, %125
  br label %152

152:                                              ; preds = %151, %104
  br label %153

153:                                              ; preds = %152, %91
  br label %154

154:                                              ; preds = %153, %79
  br label %155

155:                                              ; preds = %154, %68
  br label %156

156:                                              ; preds = %155, %57
  br label %157

157:                                              ; preds = %156, %39
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @avio_wb32(i32* %158, i32 8)
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @avio_wb32(i32* %160, i32 0)
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @update_size(i32* %162, i32 %163)
  ret i32 %164
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @mov_write_esds_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @mov_pcm_le_gt16(i64) #1

declare dso_local i32 @mov_write_enda_tag(i32*) #1

declare dso_local i64 @mov_pcm_be_gt16(i64) #1

declare dso_local i32 @mov_write_enda_tag_be(i32*) #1

declare dso_local i32 @mov_write_amr_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_ac3_tag(i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_eac3_tag(i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_extradata_tag(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @mov_write_ms_tag(i32*, i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
