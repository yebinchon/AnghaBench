; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pixdesctest.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_pixdesctest.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32*, i32** }

@ENOMEM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@FF_PSEUDOPAL = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_19__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %6, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %28, i64 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %7, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @AV_CEIL_RSHIFT(i32 %37, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @AV_CEIL_RSHIFT(i32 %44, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_19__* @ff_get_video_buffer(%struct.TYPE_20__* %51, i32 %54, i32 %57)
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %8, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = icmp ne %struct.TYPE_19__* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %2
  %62 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %3, align 4
  br label %267

65:                                               ; preds = %2
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %68 = call i32 @av_frame_copy_props(%struct.TYPE_19__* %66, %struct.TYPE_19__* %67)
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %137, %65
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %140

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %14, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %12, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %136

92:                                               ; preds = %82
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %92
  br label %120

109:                                              ; preds = %92
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %117, 1
  %119 = mul nsw i32 %116, %118
  br label %120

120:                                              ; preds = %109, %108
  %121 = phi i32 [ 0, %108 ], [ %119, %109 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %99, i64 %122
  store i32* %123, i32** %16, align 8
  %124 = load i32*, i32** %16, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @FFABS(i32 %131)
  %133 = load i32, i32* %15, align 4
  %134 = mul nsw i32 %132, %133
  %135 = call i32 @memset(i32* %124, i32 0, i32 %134)
  br label %136

136:                                              ; preds = %120, %82
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %69

140:                                              ; preds = %69
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %172, label %149

149:                                              ; preds = %140
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FF_PSEUDOPAL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %149
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i32**, i32*** %160, align 8
  %162 = getelementptr inbounds i32*, i32** %161, i64 1
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %185

165:                                              ; preds = %158
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i32**, i32*** %167, align 8
  %169 = getelementptr inbounds i32*, i32** %168, i64 1
  %170 = load i32*, i32** %169, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %165, %140
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 1
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 1
  %180 = load i32**, i32*** %179, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 1
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* @AVPALETTE_SIZE, align 4
  %184 = call i32 @memcpy(i32* %177, i32* %182, i32 %183)
  br label %185

185:                                              ; preds = %172, %165, %158, %149
  store i32 0, i32* %10, align 4
  br label %186

186:                                              ; preds = %259, %185
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %187, %192
  br i1 %193, label %194, label %262

194:                                              ; preds = %186
  %195 = load i32, i32* %10, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %10, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %202

200:                                              ; preds = %197, %194
  %201 = load i32, i32* %13, align 4
  br label %204

202:                                              ; preds = %197
  %203 = load i32, i32* %11, align 4
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %201, %200 ], [ %203, %202 ]
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* %10, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %10, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %213

211:                                              ; preds = %208, %204
  %212 = load i32, i32* %14, align 4
  br label %215

213:                                              ; preds = %208
  %214 = load i32, i32* %12, align 4
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i32 [ %212, %211 ], [ %214, %213 ]
  store i32 %216, i32* %18, align 4
  store i32 0, i32* %9, align 4
  br label %217

217:                                              ; preds = %255, %215
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %258

221:                                              ; preds = %217
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load i32**, i32*** %226, align 8
  %228 = bitcast i32** %227 to i8*
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %17, align 4
  %238 = call i32 @av_read_image_line2(i32 %224, i8* %228, i32* %231, %struct.TYPE_16__* %234, i32 0, i32 %235, i32 %236, i32 %237, i32 0, i32 4)
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 1
  %244 = load i32**, i32*** %243, align 8
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %17, align 4
  %254 = call i32 @av_write_image_line2(i32 %241, i32** %244, i32* %247, %struct.TYPE_16__* %250, i32 0, i32 %251, i32 %252, i32 %253, i32 4)
  br label %255

255:                                              ; preds = %221
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %9, align 4
  br label %217

258:                                              ; preds = %217
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %10, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %10, align 4
  br label %186

262:                                              ; preds = %186
  %263 = call i32 @av_frame_free(%struct.TYPE_19__** %5)
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %266 = call i32 @ff_filter_frame(%struct.TYPE_20__* %264, %struct.TYPE_19__* %265)
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %262, %61
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local %struct.TYPE_19__* @ff_get_video_buffer(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_19__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_read_image_line2(i32, i8*, i32*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_write_image_line2(i32, i32**, i32*, %struct.TYPE_16__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
