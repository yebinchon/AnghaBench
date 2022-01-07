; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_il.c_mmalil_format_to_omx_audio_param.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_il.c_mmalil_format_to_omx_audio_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_17__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@MMAL_ENCODING_PCM_SIGNED_BE = common dso_local global i32 0, align 4
@MMAL_ENCODING_PCM_SIGNED_LE = common dso_local global i32 0, align 4
@MMAL_ENCODING_PCM_UNSIGNED_BE = common dso_local global i32 0, align 4
@MMAL_ENCODING_PCM_UNSIGNED_LE = common dso_local global i32 0, align 4
@OMX_AUDIO_PCMModeLinear = common dso_local global i32 0, align 4
@OMX_TRUE = common dso_local global i32 0, align 4
@OMX_EndianLittle = common dso_local global i32 0, align 4
@OMX_NumericalDataSigned = common dso_local global i32 0, align 4
@OMX_EndianBig = common dso_local global i32 0, align 4
@OMX_NumericalDataUnsigned = common dso_local global i32 0, align 4
@MMAL_ENCODING_ALAW = common dso_local global i32 0, align 4
@OMX_AUDIO_PCMModeALaw = common dso_local global i32 0, align 4
@MMAL_ENCODING_MULAW = common dso_local global i32 0, align 4
@OMX_AUDIO_PCMModeMULaw = common dso_local global i32 0, align 4
@OMX_AUDIO_AACStreamFormatMP4ADTS = common dso_local global i32 0, align 4
@OMX_AUDIO_AACStreamFormatRAW = common dso_local global i32 0, align 4
@OMX_AUDIO_WMAFormat7 = common dso_local global i32 0, align 4
@OMX_AUDIO_WMAFormat8 = common dso_local global i32 0, align 4
@MMAL_ENCODING_AMRNB = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRBandModeNB0 = common dso_local global i32 0, align 4
@MMAL_ENCODING_AMRWB = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRBandModeWB0 = common dso_local global i32 0, align 4
@OMX_AUDIO_DDPBitStreamIdAC3 = common dso_local global i32 0, align 4
@MMAL_ENCODING_EAC3 = common dso_local global i32 0, align 4
@OMX_AUDIO_DDPBitStreamIdEAC3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmalil_format_to_omx_audio_param(%struct.TYPE_18__* %0, i32* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mmalil_encoding_to_omx_audio_coding(i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @mmalil_omx_audio_param_index(i32 %19, i32* %9)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @memset(%struct.TYPE_18__* %27, i32 0, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %384 [
    i32 140, label %35
    i32 155, label %161
    i32 141, label %195
    i32 128, label %214
    i32 129, label %254
    i32 153, label %273
    i32 152, label %308
    i32 151, label %350
    i32 154, label %383
    i32 144, label %383
    i32 145, label %383
    i32 143, label %383
    i32 138, label %383
    i32 139, label %383
    i32 137, label %383
    i32 130, label %383
    i32 131, label %383
    i32 135, label %383
    i32 136, label %383
    i32 150, label %383
    i32 132, label %383
    i32 149, label %383
    i32 148, label %383
    i32 147, label %383
    i32 146, label %383
    i32 133, label %383
    i32 134, label %383
    i32 142, label %383
  ]

35:                                               ; preds = %26
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 7
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 5
  store i32 %50, i32* %53, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mmalil_omx_default_channel_mapping(i32 %57, i32 %60)
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MMAL_ENCODING_PCM_SIGNED_BE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %85, label %67

67:                                               ; preds = %35
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MMAL_ENCODING_PCM_SIGNED_LE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %85, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MMAL_ENCODING_PCM_UNSIGNED_BE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @MMAL_ENCODING_PCM_UNSIGNED_LE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %136

85:                                               ; preds = %79, %73, %67, %35
  %86 = load i32, i32* @OMX_AUDIO_PCMModeLinear, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @OMX_TRUE, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 3
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* @OMX_EndianLittle, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @OMX_NumericalDataSigned, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MMAL_ENCODING_PCM_SIGNED_BE, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %85
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MMAL_ENCODING_PCM_UNSIGNED_BE, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107, %85
  %114 = load i32, i32* @OMX_EndianBig, align 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %107
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MMAL_ENCODING_PCM_UNSIGNED_LE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @MMAL_ENCODING_PCM_UNSIGNED_BE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124, %118
  %131 = load i32, i32* @OMX_NumericalDataUnsigned, align 4
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %130, %124
  br label %160

136:                                              ; preds = %79
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MMAL_ENCODING_ALAW, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* @OMX_AUDIO_PCMModeALaw, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 4
  br label %159

147:                                              ; preds = %136
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @MMAL_ENCODING_MULAW, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load i32, i32* @OMX_AUDIO_PCMModeMULaw, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 7
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 4
  br label %158

158:                                              ; preds = %153, %147
  br label %159

159:                                              ; preds = %158, %142
  br label %160

160:                                              ; preds = %159, %135
  br label %386

161:                                              ; preds = %26
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 6
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 3
  store i32 %164, i32* %167, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  switch i32 %182, label %193 [
    i32 159, label %183
    i32 158, label %188
  ]

183:                                              ; preds = %161
  %184 = load i32, i32* @OMX_AUDIO_AACStreamFormatMP4ADTS, align 4
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 6
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  br label %194

188:                                              ; preds = %161
  %189 = load i32, i32* @OMX_AUDIO_AACStreamFormatRAW, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  br label %194

193:                                              ; preds = %161
  br label %194

194:                                              ; preds = %193, %188, %183
  br label %386

195:                                              ; preds = %26
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 2
  store i32 %198, i32* %201, align 4
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  store i32 %204, i32* %207, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 4
  br label %386

214:                                              ; preds = %26
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 4
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 4
  store i32 %217, i32* %220, align 4
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 3
  store i32 %223, i32* %226, align 4
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 2
  store i32 %229, i32* %232, align 4
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %252 [
    i32 157, label %242
    i32 156, label %247
  ]

242:                                              ; preds = %214
  %243 = load i32, i32* @OMX_AUDIO_WMAFormat7, align 4
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i32 0, i32 0
  store i32 %243, i32* %246, align 4
  br label %253

247:                                              ; preds = %214
  %248 = load i32, i32* @OMX_AUDIO_WMAFormat8, align 4
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 4
  br label %253

252:                                              ; preds = %214
  br label %253

253:                                              ; preds = %252, %247, %242
  br label %386

254:                                              ; preds = %26
  %255 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 2
  store i32 %257, i32* %260, align 4
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %265, i32 0, i32 1
  store i32 %263, i32* %266, align 4
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 0
  store i32 %269, i32* %272, align 4
  br label %386

273:                                              ; preds = %26
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 2
  store i32 %276, i32* %279, align 4
  %280 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 1
  store i32 %282, i32* %285, align 4
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @MMAL_ENCODING_AMRNB, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %296

291:                                              ; preds = %273
  %292 = load i32, i32* @OMX_AUDIO_AMRBandModeNB0, align 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  store i32 %292, i32* %295, align 4
  br label %296

296:                                              ; preds = %291, %273
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @MMAL_ENCODING_AMRWB, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = load i32, i32* @OMX_AUDIO_AMRBandModeWB0, align 4
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 4
  br label %307

307:                                              ; preds = %302, %296
  br label %386

308:                                              ; preds = %26
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 5
  store i32 %311, i32* %314, align 4
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 4
  store i32 %317, i32* %320, align 4
  %321 = load i32, i32* @OMX_AUDIO_DDPBitStreamIdAC3, align 4
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %323, i32 0, i32 3
  store i32 %321, i32* %324, align 4
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @MMAL_ENCODING_EAC3, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %335

330:                                              ; preds = %308
  %331 = load i32, i32* @OMX_AUDIO_DDPBitStreamIdEAC3, align 4
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 3
  store i32 %331, i32* %334, align 4
  br label %335

335:                                              ; preds = %330, %308
  %336 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 2
  store i32 0, i32* %338, align 4
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 1
  store i32 0, i32* %341, align 4
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @mmalil_omx_default_channel_mapping(i32 %345, i32 %348)
  br label %386

350:                                              ; preds = %26
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 5
  store i32 %353, i32* %356, align 4
  %357 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %361 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %361, i32 0, i32 4
  store i32 %359, i32* %362, align 4
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 3
  store i32 %365, i32* %368, align 4
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  store i32 1, i32* %371, align 4
  %372 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 2
  store i32 0, i32* %374, align 4
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @mmalil_omx_default_channel_mapping(i32 %378, i32 %381)
  br label %386

383:                                              ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  br label %384

384:                                              ; preds = %26, %383
  %385 = call i32 @vcos_assert(i32 0)
  br label %386

386:                                              ; preds = %384, %350, %335, %307, %254, %253, %195, %194, %160
  %387 = load i32, i32* %8, align 4
  ret i32 %387
}

declare dso_local i32 @mmalil_encoding_to_omx_audio_coding(i32) #1

declare dso_local i32 @mmalil_omx_audio_param_index(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mmalil_omx_default_channel_mapping(i32, i32) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
