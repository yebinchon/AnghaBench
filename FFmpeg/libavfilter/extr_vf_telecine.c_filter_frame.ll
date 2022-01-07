; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_telecine.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_telecine.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { i64, i32*, i64, i32, i32, i32, i32*, %struct.TYPE_18__, %struct.TYPE_17__**, i32*, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32*, i64* }
%struct.TYPE_19__ = type { i32*, i64* }
%struct.TYPE_21__ = type { i64, i32*, i64* }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %6, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %19, i64 0
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %7, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 48
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %36
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %36
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  store i32 0, i32* %3, align 4
  br label %510

67:                                               ; preds = %62
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %303

72:                                               ; preds = %67
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %75, i64 %77
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = call i32 @av_frame_make_writable(%struct.TYPE_17__* %79)
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %293, %72
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %296

87:                                               ; preds = %81
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 8
  %90 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %90, i64 %92
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 8
  %103 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %103, i64 %105
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %113, %116
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %100, %118
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 8
  %122 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %122, i64 %124
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 2
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 10
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 10
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %151, %154
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %142, %156
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 10
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %166, 2
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 9
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %181, %184
  %186 = add nsw i32 %185, 1
  %187 = sdiv i32 %186, 2
  %188 = call i32 @av_image_copy_plane(i64 %119, i32 %133, i64 %157, i32 %167, i32 %174, i32 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 8
  %191 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %190, align 8
  %192 = load i32, i32* %12, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %191, i64 %193
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 8
  %204 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %204, i64 %206
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = mul nsw i32 %214, %220
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %201, %222
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 8
  %226 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %226, i64 %228
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %236, 2
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 2
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = mul nsw i32 %251, %257
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %244, %259
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = mul nsw i32 %267, 2
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 9
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 6
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = sub nsw i32 %282, %288
  %290 = add nsw i32 %289, 1
  %291 = sdiv i32 %290, 2
  %292 = call i32 @av_image_copy_plane(i64 %223, i32 %237, i64 %260, i32 %268, i32 %275, i32 %291)
  br label %293

293:                                              ; preds = %87
  %294 = load i32, i32* %9, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %9, align 4
  br label %81

296:                                              ; preds = %81
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %12, align 4
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, -1
  store i32 %300, i32* %10, align 4
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 3
  store i32 0, i32* %302, align 8
  br label %303

303:                                              ; preds = %296, %67
  br label %304

304:                                              ; preds = %381, %303
  %305 = load i32, i32* %10, align 4
  %306 = icmp sge i32 %305, 2
  br i1 %306, label %307, label %386

307:                                              ; preds = %304
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 8
  %310 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %310, i64 %312
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %313, align 8
  %315 = call i32 @av_frame_make_writable(%struct.TYPE_17__* %314)
  store i32 0, i32* %9, align 4
  br label %316

316:                                              ; preds = %378, %307
  %317 = load i32, i32* %9, align 4
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = icmp slt i32 %317, %320
  br i1 %321, label %322, label %381

322:                                              ; preds = %316
  %323 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %323, i32 0, i32 8
  %325 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %325, i64 %327
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 1
  %331 = load i64*, i64** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %331, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %336, i32 0, i32 8
  %338 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %337, align 8
  %339 = load i32, i32* %12, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %338, i64 %340
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 2
  %351 = load i64*, i64** %350, align 8
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 9
  %365 = load i32*, i32** %364, align 8
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %370, i32 0, i32 6
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @av_image_copy_plane(i64 %335, i32 %348, i64 %355, i32 %362, i32 %369, i32 %376)
  br label %378

378:                                              ; preds = %322
  %379 = load i32, i32* %9, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %9, align 4
  br label %316

381:                                              ; preds = %316
  %382 = load i32, i32* %12, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %12, align 4
  %384 = load i32, i32* %10, align 4
  %385 = sub nsw i32 %384, 2
  store i32 %385, i32* %10, align 4
  br label %304

386:                                              ; preds = %304
  %387 = load i32, i32* %10, align 4
  %388 = icmp sge i32 %387, 1
  br i1 %388, label %389, label %450

389:                                              ; preds = %386
  store i32 0, i32* %9, align 4
  br label %390

390:                                              ; preds = %444, %389
  %391 = load i32, i32* %9, align 4
  %392 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 4
  %395 = icmp slt i32 %391, %394
  br i1 %395, label %396, label %447

396:                                              ; preds = %390
  %397 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %397, i32 0, i32 10
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %399, i32 0, i32 1
  %401 = load i64*, i64** %400, align 8
  %402 = load i32, i32* %9, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i64, i64* %401, i64 %403
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 10
  %408 = load %struct.TYPE_19__*, %struct.TYPE_19__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %9, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 2
  %417 = load i64*, i64** %416, align 8
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %417, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 1
  %424 = load i32*, i32** %423, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 9
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %9, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %436, i32 0, i32 6
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %9, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @av_image_copy_plane(i64 %405, i32 %414, i64 %421, i32 %428, i32 %435, i32 %442)
  br label %444

444:                                              ; preds = %396
  %445 = load i32, i32* %9, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %9, align 4
  br label %390

447:                                              ; preds = %390
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 3
  store i32 1, i32* %449, align 8
  br label %450

450:                                              ; preds = %447, %386
  store i32 0, i32* %9, align 4
  br label %451

451:                                              ; preds = %504, %450
  %452 = load i32, i32* %9, align 4
  %453 = load i32, i32* %12, align 4
  %454 = icmp slt i32 %452, %453
  br i1 %454, label %455, label %507

455:                                              ; preds = %451
  %456 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %456, i32 0, i32 8
  %458 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %457, align 8
  %459 = load i32, i32* %9, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %458, i64 %460
  %462 = load %struct.TYPE_17__*, %struct.TYPE_17__** %461, align 8
  %463 = call %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_17__* %462)
  store %struct.TYPE_21__* %463, %struct.TYPE_21__** %13, align 8
  %464 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %465 = icmp ne %struct.TYPE_21__* %464, null
  br i1 %465, label %470, label %466

