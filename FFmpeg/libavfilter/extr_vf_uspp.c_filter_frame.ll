; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_uspp.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_uspp.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64, i32*, i32, i64, i32 }
%struct.TYPE_18__ = type { i64, i32*, i32*, i32, i32 }

@AV_PICTURE_TYPE_B = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %6, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %7, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %25, i64 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %8, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %110, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 5
  %37 = call i32* @av_frame_get_qp_table(%struct.TYPE_18__* %34, i32* %10, i32* %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %109

40:                                               ; preds = %33
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %109, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AV_PICTURE_TYPE_B, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %45
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @AV_CEIL_RSHIFT(i32 %57, i32 4)
  store i32 %58, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %65

59:                                               ; preds = %51
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AV_CEIL_RSHIFT(i32 %63, i32 4)
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %65
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @av_reallocp_array(i32** %75, i32 %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = load i32, i32* %14, align 4
  store i32 %84, i32* %3, align 4
  br label %260

85:                                               ; preds = %73
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %65
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sle i32 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @av_assert0(i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = mul nsw i32 %105, %106
  %108 = call i32 @memcpy(i32* %103, i32* %104, i32 %107)
  br label %109

109:                                              ; preds = %91, %45, %40, %33
  br label %110

110:                                              ; preds = %109, %2
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %215

115:                                              ; preds = %110
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %215, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %11, align 8
  br label %134

134:                                              ; preds = %130, %125, %120
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %214

142:                                              ; preds = %137, %134
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = call i32 @av_frame_is_writable(%struct.TYPE_18__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = and i32 %149, 7
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 7
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %191

158:                                              ; preds = %152, %146, %142
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @FFALIGN(i32 %161, i32 8)
  store i32 %162, i32* %15, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @FFALIGN(i32 %165, i32 8)
  store i32 %166, i32* %16, align 4
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %16, align 4
  %170 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__* %167, i32 %168, i32 %169)
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %9, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %172 = icmp ne %struct.TYPE_18__* %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %158
  %174 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = call i32 @AVERROR(i32 %175)
  store i32 %176, i32* %3, align 4
  br label %260

177:                                              ; preds = %158
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %180 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %178, %struct.TYPE_18__* %179)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  br label %191

191:                                              ; preds = %177, %152
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 2
  %198 = load i32*, i32** %197, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* %10, align 4
  %213 = call i32 @filter(%struct.TYPE_17__* %192, i32* %195, i32* %198, i32* %201, i32* %204, i32 %207, i32 %210, i32* %211, i32 %212)
  br label %214

214:                                              ; preds = %191, %137
  br label %215

215:                                              ; preds = %214, %115, %110
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %218 = icmp ne %struct.TYPE_18__* %216, %217
  br i1 %218, label %219, label %256

219:                                              ; preds = %215
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %254

226:                                              ; preds = %219
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 3
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @av_image_copy_plane(i32 %231, i32 %236, i32 %241, i32 %246, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %226, %219
  %255 = call i32 @av_frame_free(%struct.TYPE_18__** %5)
  br label %256

256:                                              ; preds = %254, %215
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %259 = call i32 @ff_filter_frame(%struct.TYPE_19__* %257, %struct.TYPE_18__* %258)
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %256, %173, %81
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

declare dso_local i32* @av_frame_get_qp_table(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @av_reallocp_array(i32**, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_frame_is_writable(%struct.TYPE_18__*) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_18__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @filter(%struct.TYPE_17__*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
