; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_init_mux.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dvenc.c_dv_init_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_13__**, i32, i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__**, %struct.TYPE_12__* }

@AV_CODEC_ID_DVVIDEO = common dso_local global i64 0, align 8
@AV_CODEC_ID_PCM_S16LE = common dso_local global i64 0, align 8
@MAX_AUDIO_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_14__*)* @dv_init_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @dv_init_mux(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %346

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %20, i64 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %24, i64 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %25, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %81, %15
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %26
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %35, i64 %37
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %79 [
    i32 128, label %44
    i32 129, label %56
  ]

44:                                               ; preds = %32
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %346

48:                                               ; preds = %44
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %51, i64 %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %5, align 8
  br label %80

56:                                               ; preds = %32
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %346

62:                                               ; preds = %56
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %65, i64 %67
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %72, i64 %77
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %78, align 8
  br label %80

79:                                               ; preds = %32
  br label %345

80:                                               ; preds = %62, %48
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %26

84:                                               ; preds = %26
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87, %84
  br label %345

96:                                               ; preds = %87
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %182, %96
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %185

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %106, i64 %108
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = icmp ne %struct.TYPE_13__* %110, null
  br i1 %111, label %112, label %181

112:                                              ; preds = %103
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %115, i64 %117
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @AV_CODEC_ID_PCM_S16LE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %139, label %126

126:                                              ; preds = %112
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %129, i64 %131
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %126, %112
  br label %345

140:                                              ; preds = %126
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %143, i64 %145
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 48000
  br i1 %152, label %153, label %180

153:                                              ; preds = %140
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %156, i64 %158
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 44100
  br i1 %165, label %166, label %180

166:                                              ; preds = %153
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %169, i64 %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 32000
  br i1 %178, label %179, label %180

179:                                              ; preds = %166
  br label %345

180:                                              ; preds = %166, %153, %140
  br label %181

181:                                              ; preds = %180, %103
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %97

185:                                              ; preds = %97
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call %struct.TYPE_15__* @av_dv_codec_profile2(i32 %190, i32 %195, i32 %200, i32 %203)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 7
  store %struct.TYPE_15__* %204, %struct.TYPE_15__** %206, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 7
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %208, align 8
  %210 = icmp ne %struct.TYPE_15__* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %185
  br label %345

212:                                              ; preds = %185
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 7
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 25
  br i1 %219, label %220, label %228

220:                                              ; preds = %212
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 7
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 50
  br i1 %227, label %236, label %228

228:                                              ; preds = %220, %212
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 7
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 1
  br i1 %235, label %236, label %275

236:                                              ; preds = %228, %220
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %239, i64 0
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = icmp ne %struct.TYPE_13__* %241, null
  br i1 %242, label %243, label %255

243:                                              ; preds = %236
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %246, i64 0
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 48000
  br i1 %253, label %254, label %255

254:                                              ; preds = %243
  br label %345

255:                                              ; preds = %243, %236
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %258, i64 1
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = icmp ne %struct.TYPE_13__* %260, null
  br i1 %261, label %262, label %274

262:                                              ; preds = %255
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %265, i64 1
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 48000
  br i1 %272, label %273, label %274

273:                                              ; preds = %262
  br label %345

274:                                              ; preds = %262, %255
  br label %275

275:                                              ; preds = %274, %228
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp sgt i32 %278, 1
  br i1 %279, label %280, label %288

280:                                              ; preds = %275
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 7
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %285, 2
  br i1 %286, label %287, label %288

287:                                              ; preds = %280
  br label %345

288:                                              ; preds = %280, %275
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 6
  store i64 0, i64* %290, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 5
  store i64 0, i64* %292, align 8
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 4
  store i64 0, i64* %294, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 3
  %298 = call i32 @ff_parse_creation_time_metadata(%struct.TYPE_14__* %295, i32* %297, i32 1)
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %340, %288
  %300 = load i32, i32* %6, align 4
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %343

305:                                              ; preds = %299
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 2
  %308 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %308, i64 %310
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %311, align 8
  %313 = icmp ne %struct.TYPE_13__* %312, null
  br i1 %313, label %314, label %339

314:                                              ; preds = %305
  %315 = load i32, i32* @MAX_AUDIO_FRAME_SIZE, align 4
  %316 = call i32 @av_fifo_alloc_array(i32 100, i32 %315)
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %6, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %316, i32* %322, align 4
  %323 = icmp ne i32 %316, 0
  br i1 %323, label %339, label %324

324:                                              ; preds = %314
  br label %325

325:                                              ; preds = %328, %324
  %326 = load i32, i32* %6, align 4
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %325
  %329 = load i32, i32* %6, align 4
  %330 = add nsw i32 %329, -1
  store i32 %330, i32* %6, align 4
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %6, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = call i32 @av_fifo_freep(i32* %336)
  br label %325

338:                                              ; preds = %325
  br label %345

339:                                              ; preds = %314, %305
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %299

343:                                              ; preds = %299
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %344, %struct.TYPE_12__** %2, align 8
  br label %346

345:                                              ; preds = %338, %287, %273, %254, %211, %179, %139, %95, %79
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %346

346:                                              ; preds = %345, %343, %61, %47, %14
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %347
}

declare dso_local %struct.TYPE_15__* @av_dv_codec_profile2(i32, i32, i32, i32) #1

declare dso_local i32 @ff_parse_creation_time_metadata(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @av_fifo_alloc_array(i32, i32) #1

declare dso_local i32 @av_fifo_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