466:                                              ; preds = %455
  %467 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %468 = load i32, i32* @ENOMEM, align 4
  %469 = call i32 @AVERROR(i32 %468)
  store i32 %469, i32* %3, align 4
  br label %510

470:                                              ; preds = %455
  %471 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %472 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %473 = call i32 @av_frame_copy_props(%struct.TYPE_21__* %471, %struct.TYPE_21__* %472)
  %474 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %475 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %478 = icmp eq i64 %476, %477
  br i1 %478, label %479, label %480

479:                                              ; preds = %470
  br label %484

480:                                              ; preds = %470
  %481 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  br label %484

484:                                              ; preds = %480, %479
  %485 = phi i64 [ 0, %479 ], [ %483, %480 ]
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %490 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %489, i32 0, i32 7
  %491 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %494 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 8
  %497 = call i64 @av_rescale(i32 %488, i32 %492, i32 %496)
  %498 = add nsw i64 %485, %497
  %499 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %500 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %499, i32 0, i32 0
  store i64 %498, i64* %500, align 8
  %501 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %502 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %503 = call i32 @ff_filter_frame(%struct.TYPE_22__* %501, %struct.TYPE_21__* %502)
  store i32 %503, i32* %11, align 4
  br label %504

504:                                              ; preds = %484
  %505 = load i32, i32* %9, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %9, align 4
  br label %451

507:                                              ; preds = %451
  %508 = call i32 @av_frame_free(%struct.TYPE_21__** %5)
  %509 = load i32, i32* %11, align 4
  store i32 %509, i32* %3, align 4
  br label %510

510:                                              ; preds = %507, %466, %65
  %511 = load i32, i32* %3, align 4
  ret i32 %511
}

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_17__*) #1

declare dso_local i32 @av_image_copy_plane(i64, i32, i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @av_frame_clone(%struct.TYPE_17__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
