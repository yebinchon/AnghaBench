; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_30__*, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__**, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { double, i64, i64, i32, i64, i32 (%struct.TYPE_30__*, i32, i32, i32, i32, float*, float*, i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*)*, %struct.TYPE_28__*, i32, %struct.TYPE_35__, i64, %struct.TYPE_33__, i32 }
%struct.TYPE_35__ = type { double, double, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { double, double }
%struct.TYPE_33__ = type { float, float, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { float, float }
%struct.TYPE_28__ = type { i32*, i32** }
%struct.TYPE_37__ = type { float, float, %struct.TYPE_36__, i32, %struct.TYPE_31__ }
%struct.TYPE_36__ = type { float, float }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_39__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f, %f\0A\00", align 1
@INTERPOLATE_BILINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_28__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_37__, align 4
  %10 = alloca %struct.TYPE_37__, align 4
  %11 = alloca [9 x float], align 16
  %12 = alloca [9 x float], align 16
  %13 = alloca float, align 4
  %14 = alloca [256 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_39__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %26, align 8
  store %struct.TYPE_38__* %27, %struct.TYPE_38__** %6, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %32, i64 0
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %7, align 8
  %35 = bitcast %struct.TYPE_37__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 24, i1 false)
  %36 = bitcast %struct.TYPE_37__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %36, i8 0, i64 24, i1 false)
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 0
  %39 = load double, double* %38, align 8
  %40 = fdiv double 2.000000e+00, %39
  %41 = fptrunc double %40 to float
  store float %41, float* %13, align 4
  store i32 0, i32* %15, align 4
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_39__* @av_pix_fmt_desc_get(i32 %44)
  store %struct.TYPE_39__* %45, %struct.TYPE_39__** %16, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AV_CEIL_RSHIFT(i32 %48, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @AV_CEIL_RSHIFT(i32 %55, i32 %58)
  store i32 %59, i32* %18, align 4
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_28__* @ff_get_video_buffer(%struct.TYPE_29__* %60, i32 %63, i32 %66)
  store %struct.TYPE_28__* %67, %struct.TYPE_28__** %8, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %69 = icmp ne %struct.TYPE_28__* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %2
  %71 = call i32 @av_frame_free(%struct.TYPE_28__** %5)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @AVERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %690

74:                                               ; preds = %2
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %77 = call i32 @av_frame_copy_props(%struct.TYPE_28__* %75, %struct.TYPE_28__* %76)
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 1
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = ptrtoint i32* %82 to i64
  %84 = and i64 %83, 15
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 15
  %91 = sext i32 %90 to i64
  %92 = or i64 %84, %91
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %98 = call i32 @av_pixelutils_get_sad_fn(i32 4, i32 4, i32 %96, %struct.TYPE_38__* %97)
  %99 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %74
  %106 = load i32, i32* @EINVAL, align 4
  %107 = call i32 @AVERROR(i32 %106)
  store i32 %107, i32* %3, align 4
  br label %690

108:                                              ; preds = %74
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %167

128:                                              ; preds = %123, %118, %113, %108
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %130 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %130, i32 0, i32 6
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %131, align 8
  %133 = icmp eq %struct.TYPE_28__* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  br label %148

140:                                              ; preds = %128
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %141, i32 0, i32 6
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  %147 = load i32*, i32** %146, align 8
  br label %148

148:                                              ; preds = %140, %134
  %149 = phi i32* [ %139, %134 ], [ %147, %140 ]
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 1
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @find_motion(%struct.TYPE_38__* %129, i32* %149, i32* %154, i32 %157, i32 %160, i32 %165, %struct.TYPE_37__* %9)
  br label %315

167:                                              ; preds = %123
  %168 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %169, align 8
  %171 = icmp eq %struct.TYPE_28__* %170, null
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 1
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 0
  %177 = load i32*, i32** %176, align 8
  br label %186

178:                                              ; preds = %167
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 6
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 1
  %183 = load i32**, i32*** %182, align 8
  %184 = getelementptr inbounds i32*, i32** %183, i64 0
  %185 = load i32*, i32** %184, align 8
  br label %186

186:                                              ; preds = %178, %172
  %187 = phi i32* [ %177, %172 ], [ %185, %178 ]
  store i32* %187, i32** %21, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 1
  %190 = load i32**, i32*** %189, align 8
  %191 = getelementptr inbounds i32*, i32** %190, i64 0
  %192 = load i32*, i32** %191, align 8
  store i32* %192, i32** %22, align 8
  %193 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i8* @FFMIN(i64 %195, i32 %198)
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %201, i32 0, i32 1
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @FFMIN(i64 %205, i32 %208)
  %210 = ptrtoint i8* %209 to i64
  %211 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %211, i32 0, i32 2
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = trunc i64 %215 to i32
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = add i32 %216, %219
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ugt i32 %220, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %186
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = zext i32 %228 to i64
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %229, %232
  %234 = trunc i64 %233 to i32
  %235 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 3
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %225, %186
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = trunc i64 %244 to i32
  %246 = add i32 %241, %245
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp ugt i32 %246, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %237
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = zext i32 %254 to i64
  %256 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %255, %258
  %260 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %260, i32 0, i32 4
  store i64 %259, i64* %261, align 8
  br label %262

262:                                              ; preds = %251, %237
  %263 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, -16
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %269, %275
  %277 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %276, %279
  %281 = load i32*, i32** %21, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 %280
  store i32* %282, i32** %21, align 8
  %283 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %283, i32 0, i32 2
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = mul nsw i64 %285, %291
  %293 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %292, %295
  %297 = load i32*, i32** %22, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 %296
  store i32* %298, i32** %22, align 8
  %299 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %300 = load i32*, i32** %21, align 8
  %301 = load i32*, i32** %22, align 8
  %302 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %305, i32 0, i32 4
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @find_motion(%struct.TYPE_38__* %299, i32* %300, i32* %301, i32 %304, i32 %308, i32 %313, %struct.TYPE_37__* %9)
  br label %315

315:                                              ; preds = %262, %148
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %316, i32 0, i32 0
  %318 = load float, float* %317, align 4
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %319, i32 0, i32 0
  store float %318, float* %320, align 4
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %322 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %321, i32 0, i32 1
  %323 = load float, float* %322, align 4
  %324 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 1
  store float %323, float* %325, align 4
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %327 = load float, float* %326, align 4
  %328 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 0
  store float %327, float* %328, align 4
  %329 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %330 = load float, float* %329, align 4
  %331 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 1
  store float %330, float* %331, align 4
  %332 = load float, float* %13, align 4
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 0
  %335 = load float, float* %334, align 4
  %336 = fmul float %332, %335
  %337 = fpext float %336 to double
  %338 = load float, float* %13, align 4
  %339 = fpext float %338 to double
  %340 = fsub double 1.000000e+00, %339
  %341 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %341, i32 0, i32 10
  %343 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 0
  %345 = load float, float* %344, align 8
  %346 = fpext float %345 to double
  %347 = fmul double %340, %346
  %348 = fadd double %337, %347
  %349 = fptrunc double %348 to float
  %350 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %350, i32 0, i32 10
  %352 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %352, i32 0, i32 0
  store float %349, float* %353, align 8
  %354 = load float, float* %13, align 4
  %355 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %355, i32 0, i32 1
  %357 = load float, float* %356, align 4
  %358 = fmul float %354, %357
  %359 = fpext float %358 to double
  %360 = load float, float* %13, align 4
  %361 = fpext float %360 to double
  %362 = fsub double 1.000000e+00, %361
  %363 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %363, i32 0, i32 10
  %365 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i32 0, i32 1
  %367 = load float, float* %366, align 4
  %368 = fpext float %367 to double
  %369 = fmul double %362, %368
  %370 = fadd double %359, %369
  %371 = fptrunc double %370 to float
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i32 0, i32 10
  %374 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %374, i32 0, i32 1
  store float %371, float* %375, align 4
  %376 = load float, float* %13, align 4
  %377 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %378 = load float, float* %377, align 4
  %379 = fmul float %376, %378
  %380 = fpext float %379 to double
  %381 = load float, float* %13, align 4
  %382 = fpext float %381 to double
  %383 = fsub double 1.000000e+00, %382
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 10
  %386 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %385, i32 0, i32 0
  %387 = load float, float* %386, align 8
  %388 = fpext float %387 to double
  %389 = fmul double %383, %388
  %390 = fadd double %380, %389
  %391 = fptrunc double %390 to float
  %392 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %392, i32 0, i32 10
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i32 0, i32 0
  store float %391, float* %394, align 8
  %395 = load float, float* %13, align 4
  %396 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %397 = load float, float* %396, align 4
  %398 = fmul float %395, %397
  %399 = fpext float %398 to double
  %400 = load float, float* %13, align 4
  %401 = fpext float %400 to double
  %402 = fsub double 1.000000e+00, %401
  %403 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %403, i32 0, i32 10
  %405 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %404, i32 0, i32 1
  %406 = load float, float* %405, align 4
  %407 = fpext float %406 to double
  %408 = fmul double %402, %407
  %409 = fadd double %399, %408
  %410 = fptrunc double %409 to float
  %411 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %411, i32 0, i32 10
  %413 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %412, i32 0, i32 1
  store float %410, float* %413, align 4
  %414 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %414, i32 0, i32 10
  %416 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %415, i32 0, i32 2
  %417 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %416, i32 0, i32 0
  %418 = load float, float* %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %419, i32 0, i32 0
  %421 = load float, float* %420, align 4
  %422 = fsub float %421, %418
  store float %422, float* %420, align 4
  %423 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %423, i32 0, i32 10
  %425 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %424, i32 0, i32 2
  %426 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %425, i32 0, i32 1
  %427 = load float, float* %426, align 4
  %428 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %428, i32 0, i32 1
  %430 = load float, float* %429, align 4
  %431 = fsub float %430, %427
  store float %431, float* %429, align 4
  %432 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %432, i32 0, i32 10
  %434 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %433, i32 0, i32 0
  %435 = load float, float* %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %437 = load float, float* %436, align 4
  %438 = fsub float %437, %435
  store float %438, float* %436, align 4
  %439 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %439, i32 0, i32 10
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 1
  %442 = load float, float* %441, align 4
  %443 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %444 = load float, float* %443, align 4
  %445 = fsub float %444, %442
  store float %445, float* %443, align 4
  %446 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %447 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %446, i32 0, i32 0
  %448 = load float, float* %447, align 4
  %449 = fmul float %448, -1.000000e+00
  store float %449, float* %447, align 4
  %450 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %450, i32 0, i32 1
  %452 = load float, float* %451, align 4
  %453 = fmul float %452, -1.000000e+00
  store float %453, float* %451, align 4
  %454 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %455 = load float, float* %454, align 4
  %456 = fmul float %455, -1.000000e+00
  store float %456, float* %454, align 4
  %457 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %457, i32 0, i32 9
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %515

461:                                              ; preds = %315
  %462 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %463 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %463, i32 0, i32 0
  %465 = load float, float* %464, align 4
  %466 = fptosi float %465 to i32
  %467 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %467, i32 0, i32 10
  %469 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %469, i32 0, i32 0
  %471 = load float, float* %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %473 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %472, i32 0, i32 0
  %474 = load float, float* %473, align 4
  %475 = fptosi float %474 to i32
  %476 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 2
  %477 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %476, i32 0, i32 1
  %478 = load float, float* %477, align 4
  %479 = fptosi float %478 to i32
  %480 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %481 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %480, i32 0, i32 10
  %482 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %481, i32 0, i32 2
  %483 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %482, i32 0, i32 1
  %484 = load float, float* %483, align 4
  %485 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %486 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %485, i32 0, i32 1
  %487 = load float, float* %486, align 4
  %488 = fptosi float %487 to i32
  %489 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 0
  %490 = load float, float* %489, align 4
  %491 = fptosi float %490 to i32
  %492 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %493 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %492, i32 0, i32 10
  %494 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %493, i32 0, i32 0
  %495 = load float, float* %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %497 = load float, float* %496, align 4
  %498 = fptosi float %497 to i32
  %499 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %10, i32 0, i32 1
  %500 = load float, float* %499, align 4
  %501 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %501, i32 0, i32 10
  %503 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %502, i32 0, i32 1
  %504 = load float, float* %503, align 4
  %505 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %506 = load float, float* %505, align 4
  %507 = call i32 @snprintf(i8* %462, i32 256, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %466, float %471, i32 %475, i32 %479, float %484, i32 %488, i32 %491, float %495, i32 %498, float %500, float %504, float %506)
  %508 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %509 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %510 = call i32 @strlen(i8* %509)
  %511 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %511, i32 0, i32 9
  %513 = load i64, i64* %512, align 8
  %514 = call i32 @fwrite(i8* %508, i32 1, i32 %510, i64 %513)
  br label %515

515:                                              ; preds = %461, %315
  %516 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %517 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %516, i32 0, i32 8
  %518 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %517, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %518, i32 0, i32 0
  %520 = load double, double* %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %521, i32 0, i32 0
  %523 = load float, float* %522, align 4
  %524 = fpext float %523 to double
  %525 = fadd double %524, %520
  %526 = fptrunc double %525 to float
  store float %526, float* %522, align 4
  %527 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %527, i32 0, i32 8
  %529 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %529, i32 0, i32 1
  %531 = load double, double* %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %532, i32 0, i32 1
  %534 = load float, float* %533, align 4
  %535 = fpext float %534 to double
  %536 = fadd double %535, %531
  %537 = fptrunc double %536 to float
  store float %537, float* %533, align 4
  %538 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %539 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %538, i32 0, i32 8
  %540 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %539, i32 0, i32 0
  %541 = load double, double* %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %543 = load float, float* %542, align 4
  %544 = fpext float %543 to double
  %545 = fadd double %544, %541
  %546 = fptrunc double %545 to float
  store float %546, float* %542, align 4
  %547 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %548 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %547, i32 0, i32 8
  %549 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %548, i32 0, i32 1
  %550 = load double, double* %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %552 = load float, float* %551, align 4
  %553 = fpext float %552 to double
  %554 = fadd double %553, %550
  %555 = fptrunc double %554 to float
  store float %555, float* %551, align 4
  %556 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %556, i32 0, i32 0
  %558 = load float, float* %557, align 4
  %559 = fpext float %558 to double
  %560 = fmul double %559, 9.000000e-01
  %561 = fptrunc double %560 to float
  store float %561, float* %557, align 4
  %562 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %563 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %562, i32 0, i32 1
  %564 = load float, float* %563, align 4
  %565 = fpext float %564 to double
  %566 = fmul double %565, 9.000000e-01
  %567 = fptrunc double %566 to float
  store float %567, float* %563, align 4
  %568 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %569 = load float, float* %568, align 4
  %570 = fpext float %569 to double
  %571 = fmul double %570, 9.000000e-01
  %572 = fptrunc double %571 to float
  store float %572, float* %568, align 4
  %573 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %573, i32 0, i32 0
  %575 = load float, float* %574, align 4
  %576 = fpext float %575 to double
  %577 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %578 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %577, i32 0, i32 8
  %579 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %579, i32 0, i32 0
  store double %576, double* %580, align 8
  %581 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %582 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %581, i32 0, i32 1
  %583 = load float, float* %582, align 4
  %584 = fpext float %583 to double
  %585 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %586 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %585, i32 0, i32 8
  %587 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %586, i32 0, i32 2
  %588 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %587, i32 0, i32 1
  store double %584, double* %588, align 8
  %589 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %590 = load float, float* %589, align 4
  %591 = fpext float %590 to double
  %592 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %593 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %592, i32 0, i32 8
  %594 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %593, i32 0, i32 0
  store double %591, double* %594, align 8
  %595 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %596 = load float, float* %595, align 4
  %597 = fpext float %596 to double
  %598 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %599 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %598, i32 0, i32 8
  %600 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %599, i32 0, i32 1
  store double %597, double* %600, align 8
  %601 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %602 = load float, float* %601, align 4
  %603 = fpext float %602 to double
  %604 = fdiv double %603, 1.000000e+02
  %605 = fadd double 1.000000e+00, %604
  %606 = fptrunc double %605 to float
  store float %606, float* %20, align 4
  %607 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %608 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %607, i32 0, i32 0
  %609 = load float, float* %608, align 4
  %610 = fptosi float %609 to i32
  %611 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %612 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %611, i32 0, i32 1
  %613 = load float, float* %612, align 4
  %614 = fptosi float %613 to i32
  %615 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %616 = load float, float* %615, align 4
  %617 = fpext float %616 to double
  %618 = load float, float* %20, align 4
  %619 = load float, float* %20, align 4
  %620 = getelementptr inbounds [9 x float], [9 x float]* %11, i64 0, i64 0
  %621 = call i32 @ff_get_matrix(i32 %610, i32 %614, double %617, float %618, float %619, float* %620)
  %622 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %623 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %622, i32 0, i32 0
  %624 = load float, float* %623, align 4
  %625 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %626 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = load i32, i32* %17, align 4
  %629 = udiv i32 %627, %628
  %630 = uitofp i32 %629 to float
  %631 = fdiv float %624, %630
  %632 = fptosi float %631 to i32
  %633 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 2
  %634 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %633, i32 0, i32 1
  %635 = load float, float* %634, align 4
  %636 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %637 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* %18, align 4
  %640 = udiv i32 %638, %639
  %641 = uitofp i32 %640 to float
  %642 = fdiv float %635, %641
  %643 = fptosi float %642 to i32
  %644 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 0
  %645 = load float, float* %644, align 4
  %646 = fpext float %645 to double
  %647 = load float, float* %20, align 4
  %648 = load float, float* %20, align 4
  %649 = getelementptr inbounds [9 x float], [9 x float]* %12, i64 0, i64 0
  %650 = call i32 @ff_get_matrix(i32 %632, i32 %643, double %646, float %647, float %648, float* %649)
  %651 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %652 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %651, i32 0, i32 5
  %653 = load i32 (%struct.TYPE_30__*, i32, i32, i32, i32, float*, float*, i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*)*, i32 (%struct.TYPE_30__*, i32, i32, i32, i32, float*, float*, i32, i32, %struct.TYPE_28__*, %struct.TYPE_28__*)** %652, align 8
  %654 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %655 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %654, i32 0, i32 2
  %656 = load %struct.TYPE_30__*, %struct.TYPE_30__** %655, align 8
  %657 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  %660 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %661 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* %17, align 4
  %664 = load i32, i32* %18, align 4
  %665 = getelementptr inbounds [9 x float], [9 x float]* %11, i64 0, i64 0
  %666 = getelementptr inbounds [9 x float], [9 x float]* %12, i64 0, i64 0
  %667 = load i32, i32* @INTERPOLATE_BILINEAR, align 4
  %668 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %669 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %668, i32 0, i32 7
  %670 = load i32, i32* %669, align 8
  %671 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %672 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %673 = call i32 %653(%struct.TYPE_30__* %656, i32 %659, i32 %662, i32 %663, i32 %664, float* %665, float* %666, i32 %667, i32 %670, %struct.TYPE_28__* %671, %struct.TYPE_28__* %672)
  store i32 %673, i32* %15, align 4
  %674 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %675 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %674, i32 0, i32 6
  %676 = call i32 @av_frame_free(%struct.TYPE_28__** %675)
  %677 = load i32, i32* %15, align 4
  %678 = icmp slt i32 %677, 0
  br i1 %678, label %679, label %680

679:                                              ; preds = %515
  br label %687

680:                                              ; preds = %515
  %681 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %682 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %683 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %682, i32 0, i32 6
  store %struct.TYPE_28__* %681, %struct.TYPE_28__** %683, align 8
  %684 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %685 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %686 = call i32 @ff_filter_frame(%struct.TYPE_29__* %684, %struct.TYPE_28__* %685)
  store i32 %686, i32* %3, align 4
  br label %690

687:                                              ; preds = %679
  %688 = call i32 @av_frame_free(%struct.TYPE_28__** %8)
  %689 = load i32, i32* %15, align 4
  store i32 %689, i32* %3, align 4
  br label %690

690:                                              ; preds = %687, %680, %105, %70
  %691 = load i32, i32* %3, align 4
  ret i32 %691
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_39__* @av_pix_fmt_desc_get(i32) #2

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #2

declare dso_local %struct.TYPE_28__* @ff_get_video_buffer(%struct.TYPE_29__*, i32, i32) #2

declare dso_local i32 @av_frame_free(%struct.TYPE_28__**) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_28__*, %struct.TYPE_28__*) #2

declare dso_local i32 @av_pixelutils_get_sad_fn(i32, i32, i32, %struct.TYPE_38__*) #2

declare dso_local i32 @find_motion(%struct.TYPE_38__*, i32*, i32*, i32, i32, i32, %struct.TYPE_37__*) #2

declare dso_local i8* @FFMIN(i64, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, float, i32, i32, float, i32, i32, float, i32, float, float, float) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ff_get_matrix(i32, i32, double, float, float, float*) #2

declare dso_local i32 @ff_filter_frame(%struct.TYPE_29__*, %struct.TYPE_28__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
