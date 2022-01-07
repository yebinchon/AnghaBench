; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_wave.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_read_wave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_QDM2 = common dso_local global i64 0, align 8
@AV_CODEC_ID_QDMC = common dso_local global i64 0, align 8
@AV_CODEC_ID_SPEEX = common dso_local global i64 0, align 8
@AV_CODEC_ID_ALAC = common dso_local global i64 0, align 8
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ALAC_EXTRADATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32)* @mov_read_wave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_read_wave(%struct.TYPE_10__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %215

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %24, i64 %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1073741824
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %4, align 4
  br label %215

39:                                               ; preds = %19
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AV_CODEC_ID_QDM2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AV_CODEC_ID_QDMC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AV_CODEC_ID_SPEEX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %55, %47, %39
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = call i32 @av_freep(i64* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ff_get_extradata(%struct.TYPE_13__* %71, %struct.TYPE_14__* %74, i32* %75, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %63
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %215

83:                                               ; preds = %63
  br label %214

84:                                               ; preds = %55
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 8
  br i1 %87, label %88, label %208

88:                                               ; preds = %84
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_CODEC_ID_ALAC, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %198

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 24
  br i1 %99, label %100, label %198

100:                                              ; preds = %96
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @ffio_ensure_seekback(i32* %101, i32 8)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %215

107:                                              ; preds = %100
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @avio_rb64(i32* %108)
  store i32 %109, i32* %10, align 4
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 8
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @MKBETAG(float 1.020000e+02, i8 signext 114, i8 signext 109, i8 signext 97)
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %107
  %117 = load i32, i32* %10, align 4
  %118 = ashr i32 %117, 32
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp sle i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = ashr i32 %123, 32
  %125 = icmp sge i32 %124, 8
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @avio_skip(i32* %127, i32 -8)
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 8
  store i32 %131, i32* %129, align 4
  br label %197

132:                                              ; preds = %122, %116, %107
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %196, label %139

139:                                              ; preds = %132
  %140 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %141 = add nsw i64 36, %140
  %142 = call i64 @av_mallocz(i64 %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  store i64 %142, i64* %146, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %139
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = call i32 @AVERROR(i32 %154)
  store i32 %155, i32* %4, align 4
  br label %215

156:                                              ; preds = %139
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  store i64 36, i64* %160, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @AV_WB32(i64 %165, i64 36)
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 4
  %173 = call i64 @MKTAG(i8 signext 97, i8 signext 108, i8 signext 97, i8 signext 99)
  %174 = call i32 @AV_WB32(i64 %172, i64 %173)
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 12
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @AV_WB64(i64 %180, i32 %181)
  %183 = load i32*, i32** %7, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 20
  %190 = call i32 @avio_read(i32* %183, i64 %189, i32 16)
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 24
  %195 = call i32 @avio_skip(i32* %191, i32 %194)
  store i32 0, i32* %4, align 4
  br label %215

196:                                              ; preds = %132
  br label %197

197:                                              ; preds = %196, %126
  br label %198

198:                                              ; preds = %197, %96, %88
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @mov_read_default(%struct.TYPE_10__* %199, i32* %200, i32 %202)
  store i32 %203, i32* %9, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %198
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %4, align 4
  br label %215

207:                                              ; preds = %198
  br label %213

208:                                              ; preds = %84
  %209 = load i32*, i32** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @avio_skip(i32* %209, i32 %211)
  br label %213

213:                                              ; preds = %208, %207
  br label %214

214:                                              ; preds = %213, %83
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %205, %156, %153, %105, %81, %37, %18
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i32 @ff_get_extradata(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @ffio_ensure_seekback(i32*, i32) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @MKBETAG(float, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i64 @av_mallocz(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WB32(i64, i64) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @AV_WB64(i64, i32) #1

declare dso_local i32 @avio_read(i32*, i64, i32) #1

declare dso_local i32 @mov_read_default(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
