; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_il.c_mmalil_omx_audio_param_to_format.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_il.c_mmalil_omx_audio_param_to_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32 }

@OMX_AUDIO_PCMModeLinear = common dso_local global i32 0, align 4
@OMX_EndianBig = common dso_local global i32 0, align 4
@OMX_NumericalDataSigned = common dso_local global i32 0, align 4
@MMAL_ENCODING_PCM_SIGNED_BE = common dso_local global i8* null, align 8
@OMX_EndianLittle = common dso_local global i32 0, align 4
@MMAL_ENCODING_PCM_SIGNED_LE = common dso_local global i8* null, align 8
@OMX_NumericalDataUnsigned = common dso_local global i32 0, align 4
@MMAL_ENCODING_PCM_UNSIGNED_BE = common dso_local global i8* null, align 8
@MMAL_ENCODING_PCM_UNSIGNED_LE = common dso_local global i8* null, align 8
@OMX_AUDIO_PCMModeALaw = common dso_local global i32 0, align 4
@MMAL_ENCODING_ALAW = common dso_local global i8* null, align 8
@OMX_AUDIO_PCMModeMULaw = common dso_local global i32 0, align 4
@MMAL_ENCODING_MULAW = common dso_local global i8* null, align 8
@MMAL_ENCODING_MP4A = common dso_local global i8* null, align 8
@MMAL_ENCODING_VARIANT_MP4A_ADTS = common dso_local global i64 0, align 8
@MMAL_ENCODING_VARIANT_MP4A_DEFAULT = common dso_local global i64 0, align 8
@MMAL_ENCODING_MPGA = common dso_local global i8* null, align 8
@MMAL_ENCODING_WMA1 = common dso_local global i8* null, align 8
@MMAL_ENCODING_WMA2 = common dso_local global i8* null, align 8
@OMX_AUDIO_AMRBandModeNB0 = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRBandModeNB7 = common dso_local global i32 0, align 4
@MMAL_ENCODING_AMRNB = common dso_local global i8* null, align 8
@OMX_AUDIO_AMRBandModeWB0 = common dso_local global i32 0, align 4
@OMX_AUDIO_AMRBandModeWB8 = common dso_local global i32 0, align 4
@MMAL_ENCODING_AMRWB = common dso_local global i8* null, align 8
@OMX_AUDIO_DDPBitStreamIdAC3 = common dso_local global i32 0, align 4
@MMAL_ENCODING_EAC3 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mmalil_omx_audio_param_to_format(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @mmalil_omx_audio_coding_to_encoding(i32 %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %363 [
    i32 143, label %19
    i32 158, label %149
    i32 144, label %188
    i32 131, label %210
    i32 132, label %249
    i32 156, label %268
    i32 155, label %319
    i32 154, label %343
    i32 157, label %362
    i32 147, label %362
    i32 148, label %362
    i32 146, label %362
    i32 141, label %362
    i32 142, label %362
    i32 140, label %362
    i32 133, label %362
    i32 134, label %362
    i32 138, label %362
    i32 139, label %362
    i32 153, label %362
    i32 135, label %362
    i32 152, label %362
    i32 151, label %362
    i32 150, label %362
    i32 149, label %362
    i32 136, label %362
    i32 137, label %362
    i32 145, label %362
  ]

19:                                               ; preds = %3
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OMX_AUDIO_PCMModeLinear, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %124

44:                                               ; preds = %19
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %124

50:                                               ; preds = %44
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OMX_EndianBig, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OMX_NumericalDataSigned, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i8*, i8** @MMAL_ENCODING_PCM_SIGNED_BE, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %87

68:                                               ; preds = %57, %50
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @OMX_EndianLittle, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @OMX_NumericalDataSigned, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i8*, i8** @MMAL_ENCODING_PCM_SIGNED_LE, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %82, %75, %68
  br label %87

87:                                               ; preds = %86, %64
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @OMX_EndianBig, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @OMX_NumericalDataUnsigned, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i8*, i8** @MMAL_ENCODING_PCM_UNSIGNED_BE, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %101, %94, %87
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @OMX_EndianLittle, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @OMX_NumericalDataUnsigned, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i8*, i8** @MMAL_ENCODING_PCM_UNSIGNED_LE, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  br label %123

123:                                              ; preds = %119, %112, %105
  br label %148

124:                                              ; preds = %44, %19
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @OMX_AUDIO_PCMModeALaw, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = load i8*, i8** @MMAL_ENCODING_ALAW, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  br label %147

135:                                              ; preds = %124
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @OMX_AUDIO_PCMModeMULaw, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = load i8*, i8** @MMAL_ENCODING_MULAW, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %135
  br label %147

147:                                              ; preds = %146, %131
  br label %148

148:                                              ; preds = %147, %123
  br label %365

149:                                              ; preds = %3
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 6
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 6
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  switch i32 %171, label %186 [
    i32 162, label %172
    i32 161, label %172
    i32 160, label %179
    i32 159, label %179
  ]

172:                                              ; preds = %149, %149
  %173 = load i8*, i8** @MMAL_ENCODING_MP4A, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i8* %173, i8** %175, align 8
  %176 = load i64, i64* @MMAL_ENCODING_VARIANT_MP4A_ADTS, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  br label %187

179:                                              ; preds = %149, %149
  %180 = load i8*, i8** @MMAL_ENCODING_MP4A, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load i64, i64* @MMAL_ENCODING_VARIANT_MP4A_DEFAULT, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 2
  store i64 %183, i64* %185, align 8
  br label %187

186:                                              ; preds = %149
  br label %187

187:                                              ; preds = %186, %179, %172
  br label %365

188:                                              ; preds = %3
  %189 = load i8*, i8** @MMAL_ENCODING_MPGA, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  br label %365

210:                                              ; preds = %3
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 2
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  switch i32 %238, label %247 [
    i32 130, label %239
    i32 129, label %243
    i32 128, label %243
  ]

239:                                              ; preds = %210
  %240 = load i8*, i8** @MMAL_ENCODING_WMA1, align 8
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  store i8* %240, i8** %242, align 8
  br label %248

243:                                              ; preds = %210, %210
  %244 = load i8*, i8** @MMAL_ENCODING_WMA2, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  store i8* %244, i8** %246, align 8
  br label %248

247:                                              ; preds = %210
  br label %248

248:                                              ; preds = %247, %243, %239
  br label %365

249:                                              ; preds = %3
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  store i32 %253, i32* %255, align 4
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  br label %365

268:                                              ; preds = %3
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  store i32 8000, i32* %276, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 8
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @OMX_AUDIO_AMRBandModeNB0, align 4
  %288 = icmp sge i32 %286, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %268
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @OMX_AUDIO_AMRBandModeNB7, align 4
  %295 = icmp sle i32 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = load i8*, i8** @MMAL_ENCODING_AMRNB, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 0
  store i8* %297, i8** %299, align 8
  br label %300

300:                                              ; preds = %296, %289, %268
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @OMX_AUDIO_AMRBandModeWB0, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %318

307:                                              ; preds = %300
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @OMX_AUDIO_AMRBandModeWB8, align 4
  %313 = icmp sle i32 %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %307
  %315 = load i8*, i8** @MMAL_ENCODING_AMRWB, align 8
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 0
  store i8* %315, i8** %317, align 8
  br label %318

318:                                              ; preds = %314, %307, %300
  br label %365

319:                                              ; preds = %3
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 4
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @OMX_AUDIO_DDPBitStreamIdAC3, align 4
  %337 = icmp sgt i32 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %319
  %339 = load i8*, i8** @MMAL_ENCODING_EAC3, align 8
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  store i8* %339, i8** %341, align 8
  br label %342

342:                                              ; preds = %338, %319
  br label %365

343:                                              ; preds = %3
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 2
  store i32 %347, i32* %349, align 4
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 4
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 1
  store i32 %359, i32* %361, align 4
  br label %365

362:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %363

363:                                              ; preds = %3, %362
  %364 = call i32 @vcos_assert(i32 0)
  br label %365

365:                                              ; preds = %363, %343, %342, %318, %249, %248, %188, %187, %148
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  ret i8* %368
}

declare dso_local i8* @mmalil_omx_audio_coding_to_encoding(i32) #1

declare dso_local i32 @vcos_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
