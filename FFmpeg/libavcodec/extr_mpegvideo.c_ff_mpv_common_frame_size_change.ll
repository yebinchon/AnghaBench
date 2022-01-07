; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_ff_mpv_common_frame_size_change.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_ff_mpv_common_frame_size_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_14__**, i64, i32, i32, i32*, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MAX_PICTURE_COUNT = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_mpv_common_frame_size_change(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @AVERROR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %276

14:                                               ; preds = %1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %29, i64 %31
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = call i32 @free_duplicate_context(%struct.TYPE_14__* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %20

38:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %48, i64 %50
  %52 = call i32 @av_freep(%struct.TYPE_14__** %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %39

56:                                               ; preds = %39
  br label %60

57:                                               ; preds = %14
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = call i32 @free_duplicate_context(%struct.TYPE_14__* %58)
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %62 = call i32 @free_context_frame(%struct.TYPE_14__* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 13
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = icmp ne %struct.TYPE_13__* %65, null
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @MAX_PICTURE_COUNT, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 13
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %68

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %60
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 10
  store i32* null, i32** %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 11
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 12
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %84
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 31
  %106 = sdiv i32 %105, 32
  %107 = mul nsw i32 %106, 2
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %118

110:                                              ; preds = %96, %84
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 15
  %115 = sdiv i32 %114, 16
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %110, %101
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123, %118
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @av_image_check_size(i64 %131, i32 %134, i32 0, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %272

141:                                              ; preds = %128, %123
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = call i32 @init_context_frame(%struct.TYPE_14__* %142)
  store i32 %143, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %272

146:                                              ; preds = %141
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 6
  %149 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %148, align 8
  %150 = call i32 @memset(%struct.TYPE_14__** %149, i32 0, i32 8)
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %154, i64 0
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %155, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %271

160:                                              ; preds = %146
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %271

165:                                              ; preds = %160
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %253

171:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %172

172:                                              ; preds = %249, %171
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %252

176:                                              ; preds = %172
  %177 = load i32, i32* %4, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %200

179:                                              ; preds = %176
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %181 = call %struct.TYPE_14__* @av_memdup(%struct.TYPE_14__* %180, i32 88)
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %184, i64 %186
  store %struct.TYPE_14__* %181, %struct.TYPE_14__** %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 6
  %190 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %189, align 8
  %191 = load i32, i32* %4, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %190, i64 %192
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = icmp ne %struct.TYPE_14__* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %179
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = call i32 @AVERROR(i32 %197)
  store i32 %198, i32* %5, align 4
  br label %272

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199, %176
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 6
  %203 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %203, i64 %205
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %206, align 8
  %208 = call i32 @init_duplicate_context(%struct.TYPE_14__* %207)
  store i32 %208, i32* %5, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %272

211:                                              ; preds = %200
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %4, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %6, align 4
  %218 = sdiv i32 %217, 2
  %219 = add nsw i32 %216, %218
  %220 = load i32, i32* %6, align 4
  %221 = sdiv i32 %219, %220
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 6
  %224 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %223, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %224, i64 %226
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 4
  store i32 %221, i32* %229, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, 1
  %235 = mul nsw i32 %232, %234
  %236 = load i32, i32* %6, align 4
  %237 = sdiv i32 %236, 2
  %238 = add nsw i32 %235, %237
  %239 = load i32, i32* %6, align 4
  %240 = sdiv i32 %238, %239
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 6
  %243 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %242, align 8
  %244 = load i32, i32* %4, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %243, i64 %245
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 5
  store i32 %240, i32* %248, align 4
  br label %249

249:                                              ; preds = %211
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %4, align 4
  br label %172

252:                                              ; preds = %172
  br label %267

253:                                              ; preds = %165
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = call i32 @init_duplicate_context(%struct.TYPE_14__* %254)
  store i32 %255, i32* %5, align 4
  %256 = load i32, i32* %5, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %272

259:                                              ; preds = %253
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 4
  store i32 0, i32* %261, align 8
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %259, %252
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  br label %271

271:                                              ; preds = %267, %160, %146
  store i32 0, i32* %2, align 4
  br label %276

272:                                              ; preds = %258, %210, %196, %145, %140
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %274 = call i32 @ff_mpv_common_end(%struct.TYPE_14__* %273)
  %275 = load i32, i32* %5, align 4
  store i32 %275, i32* %2, align 4
  br label %276

276:                                              ; preds = %272, %271, %11
  %277 = load i32, i32* %2, align 4
  ret i32 %277
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @free_duplicate_context(%struct.TYPE_14__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_14__**) #1

declare dso_local i32 @free_context_frame(%struct.TYPE_14__*) #1

declare dso_local i32 @av_image_check_size(i64, i32, i32, i32) #1

declare dso_local i32 @init_context_frame(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__**, i32, i32) #1

declare dso_local %struct.TYPE_14__* @av_memdup(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @init_duplicate_context(%struct.TYPE_14__*) #1

declare dso_local i32 @ff_mpv_common_end(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
