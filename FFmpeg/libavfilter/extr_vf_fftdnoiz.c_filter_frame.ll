; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fftdnoiz.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__**, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i32, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32*, i32, i32 }
%struct.TYPE_24__ = type { i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@NEXT = common dso_local global i64 0, align 8
@PREV = common dso_local global i64 0, align 8
@CURRENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %6, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %7, align 8
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %21, i64 0
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %8, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %82

28:                                               ; preds = %2
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %82

33:                                               ; preds = %28
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 5
  %36 = call i32 @av_frame_free(%struct.TYPE_24__** %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %38, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 5
  store %struct.TYPE_24__* %39, %struct.TYPE_24__** %41, align 8
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %43, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 4
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 6
  store %struct.TYPE_24__* %47, %struct.TYPE_24__** %49, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = icmp ne %struct.TYPE_24__* %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %33
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = icmp ne %struct.TYPE_24__* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = call i8* @av_frame_clone(%struct.TYPE_24__* %62)
  %64 = bitcast i8* %63 to %struct.TYPE_24__*
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 5
  store %struct.TYPE_24__* %64, %struct.TYPE_24__** %66, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = icmp ne %struct.TYPE_24__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %474

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %54, %33
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %77, align 8
  %79 = icmp ne %struct.TYPE_24__* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %474

81:                                               ; preds = %75
  br label %149

82:                                               ; preds = %28, %2
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 4
  %90 = call i32 @av_frame_free(%struct.TYPE_24__** %89)
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 4
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %95, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 6
  store %struct.TYPE_24__* %96, %struct.TYPE_24__** %98, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = icmp ne %struct.TYPE_24__* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %474

104:                                              ; preds = %87
  br label %148

105:                                              ; preds = %82
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %105
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 5
  %113 = call i32 @av_frame_free(%struct.TYPE_24__** %112)
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 5
  store %struct.TYPE_24__* %116, %struct.TYPE_24__** %118, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 4
  store %struct.TYPE_24__* %119, %struct.TYPE_24__** %121, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 5
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %123, align 8
  %125 = icmp ne %struct.TYPE_24__* %124, null
  br i1 %125, label %134, label %126

126:                                              ; preds = %110
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  %130 = call i8* @av_frame_clone(%struct.TYPE_24__* %129)
  %131 = bitcast i8* %130 to %struct.TYPE_24__*
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 5
  store %struct.TYPE_24__* %131, %struct.TYPE_24__** %133, align 8
  br label %134

134:                                              ; preds = %126, %110
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  %138 = icmp ne %struct.TYPE_24__* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = call i32 @AVERROR(i32 %140)
  store i32 %141, i32* %3, align 4
  br label %474

142:                                              ; preds = %134
  br label %147

143:                                              ; preds = %105
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 4
  store %struct.TYPE_24__* %144, %struct.TYPE_24__** %146, align 8
  br label %147

147:                                              ; preds = %143, %142
  br label %148

148:                                              ; preds = %147, %104
  br label %149

149:                                              ; preds = %148, %81
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %151 = call i64 @av_frame_is_writable(%struct.TYPE_24__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  store i32 1, i32* %9, align 4
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %164, %struct.TYPE_24__** %11, align 8
  br label %185

165:                                              ; preds = %158, %153, %149
  store i32 0, i32* %9, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__* %166, i32 %169, i32 %172)
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %11, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %175 = icmp ne %struct.TYPE_24__* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = call i32 @AVERROR(i32 %177)
  store i32 %178, i32* %3, align 4
  br label %474

179:                                              ; preds = %165
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = call i32 @av_frame_copy_props(%struct.TYPE_24__* %180, %struct.TYPE_24__* %183)
  br label %185

185:                                              ; preds = %179, %163
  store i32 0, i32* %10, align 4
  br label %186

186:                                              ; preds = %446, %185
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %449

192:                                              ; preds = %186
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i64 %197
  store %struct.TYPE_22__* %198, %struct.TYPE_22__** %12, align 8
  %199 = load i32, i32* %10, align 4
  %200 = shl i32 1, %199
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %200, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %192
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %255

211:                                              ; preds = %206, %192
  %212 = load i32, i32* %9, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %254, label %214

214:                                              ; preds = %211
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @av_image_copy_plane(i32 %221, i32 %228, i32 %237, i32 %246, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %214, %211
  br label %446

255:                                              ; preds = %206
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 6
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  %259 = icmp ne %struct.TYPE_24__* %258, null
  br i1 %259, label %260, label %291

260:                                              ; preds = %255
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 6
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @NEXT, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %10, align 4
  %290 = call i32 @import_plane(%struct.TYPE_23__* %261, i32 %270, i32 %279, i32 %285, i32 %288, i32 %289)
  br label %291

291:                                              ; preds = %260, %255
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 5
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %293, align 8
  %295 = icmp ne %struct.TYPE_24__* %294, null
  br i1 %295, label %296, label %327

296:                                              ; preds = %291
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %10, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 5
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %10, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @PREV, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %10, align 4
  %326 = call i32 @import_plane(%struct.TYPE_23__* %297, i32 %306, i32 %315, i32 %321, i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %296, %291
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 1
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 4
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* @CURRENT, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = call i32 @import_plane(%struct.TYPE_23__* %328, i32 %337, i32 %346, i32 %352, i32 %355, i32 %356)
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 6
  %360 = load %struct.TYPE_24__*, %struct.TYPE_24__** %359, align 8
  %361 = icmp ne %struct.TYPE_24__* %360, null
  br i1 %361, label %362, label %383

362:                                              ; preds = %327
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 5
  %365 = load %struct.TYPE_24__*, %struct.TYPE_24__** %364, align 8
  %366 = icmp ne %struct.TYPE_24__* %365, null
  br i1 %366, label %367, label %383

367:                                              ; preds = %362
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %369 = load i32, i32* %10, align 4
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = load i64, i64* @PREV, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = load i64, i64* @NEXT, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @filter_plane3d2(%struct.TYPE_23__* %368, i32 %369, i32 %375, i32 %381)
  br label %419

383:                                              ; preds = %362, %327
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 6
  %386 = load %struct.TYPE_24__*, %struct.TYPE_24__** %385, align 8
  %387 = icmp ne %struct.TYPE_24__* %386, null
  br i1 %387, label %388, label %398

388:                                              ; preds = %383
  %389 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %390 = load i32, i32* %10, align 4
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 1
  %393 = load i32*, i32** %392, align 8
  %394 = load i64, i64* @NEXT, align 8
  %395 = getelementptr inbounds i32, i32* %393, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @filter_plane3d1(%struct.TYPE_23__* %389, i32 %390, i32 %396)
  br label %418

398:                                              ; preds = %383
  %399 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %399, i32 0, i32 5
  %401 = load %struct.TYPE_24__*, %struct.TYPE_24__** %400, align 8
  %402 = icmp ne %struct.TYPE_24__* %401, null
  br i1 %402, label %403, label %413

403:                                              ; preds = %398
  %404 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %405 = load i32, i32* %10, align 4
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 1
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* @PREV, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @filter_plane3d1(%struct.TYPE_23__* %404, i32 %405, i32 %411)
  br label %417

413:                                              ; preds = %398
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %415 = load i32, i32* %10, align 4
  %416 = call i32 @filter_plane2d(%struct.TYPE_23__* %414, i32 %415)
  br label %417

417:                                              ; preds = %413, %403
  br label %418

418:                                              ; preds = %417, %388
  br label %419

419:                                              ; preds = %418, %367
  %420 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %421 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %421, i32 0, i32 1
  %423 = load i32*, i32** %422, align 8
  %424 = load i32, i32* %10, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32, i32* %423, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 0
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %10, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %436 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %435, i32 0, i32 1
  %437 = load i32*, i32** %436, align 8
  %438 = load i64, i64* @CURRENT, align 8
  %439 = getelementptr inbounds i32, i32* %437, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = call i32 @export_plane(%struct.TYPE_23__* %420, i32 %427, i32 %434, i32 %440, i32 %443, i32 %444)
  br label %446

446:                                              ; preds = %419, %254
  %447 = load i32, i32* %10, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %10, align 4
  br label %186

449:                                              ; preds = %186
  %450 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = icmp eq i64 %452, 0
  br i1 %453, label %454, label %470

454:                                              ; preds = %449
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %459, label %470

459:                                              ; preds = %454
  %460 = load i32, i32* %9, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %464 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %463, i32 0, i32 4
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %464, align 8
  br label %469

465:                                              ; preds = %459
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 4
  %468 = call i32 @av_frame_free(%struct.TYPE_24__** %467)
  br label %469

469:                                              ; preds = %465, %462
  br label %470

470:                                              ; preds = %469, %454, %449
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %472 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %473 = call i32 @ff_filter_frame(%struct.TYPE_25__* %471, %struct.TYPE_24__* %472)
  store i32 %473, i32* %3, align 4
  br label %474

474:                                              ; preds = %470, %176, %139, %103, %80, %71
  %475 = load i32, i32* %3, align 4
  ret i32 %475
}

declare dso_local i32 @av_frame_free(%struct.TYPE_24__**) #1

declare dso_local i8* @av_frame_clone(%struct.TYPE_24__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @ff_get_video_buffer(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @import_plane(%struct.TYPE_23__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @filter_plane3d2(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @filter_plane3d1(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @filter_plane2d(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @export_plane(%struct.TYPE_23__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
