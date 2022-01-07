; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_inject_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_minterpolate.c_inject_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i32, i64, i32, i32, i64, i32, %struct.TYPE_18__*, %struct.TYPE_21__*, i64, %struct.TYPE_17__, %struct.TYPE_20__*, i8** }
%struct.TYPE_18__ = type { i32, i64* }
%struct.TYPE_21__ = type { i64**, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32*, i32* }

@NB_FRAMES = common dso_local global i32 0, align 4
@MI_MODE_MCI = common dso_local global i64 0, align 8
@AV_ME_METHOD_EPZS = common dso_local global i64 0, align 8
@ME_MODE_BIDIR = common dso_local global i64 0, align 8
@ME_MODE_BILAT = common dso_local global i64 0, align 8
@MC_MODE_AOBMC = common dso_local global i64 0, align 8
@NB_CLUSTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_22__*)* @inject_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_frame(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %7, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 12
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = call i32 @av_frame_free(%struct.TYPE_22__** %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 12
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i64 0
  %33 = bitcast %struct.TYPE_20__* %8 to i8*
  %34 = bitcast %struct.TYPE_20__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 12
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i64 0
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 12
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 1
  %43 = load i32, i32* @NB_FRAMES, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 16, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memmove(%struct.TYPE_20__* %38, %struct.TYPE_20__* %42, i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 12
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = load i32, i32* @NB_FRAMES, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i64 %54
  %56 = bitcast %struct.TYPE_20__* %55 to i8*
  %57 = bitcast %struct.TYPE_20__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 12
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = load i32, i32* @NB_FRAMES, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MI_MODE_MCI, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %479

72:                                               ; preds = %2
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AV_ME_METHOD_EPZS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %72
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 13
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 13
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 1, %92
  %94 = trunc i64 %93 to i32
  %95 = call i8* @memcpy(i8* %83, i8* %88, i32 %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 13
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 2
  store i8* %95, i8** %99, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 13
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 13
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 1, %113
  %115 = trunc i64 %114 to i32
  %116 = call i8* @memcpy(i8* %104, i8* %109, i32 %115)
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 13
  %119 = load i8**, i8*** %118, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  store i8* %116, i8** %120, align 8
  br label %121

121:                                              ; preds = %78, %72
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ME_MODE_BIDIR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %222

127:                                              ; preds = %121
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 12
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %132, align 8
  %134 = icmp ne %struct.TYPE_22__* %133, null
  br i1 %134, label %135, label %221

135:                                              ; preds = %127
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %217, %135
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %139, label %220

139:                                              ; preds = %136
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 12
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i64 2
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 11
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 12
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i64 2
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 11
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 12
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 3, i32 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 11
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  store i32 0, i32* %10, align 4
  br label %184

184:                                              ; preds = %213, %139
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %216

190:                                              ; preds = %184
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %209, %190
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %191
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 12
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i64 2
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @search_mv(%struct.TYPE_19__* %198, i32 %204, i32 %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %197
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %9, align 4
  br label %191

212:                                              ; preds = %191
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  br label %184

216:                                              ; preds = %184
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %136

220:                                              ; preds = %136
  br label %221

221:                                              ; preds = %220, %127
  br label %478

222:                                              ; preds = %121
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @ME_MODE_BILAT, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %477

228:                                              ; preds = %222
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 12
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %233, align 8
  %235 = icmp ne %struct.TYPE_22__* %234, null
  br i1 %235, label %237, label %236

236:                                              ; preds = %228
  store i32 0, i32* %3, align 4
  br label %480

237:                                              ; preds = %228
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i32 0, i32 12
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i64 0
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 11
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 2
  store i32 %247, i32* %250, align 8
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 12
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i64 1
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 11
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %262, i32 0, i32 1
  store i32 %260, i32* %263, align 4
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 12
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i64 2
  %268 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 11
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 0
  store i32 %273, i32* %276, align 8
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %278 = call i32 @bilateral_me(%struct.TYPE_19__* %277)
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 6
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @MC_MODE_AOBMC, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %356

284:                                              ; preds = %237
  store i32 0, i32* %10, align 4
  br label %285

285:                                              ; preds = %352, %284
  %286 = load i32, i32* %10, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %355

291:                                              ; preds = %285
  store i32 0, i32* %9, align 4
  br label %292

292:                                              ; preds = %348, %291
  %293 = load i32, i32* %9, align 4
  %294 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 4
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %351

298:                                              ; preds = %292
  %299 = load i32, i32* %9, align 4
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = shl i32 %299, %302
  store i32 %303, i32* %15, align 4
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = shl i32 %304, %307
  store i32 %308, i32* %16, align 4
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 9
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %310, align 8
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %10, align 4
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %313, %316
  %318 = add nsw i32 %312, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i64 %319
  store %struct.TYPE_21__* %320, %struct.TYPE_21__** %12, align 8
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 11
  %323 = load i32, i32* %15, align 4
  %324 = load i32, i32* %16, align 4
  %325 = load i32, i32* %15, align 4
  %326 = sext i32 %325 to i64
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 0
  %329 = load i64**, i64*** %328, align 8
  %330 = getelementptr inbounds i64*, i64** %329, i64 0
  %331 = load i64*, i64** %330, align 8
  %332 = getelementptr inbounds i64, i64* %331, i64 0
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %326, %333
  %335 = load i32, i32* %16, align 4
  %336 = sext i32 %335 to i64
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load i64**, i64*** %338, align 8
  %340 = getelementptr inbounds i64*, i64** %339, i64 0
  %341 = load i64*, i64** %340, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 1
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %336, %343
  %345 = call i32 @get_sbad(%struct.TYPE_17__* %322, i32 %323, i32 %324, i64 %334, i64 %344)
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 1
  store i32 %345, i32* %347, align 8
  br label %348

348:                                              ; preds = %298
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %9, align 4
  br label %292

351:                                              ; preds = %292
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %10, align 4
  br label %285

355:                                              ; preds = %285
  br label %356

356:                                              ; preds = %355, %237
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %357, i32 0, i32 10
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %476

361:                                              ; preds = %356
  store i32 0, i32* %13, align 4
  br label %362

362:                                              ; preds = %392, %361
  %363 = load i32, i32* %13, align 4
  %364 = load i32, i32* @NB_CLUSTERS, align 4
  %365 = icmp slt i32 %363, %364
  br i1 %365, label %366, label %395

366:                                              ; preds = %362
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 8
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %368, align 8
  %370 = load i32, i32* %13, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %372, i32 0, i32 1
  %374 = load i64*, i64** %373, align 8
  %375 = getelementptr inbounds i64, i64* %374, i64 0
  store i64 0, i64* %375, align 8
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %376, i32 0, i32 8
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %377, align 8
  %379 = load i32, i32* %13, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 1
  %383 = load i64*, i64** %382, align 8
  %384 = getelementptr inbounds i64, i64* %383, i64 1
  store i64 0, i64* %384, align 8
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %385, i32 0, i32 8
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = load i32, i32* %13, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  store i32 0, i32* %391, align 8
  br label %392

392:                                              ; preds = %366
  %393 = load i32, i32* %13, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %13, align 4
  br label %362

395:                                              ; preds = %362
  store i32 0, i32* %10, align 4
  br label %396

396:                                              ; preds = %458, %395
  %397 = load i32, i32* %10, align 4
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 8
  %401 = icmp slt i32 %397, %400
  br i1 %401, label %402, label %461

402:                                              ; preds = %396
  store i32 0, i32* %9, align 4
  br label %403

403:                                              ; preds = %454, %402
  %404 = load i32, i32* %9, align 4
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 5
  %407 = load i32, i32* %406, align 4
  %408 = icmp slt i32 %404, %407
  br i1 %408, label %409, label %457

409:                                              ; preds = %403
  %410 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %410, i32 0, i32 9
  %412 = load %struct.TYPE_21__*, %struct.TYPE_21__** %411, align 8
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %10, align 4
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = mul nsw i32 %414, %417
  %419 = add nsw i32 %413, %418
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %412, i64 %420
  store %struct.TYPE_21__* %421, %struct.TYPE_21__** %12, align 8
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 0
  %424 = load i64**, i64*** %423, align 8
  %425 = getelementptr inbounds i64*, i64** %424, i64 0
  %426 = load i64*, i64** %425, align 8
  %427 = getelementptr inbounds i64, i64* %426, i64 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %429, i32 0, i32 8
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i64 0
  %433 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %432, i32 0, i32 1
  %434 = load i64*, i64** %433, align 8
  %435 = getelementptr inbounds i64, i64* %434, i64 0
  %436 = load i64, i64* %435, align 8
  %437 = add nsw i64 %436, %428
  store i64 %437, i64* %435, align 8
  %438 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %439 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %438, i32 0, i32 0
  %440 = load i64**, i64*** %439, align 8
  %441 = getelementptr inbounds i64*, i64** %440, i64 0
  %442 = load i64*, i64** %441, align 8
  %443 = getelementptr inbounds i64, i64* %442, i64 1
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i32 0, i32 8
  %447 = load %struct.TYPE_18__*, %struct.TYPE_18__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %447, i64 0
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 1
  %450 = load i64*, i64** %449, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 1
  %452 = load i64, i64* %451, align 8
  %453 = add nsw i64 %452, %444
  store i64 %453, i64* %451, align 8
  br label %454

454:                                              ; preds = %409
  %455 = load i32, i32* %9, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %9, align 4
  br label %403

457:                                              ; preds = %403
  br label %458

458:                                              ; preds = %457
  %459 = load i32, i32* %10, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %10, align 4
  br label %396

461:                                              ; preds = %396
  %462 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %465, i32 0, i32 8
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i64 0
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %468, i32 0, i32 0
  store i32 %464, i32* %469, align 8
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %471 = call i32 @cluster_mvs(%struct.TYPE_19__* %470)
  store i32 %471, i32* %14, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %475

473:                                              ; preds = %461
  %474 = load i32, i32* %14, align 4
  store i32 %474, i32* %3, align 4
  br label %480

475:                                              ; preds = %461
  br label %476

476:                                              ; preds = %475, %356
  br label %477

477:                                              ; preds = %476, %222
  br label %478

478:                                              ; preds = %477, %221
  br label %479

479:                                              ; preds = %478, %2
  store i32 0, i32* %3, align 4
  br label %480

480:                                              ; preds = %479, %473, %236
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32 @av_frame_free(%struct.TYPE_22__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memmove(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i8* @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @search_mv(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32 @bilateral_me(%struct.TYPE_19__*) #1

declare dso_local i32 @get_sbad(%struct.TYPE_17__*, i32, i32, i64, i64) #1

declare dso_local i32 @cluster_mvs(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
