; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_pred.c_ff_vc1_pred_b_mv_intfi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_pred.c_ff_vc1_pred_b_mv_intfi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64, i32**, i32*, i32, i32**, i32*, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i64*, i8****, %struct.TYPE_7__, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8**** }
%struct.TYPE_8__ = type { i64*, i32*** }

@BMV_TYPE_BACKWARD = common dso_local global i64 0, align 8
@BMV_TYPE_DIRECT = common dso_local global i64 0, align 8
@MB_TYPE_INTRA = common dso_local global i64 0, align 8
@BMV_TYPE_INTERPOLATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vc1_pred_b_mv_intfi(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BMV_TYPE_BACKWARD, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 11
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %14, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = add nsw i32 %30, %37
  store i32 %38, i32* %15, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BMV_TYPE_DIRECT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %474

44:                                               ; preds = %6
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %48, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MB_TYPE_INTRA, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %267

59:                                               ; preds = %44
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32***, i32**** %62, align 8
  %64 = getelementptr inbounds i32**, i32*** %63, i64 1
  %65 = load i32**, i32*** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %70, %73
  %75 = getelementptr inbounds i32*, i32** %65, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @scale_mv(i32 %78, i32 %81, i32 0, i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 4
  %88 = load i8****, i8***** %87, align 8
  %89 = getelementptr inbounds i8***, i8**** %88, i64 0
  %90 = load i8***, i8**** %89, align 8
  %91 = getelementptr inbounds i8**, i8*** %90, i64 0
  %92 = load i8**, i8*** %91, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  store i8* %85, i8** %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32***, i32**** %96, align 8
  %98 = getelementptr inbounds i32**, i32*** %97, i64 1
  %99 = load i32**, i32*** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %104, %107
  %109 = getelementptr inbounds i32*, i32** %99, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @scale_mv(i32 %112, i32 %115, i32 0, i32 %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i8****, i8***** %121, align 8
  %123 = getelementptr inbounds i8***, i8**** %122, i64 0
  %124 = load i8***, i8**** %123, align 8
  %125 = getelementptr inbounds i8**, i8*** %124, i64 0
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  store i8* %119, i8** %127, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32***, i32**** %130, align 8
  %132 = getelementptr inbounds i32**, i32*** %131, i64 1
  %133 = load i32**, i32*** %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %138, %141
  %143 = getelementptr inbounds i32*, i32** %133, i64 %142
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @scale_mv(i32 %146, i32 %149, i32 1, i32 %152)
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  %156 = load i8****, i8***** %155, align 8
  %157 = getelementptr inbounds i8***, i8**** %156, i64 1
  %158 = load i8***, i8**** %157, align 8
  %159 = getelementptr inbounds i8**, i8*** %158, i64 0
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  store i8* %153, i8** %161, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32***, i32**** %164, align 8
  %166 = getelementptr inbounds i32**, i32*** %165, i64 1
  %167 = load i32**, i32*** %166, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add i64 %172, %175
  %177 = getelementptr inbounds i32*, i32** %167, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @scale_mv(i32 %180, i32 %183, i32 1, i32 %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 4
  %190 = load i8****, i8***** %189, align 8
  %191 = getelementptr inbounds i8***, i8**** %190, i64 1
  %192 = load i8***, i8**** %191, align 8
  %193 = getelementptr inbounds i8**, i8*** %192, i64 0
  %194 = load i8**, i8*** %193, align 8
  %195 = getelementptr inbounds i8*, i8** %194, i64 1
  store i8* %187, i8** %195, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 0
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %205, %208
  %210 = getelementptr inbounds i32, i32* %200, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = load i32**, i32*** %213, align 8
  %215 = getelementptr inbounds i32*, i32** %214, i64 0
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 3
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %221, %224
  %226 = getelementptr inbounds i32, i32* %216, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %211, %227
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 3
  %231 = load i32**, i32*** %230, align 8
  %232 = getelementptr inbounds i32*, i32** %231, i64 0
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 3
  %236 = load i64*, i64** %235, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 2
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %238, %241
  %243 = getelementptr inbounds i32, i32* %233, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %228, %244
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 3
  %248 = load i32**, i32*** %247, align 8
  %249 = getelementptr inbounds i32*, i32** %248, i64 0
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 3
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 3
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %255, %258
  %260 = getelementptr inbounds i32, i32* %250, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %245, %261
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %16, align 4
  %264 = icmp sgt i32 %263, 2
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i32 1, i32 0
  store i32 %266, i32* %18, align 4
  br label %300

267:                                              ; preds = %44
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 4
  %270 = load i8****, i8***** %269, align 8
  %271 = getelementptr inbounds i8***, i8**** %270, i64 0
  %272 = load i8***, i8**** %271, align 8
  %273 = getelementptr inbounds i8**, i8*** %272, i64 0
  %274 = load i8**, i8*** %273, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 1
  store i8* null, i8** %275, align 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 4
  %278 = load i8****, i8***** %277, align 8
  %279 = getelementptr inbounds i8***, i8**** %278, i64 0
  %280 = load i8***, i8**** %279, align 8
  %281 = getelementptr inbounds i8**, i8*** %280, i64 0
  %282 = load i8**, i8*** %281, align 8
  %283 = getelementptr inbounds i8*, i8** %282, i64 0
  store i8* null, i8** %283, align 8
  %284 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 4
  %286 = load i8****, i8***** %285, align 8
  %287 = getelementptr inbounds i8***, i8**** %286, i64 1
  %288 = load i8***, i8**** %287, align 8
  %289 = getelementptr inbounds i8**, i8*** %288, i64 0
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  store i8* null, i8** %291, align 8
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 4
  %294 = load i8****, i8***** %293, align 8
  %295 = getelementptr inbounds i8***, i8**** %294, i64 1
  %296 = load i8***, i8**** %295, align 8
  %297 = getelementptr inbounds i8**, i8*** %296, i64 0
  %298 = load i8**, i8*** %297, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 0
  store i8* null, i8** %299, align 8
  store i32 0, i32* %18, align 4
  br label %300

300:                                              ; preds = %267, %59
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 5
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* %18, align 4
  %305 = xor i32 %303, %304
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 4
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  store i32 %305, i32* %309, align 4
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 4
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  store i32 %305, i32* %313, align 4
  store i32 0, i32* %17, align 4
  br label %314

314:                                              ; preds = %470, %300
  %315 = load i32, i32* %17, align 4
  %316 = icmp slt i32 %315, 4
  br i1 %316, label %317, label %473

317:                                              ; preds = %314
  %318 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 4
  %320 = load i8****, i8***** %319, align 8
  %321 = getelementptr inbounds i8***, i8**** %320, i64 0
  %322 = load i8***, i8**** %321, align 8
  %323 = getelementptr inbounds i8**, i8*** %322, i64 0
  %324 = load i8**, i8*** %323, align 8
  %325 = getelementptr inbounds i8*, i8** %324, i64 0
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i8****, i8***** %329, align 8
  %331 = getelementptr inbounds i8***, i8**** %330, i64 0
  %332 = load i8***, i8**** %331, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 3
  %335 = load i64*, i64** %334, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %335, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = add i64 %339, %342
  %344 = getelementptr inbounds i8**, i8*** %332, i64 %343
  %345 = load i8**, i8*** %344, align 8
  %346 = getelementptr inbounds i8*, i8** %345, i64 0
  store i8* %326, i8** %346, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 4
  %349 = load i8****, i8***** %348, align 8
  %350 = getelementptr inbounds i8***, i8**** %349, i64 0
  %351 = load i8***, i8**** %350, align 8
  %352 = getelementptr inbounds i8**, i8*** %351, i64 0
  %353 = load i8**, i8*** %352, align 8
  %354 = getelementptr inbounds i8*, i8** %353, i64 1
  %355 = load i8*, i8** %354, align 8
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 0
  %359 = load i8****, i8***** %358, align 8
  %360 = getelementptr inbounds i8***, i8**** %359, i64 0
  %361 = load i8***, i8**** %360, align 8
  %362 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 3
  %364 = load i64*, i64** %363, align 8
  %365 = load i32, i32* %17, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i64, i64* %364, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = add i64 %368, %371
  %373 = getelementptr inbounds i8**, i8*** %361, i64 %372
  %374 = load i8**, i8*** %373, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 1
  store i8* %355, i8** %375, align 8
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 4
  %378 = load i8****, i8***** %377, align 8
  %379 = getelementptr inbounds i8***, i8**** %378, i64 1
  %380 = load i8***, i8**** %379, align 8
  %381 = getelementptr inbounds i8**, i8*** %380, i64 0
  %382 = load i8**, i8*** %381, align 8
  %383 = getelementptr inbounds i8*, i8** %382, i64 0
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 0
  %388 = load i8****, i8***** %387, align 8
  %389 = getelementptr inbounds i8***, i8**** %388, i64 1
  %390 = load i8***, i8**** %389, align 8
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 3
  %393 = load i64*, i64** %392, align 8
  %394 = load i32, i32* %17, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i64, i64* %393, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = add i64 %397, %400
  %402 = getelementptr inbounds i8**, i8*** %390, i64 %401
  %403 = load i8**, i8*** %402, align 8
  %404 = getelementptr inbounds i8*, i8** %403, i64 0
  store i8* %384, i8** %404, align 8
  %405 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 4
  %407 = load i8****, i8***** %406, align 8
  %408 = getelementptr inbounds i8***, i8**** %407, i64 1
  %409 = load i8***, i8**** %408, align 8
  %410 = getelementptr inbounds i8**, i8*** %409, i64 0
  %411 = load i8**, i8*** %410, align 8
  %412 = getelementptr inbounds i8*, i8** %411, i64 1
  %413 = load i8*, i8** %412, align 8
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 0
  %417 = load i8****, i8***** %416, align 8
  %418 = getelementptr inbounds i8***, i8**** %417, i64 1
  %419 = load i8***, i8**** %418, align 8
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 3
  %422 = load i64*, i64** %421, align 8
  %423 = load i32, i32* %17, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64, i64* %422, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %426, %429
  %431 = getelementptr inbounds i8**, i8*** %419, i64 %430
  %432 = load i8**, i8*** %431, align 8
  %433 = getelementptr inbounds i8*, i8** %432, i64 1
  store i8* %413, i8** %433, align 8
  %434 = load i32, i32* %18, align 4
  %435 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 6
  %437 = load i32**, i32*** %436, align 8
  %438 = getelementptr inbounds i32*, i32** %437, i64 0
  %439 = load i32*, i32** %438, align 8
  %440 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 3
  %442 = load i64*, i64** %441, align 8
  %443 = load i32, i32* %17, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i64, i64* %442, i64 %444
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = add i64 %446, %449
  %451 = getelementptr inbounds i32, i32* %439, i64 %450
  store i32 %434, i32* %451, align 4
  %452 = load i32, i32* %18, align 4
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 6
  %455 = load i32**, i32*** %454, align 8
  %456 = getelementptr inbounds i32*, i32** %455, i64 1
  %457 = load i32*, i32** %456, align 8
  %458 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %458, i32 0, i32 3
  %460 = load i64*, i64** %459, align 8
  %461 = load i32, i32* %17, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i64, i64* %460, i64 %462
  %464 = load i64, i64* %463, align 8
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = add i64 %464, %467
  %469 = getelementptr inbounds i32, i32* %457, i64 %468
  store i32 %452, i32* %469, align 4
  br label %470

470:                                              ; preds = %317
  %471 = load i32, i32* %17, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %17, align 4
  br label %314

473:                                              ; preds = %314
  br label %630

474:                                              ; preds = %6
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* @BMV_TYPE_INTERPOLATED, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %525

480:                                              ; preds = %474
  %481 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %482 = load i32*, i32** %9, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 0
  %484 = load i32, i32* %483, align 4
  %485 = load i32*, i32** %10, align 8
  %486 = getelementptr inbounds i32, i32* %485, i64 0
  %487 = load i32, i32* %486, align 4
  %488 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %488, i32 0, i32 9
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %491, i32 0, i32 8
  %493 = load i32, i32* %492, align 8
  %494 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %494, i32 0, i32 7
  %496 = load i32*, i32** %495, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 0
  %498 = load i32, i32* %497, align 4
  %499 = load i32*, i32** %12, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 0
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @ff_vc1_pred_mv(%struct.TYPE_9__* %481, i32 0, i32 %484, i32 %487, i32 1, i32 %490, i32 %493, i32 %498, i32 %501, i32 0)
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %504 = load i32*, i32** %9, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 1
  %506 = load i32, i32* %505, align 4
  %507 = load i32*, i32** %10, align 8
  %508 = getelementptr inbounds i32, i32* %507, i64 1
  %509 = load i32, i32* %508, align 4
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %510, i32 0, i32 9
  %512 = load i32, i32* %511, align 4
  %513 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %513, i32 0, i32 8
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %517 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %516, i32 0, i32 7
  %518 = load i32*, i32** %517, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 0
  %520 = load i32, i32* %519, align 4
  %521 = load i32*, i32** %12, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 1
  %523 = load i32, i32* %522, align 4
  %524 = call i32 @ff_vc1_pred_mv(%struct.TYPE_9__* %503, i32 0, i32 %506, i32 %509, i32 1, i32 %512, i32 %515, i32 %520, i32 %523, i32 1)
  br label %630

525:                                              ; preds = %474
  %526 = load i32, i32* %13, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %579

528:                                              ; preds = %525
  %529 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %530 = load i32, i32* %8, align 4
  %531 = load i32*, i32** %9, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 1
  %533 = load i32, i32* %532, align 4
  %534 = load i32*, i32** %10, align 8
  %535 = getelementptr inbounds i32, i32* %534, i64 1
  %536 = load i32, i32* %535, align 4
  %537 = load i32, i32* %11, align 4
  %538 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %538, i32 0, i32 9
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %541, i32 0, i32 8
  %543 = load i32, i32* %542, align 8
  %544 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %545 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %544, i32 0, i32 7
  %546 = load i32*, i32** %545, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32*, i32** %12, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 1
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @ff_vc1_pred_mv(%struct.TYPE_9__* %529, i32 %530, i32 %533, i32 %536, i32 %537, i32 %540, i32 %543, i32 %548, i32 %551, i32 1)
  %553 = load i32, i32* %8, align 4
  %554 = icmp eq i32 %553, 3
  br i1 %554, label %558, label %555

555:                                              ; preds = %528
  %556 = load i32, i32* %11, align 4
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %578

558:                                              ; preds = %555, %528
  %559 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %560 = load i32*, i32** %9, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 0
  %562 = load i32, i32* %561, align 4
  %563 = load i32*, i32** %10, align 8
  %564 = getelementptr inbounds i32, i32* %563, i64 0
  %565 = load i32, i32* %564, align 4
  %566 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 9
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %569, i32 0, i32 8
  %571 = load i32, i32* %570, align 8
  %572 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %573 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %572, i32 0, i32 7
  %574 = load i32*, i32** %573, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 0
  %576 = load i32, i32* %575, align 4
  %577 = call i32 @ff_vc1_pred_mv(%struct.TYPE_9__* %559, i32 0, i32 %562, i32 %565, i32 1, i32 %568, i32 %571, i32 %576, i32 0, i32 0)
  br label %578

578:                                              ; preds = %558, %555
  br label %630

579:                                              ; preds = %525
  %580 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %581 = load i32, i32* %8, align 4
  %582 = load i32*, i32** %9, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 0
  %584 = load i32, i32* %583, align 4
  %585 = load i32*, i32** %10, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 0
  %587 = load i32, i32* %586, align 4
  %588 = load i32, i32* %11, align 4
  %589 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %589, i32 0, i32 9
  %591 = load i32, i32* %590, align 4
  %592 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 8
  %594 = load i32, i32* %593, align 8
  %595 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %595, i32 0, i32 7
  %597 = load i32*, i32** %596, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 0
  %599 = load i32, i32* %598, align 4
  %600 = load i32*, i32** %12, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 0
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @ff_vc1_pred_mv(%struct.TYPE_9__* %580, i32 %581, i32 %584, i32 %587, i32 %588, i32 %591, i32 %594, i32 %599, i32 %602, i32 0)
  %604 = load i32, i32* %8, align 4
  %605 = icmp eq i32 %604, 3
  br i1 %605, label %609, label %606

606:                                              ; preds = %579
  %607 = load i32, i32* %11, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %629

609:                                              ; preds = %606, %579
  %610 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %611 = load i32*, i32** %9, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 1
  %613 = load i32, i32* %612, align 4
  %614 = load i32*, i32** %10, align 8
  %615 = getelementptr inbounds i32, i32* %614, i64 1
  %616 = load i32, i32* %615, align 4
  %617 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %618 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %617, i32 0, i32 9
  %619 = load i32, i32* %618, align 4
  %620 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %621 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %620, i32 0, i32 8
  %622 = load i32, i32* %621, align 8
  %623 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %624 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %623, i32 0, i32 7
  %625 = load i32*, i32** %624, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 0
  %627 = load i32, i32* %626, align 4
  %628 = call i32 @ff_vc1_pred_mv(%struct.TYPE_9__* %610, i32 0, i32 %613, i32 %616, i32 1, i32 %619, i32 %622, i32 %627, i32 0, i32 1)
  br label %629

629:                                              ; preds = %609, %606
  br label %630

630:                                              ; preds = %473, %480, %629, %578
  ret void
}

declare dso_local i8* @scale_mv(i32, i32, i32, i32) #1

declare dso_local i32 @ff_vc1_pred_mv(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
