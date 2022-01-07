; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_15__** }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %17, i64 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %7, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %8, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %32, label %38

32:                                               ; preds = %27, %2
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %121

38:                                               ; preds = %32, %27
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -2
  br i1 %47, label %48, label %151

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = call i32 @get_frame(%struct.TYPE_16__* %54, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %48
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 2
  %61 = call i32 @av_frame_free(%struct.TYPE_14__** %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = call i32 @av_frame_free(%struct.TYPE_14__** %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %66, align 8
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %283

68:                                               ; preds = %48
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %10, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %68
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %95

91:                                               ; preds = %77, %68
  %92 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %83
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = call i32 @ff_filter_frame(%struct.TYPE_15__* %96, %struct.TYPE_14__* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %283

103:                                              ; preds = %95
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %283

109:                                              ; preds = %103
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  %120 = call i32 @av_frame_free(%struct.TYPE_14__** %119)
  br label %121

121:                                              ; preds = %109, %37
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131, %126, %121
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141, %131
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 4
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %149, align 8
  br label %150

150:                                              ; preds = %146, %141, %136
  br label %151

151:                                              ; preds = %150, %43
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157, %152
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %229

167:                                              ; preds = %162, %157
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = call %struct.TYPE_14__* @av_frame_clone(%struct.TYPE_14__* %168)
  store %struct.TYPE_14__* %169, %struct.TYPE_14__** %11, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %171 = icmp ne %struct.TYPE_14__* %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %167
  %173 = call i32 @av_frame_free(%struct.TYPE_14__** %5)
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 4
  %176 = call i32 @av_frame_free(%struct.TYPE_14__** %175)
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = call i32 @AVERROR(i32 %177)
  store i32 %178, i32* %3, align 4
  br label %283

179:                                              ; preds = %167
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sgt i32 %182, 1
  br i1 %183, label %189, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, -2
  br i1 %188, label %189, label %212

189:                                              ; preds = %184, %179
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  %192 = call i32 @av_frame_free(%struct.TYPE_14__** %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %189
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %197, %189
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 4
  store %struct.TYPE_14__* %208, %struct.TYPE_14__** %210, align 8
  br label %211

211:                                              ; preds = %207, %202
  br label %214

212:                                              ; preds = %184
  %213 = call i32 @av_frame_free(%struct.TYPE_14__** %5)
  br label %214

214:                                              ; preds = %212, %211
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %214
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = mul nsw i64 %223, 2
  store i64 %224, i64* %222, align 8
  br label %225

225:                                              ; preds = %220, %214
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %228 = call i32 @ff_filter_frame(%struct.TYPE_15__* %226, %struct.TYPE_14__* %227)
  store i32 %228, i32* %3, align 4
  br label %283

229:                                              ; preds = %162
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 3
  store %struct.TYPE_14__* %230, %struct.TYPE_14__** %232, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %234 = call i32 @get_frame(%struct.TYPE_16__* %233, i32 0)
  store i32 %234, i32* %9, align 4
  %235 = load i32, i32* %9, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %229
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 2
  %240 = call i32 @av_frame_free(%struct.TYPE_14__** %239)
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 3
  %243 = call i32 @av_frame_free(%struct.TYPE_14__** %242)
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 4
  %246 = call i32 @av_frame_free(%struct.TYPE_14__** %245)
  %247 = load i32, i32* %9, align 4
  store i32 %247, i32* %3, align 4
  br label %283

248:                                              ; preds = %229
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %248
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = mul nsw i64 %257, 2
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  store i64 %258, i64* %262, align 8
  br label %263

263:                                              ; preds = %254, %248
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp sle i32 %266, 1
  br i1 %267, label %268, label %277

268:                                              ; preds = %263
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp sgt i32 %271, -2
  br i1 %272, label %273, label %277

273:                                              ; preds = %268
  %274 = call i32 @av_frame_free(%struct.TYPE_14__** %5)
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %276, align 8
  br label %277

277:                                              ; preds = %273, %268, %263
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %280, align 8
  %282 = call i32 @ff_filter_frame(%struct.TYPE_15__* %278, %struct.TYPE_14__* %281)
  store i32 %282, i32* %3, align 4
  br label %283

283:                                              ; preds = %277, %237, %225, %172, %108, %101, %58
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i32 @get_frame(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_14__**) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @av_frame_clone(%struct.TYPE_14__*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
