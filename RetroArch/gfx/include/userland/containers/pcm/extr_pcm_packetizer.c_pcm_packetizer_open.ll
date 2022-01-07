; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/pcm/extr_pcm_packetizer.c_pcm_packetizer_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/pcm/extr_pcm_packetizer.c_pcm_packetizer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_15__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@CONVERSION_NONE = common dso_local global i32 0, align 4
@VC_CONTAINER_CODEC_PCM_UNSIGNED_BE = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_PCM_UNSIGNED_LE = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_PCM_SIGNED_BE = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_PCM_SIGNED_LE = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_PCM_FLOAT_BE = common dso_local global i64 0, align 8
@VC_CONTAINER_CODEC_PCM_FLOAT_LE = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@CONVERSION_UNKNOWN = common dso_local global i32 0, align 4
@CONVERSION_U8_TO_S16L = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@FACTOR_SHIFT = common dso_local global i32 0, align 4
@FRAME_SIZE = common dso_local global i32 0, align 4
@pcm_packetizer_close = common dso_local global i32 0, align 4
@pcm_packetizer_packetize = common dso_local global i32 0, align 4
@pcm_packetizer_reset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"using pcm audio packetizer\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcm_packetizer_open(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @CONVERSION_NONE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VC_CONTAINER_CODEC_PCM_UNSIGNED_BE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VC_CONTAINER_CODEC_PCM_UNSIGNED_LE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VC_CONTAINER_CODEC_PCM_SIGNED_BE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %23
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VC_CONTAINER_CODEC_PCM_SIGNED_LE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %31
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VC_CONTAINER_CODEC_PCM_FLOAT_BE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VC_CONTAINER_CODEC_PCM_FLOAT_LE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %56, i32* %2, align 4
  br label %308

57:                                               ; preds = %47, %39, %31, %23, %15, %1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %57
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %116

76:                                               ; preds = %57
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %76
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %86
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %104, %112
  %114 = sdiv i32 %113, 8
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %96, %86, %76
  br label %116

116:                                              ; preds = %115, %67
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %120, i32* %2, align 4
  br label %308

121:                                              ; preds = %116
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i32, i32* @CONVERSION_UNKNOWN, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %128, %121
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 49, i8 signext 54, i8 signext 108)
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %130
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @VC_CONTAINER_CODEC_PCM_SIGNED_LE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %138
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 16
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @CONVERSION_NONE, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %146, %138, %130
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @VC_FOURCC(i8 signext 115, i8 signext 49, i8 signext 54, i8 signext 108)
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %194

166:                                              ; preds = %158
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @VC_CONTAINER_CODEC_PCM_UNSIGNED_LE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %166
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @VC_CONTAINER_CODEC_PCM_UNSIGNED_BE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %174, %166
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 8
  br i1 %191, label %192, label %194

192:                                              ; preds = %182
  %193 = load i32, i32* @CONVERSION_U8_TO_S16L, align 4
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %192, %182, %174, %158
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @CONVERSION_UNKNOWN, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %199, i32* %2, align 4
  br label %308

200:                                              ; preds = %194
  %201 = call %struct.TYPE_21__* @malloc(i32 20)
  store %struct.TYPE_21__* %201, %struct.TYPE_21__** %4, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 4
  store %struct.TYPE_21__* %201, %struct.TYPE_21__** %205, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %207 = icmp ne %struct.TYPE_21__* %206, null
  br i1 %207, label %210, label %208

208:                                              ; preds = %200
  %209 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %209, i32* %2, align 4
  br label %308

210:                                              ; preds = %200
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %212 = call i32 @memset(%struct.TYPE_21__* %211, i32 0, i32 20)
  %213 = load i32, i32* %6, align 4
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load i32, i32* @FACTOR_SHIFT, align 4
  %217 = shl i32 1, %216
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 3
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @CONVERSION_U8_TO_S16L, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %255

227:                                              ; preds = %210
  %228 = load i32, i32* @FACTOR_SHIFT, align 4
  %229 = shl i32 2, %228
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %239, 2
  store i32 %240, i32* %238, align 4
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %248, 2
  store i32 %249, i32* %247, align 4
  %250 = load i64, i64* @VC_CONTAINER_CODEC_PCM_SIGNED_LE, align 8
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 1
  store i64 %250, i64* %254, align 8
  br label %255

255:                                              ; preds = %227, %210
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 2
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @vc_container_time_set_samplerate(i32* %259, i32 %267, i32 1)
  %269 = load i32, i32* @FRAME_SIZE, align 4
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 8
  %272 = load i32, i32* @FRAME_SIZE, align 4
  %273 = load i32, i32* @FACTOR_SHIFT, align 4
  %274 = shl i32 %272, %273
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = sdiv i32 %274, %277
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 4
  %281 = load i32, i32* %5, align 4
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %5, align 4
  %288 = udiv i32 %286, %287
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 4
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* @pcm_packetizer_close, align 4
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 2
  store i32 %291, i32* %295, align 8
  %296 = load i32, i32* @pcm_packetizer_packetize, align 4
  %297 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 1
  store i32 %296, i32* %300, align 4
  %301 = load i32, i32* @pcm_packetizer_reset, align 4
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 0
  store i32 %301, i32* %305, align 8
  %306 = call i32 @LOG_DEBUG(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %307 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %255, %208, %198, %119, %55
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local i64 @VC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_21__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @vc_container_time_set_samplerate(i32*, i32, i32) #1

declare dso_local i32 @LOG_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
