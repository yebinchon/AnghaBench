; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_stbl_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_stbl_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i32, %struct.TYPE_15__*, %struct.TYPE_14__, i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"stbl\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_TRUEHD = common dso_local global i64 0, align 8
@MOV_SYNC_SAMPLE = common dso_local global i32 0, align 4
@MODE_MOV = common dso_local global i64 0, align 8
@MOV_TRACK_STPS = common dso_local global i32 0, align 4
@MOV_PARTIAL_SYNC_SAMPLE = common dso_local global i32 0, align 4
@MOV_TRACK_CTTS = common dso_local global i32 0, align 4
@AV_CODEC_ID_OPUS = common dso_local global i64 0, align 8
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_16__*)* @mov_write_stbl_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_stbl_tag(i32* %0, i32* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @avio_tell(i32* %12)
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @avio_wb32(i32* %14, i32 0)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ffio_wfourcc(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = call i32 @mov_write_stsd_tag(i32* %18, i32* %19, i32* %20, %struct.TYPE_16__* %21)
  store i32 %22, i32* %11, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %5, align 4
  br label %179

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = call i32 @mov_write_stts_tag(i32* %27, %struct.TYPE_16__* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %53, label %37

37:                                               ; preds = %26
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AV_CODEC_ID_TRUEHD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %45, %37, %26
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = load i32, i32* @MOV_SYNC_SAMPLE, align 4
  %70 = call i32 @mov_write_stss_tag(i32* %67, %struct.TYPE_16__* %68, i32 %69)
  br label %71

71:                                               ; preds = %66, %58, %53, %45
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %87 = call i32 @mov_write_sdtp_tag(i32* %85, %struct.TYPE_16__* %86)
  br label %88

88:                                               ; preds = %84, %79, %71
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MODE_MOV, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MOV_TRACK_STPS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = load i32, i32* @MOV_PARTIAL_SYNC_SAMPLE, align 4
  %105 = call i32 @mov_write_stss_tag(i32* %102, %struct.TYPE_16__* %103, i32 %104)
  br label %106

106:                                              ; preds = %101, %94, %88
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %106
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MOV_TRACK_CTTS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %114
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32*, i32** %6, align 8
  %128 = load i32*, i32** %7, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %130 = call i32 @mov_write_ctts_tag(i32* %127, i32* %128, %struct.TYPE_16__* %129)
  store i32 %130, i32* %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %5, align 4
  br label %179

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134, %121, %114, %106
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %138 = call i32 @mov_write_stsc_tag(i32* %136, %struct.TYPE_16__* %137)
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %141 = call i32 @mov_write_stsz_tag(i32* %139, %struct.TYPE_16__* %140)
  %142 = load i32*, i32** %7, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %144 = call i32 @mov_write_stco_tag(i32* %142, %struct.TYPE_16__* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %135
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 5
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @ff_mov_cenc_write_stbl_atoms(%struct.TYPE_14__* %152, i32* %153)
  br label %155

155:                                              ; preds = %150, %135
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @AV_CODEC_ID_OPUS, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %171, label %163

163:                                              ; preds = %155
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %163, %155
  %172 = load i32*, i32** %7, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %174 = call i32 @mov_preroll_write_stbl_atoms(i32* %172, %struct.TYPE_16__* %173)
  br label %175

175:                                              ; preds = %171, %163
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @update_size(i32* %176, i32 %177)
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %175, %132, %24
  %180 = load i32, i32* %5, align 4
  ret i32 %180
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_stsd_tag(i32*, i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mov_write_stts_tag(i32*, %struct.TYPE_16__*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @mov_write_stss_tag(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @mov_write_sdtp_tag(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mov_write_ctts_tag(i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mov_write_stsc_tag(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mov_write_stsz_tag(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mov_write_stco_tag(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ff_mov_cenc_write_stbl_atoms(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @mov_preroll_write_stbl_atoms(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
