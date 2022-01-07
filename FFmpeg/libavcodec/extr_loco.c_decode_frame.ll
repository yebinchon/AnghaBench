; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_loco.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_loco.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32*, i32* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Input data too small.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ADVANCE_BY_DECODED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %13, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %29 = call i32 @ff_get_buffer(%struct.TYPE_14__* %27, %struct.TYPE_13__* %28, i32 0)
  store i32 %29, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %15, align 4
  store i32 %32, i32* %5, align 4
  br label %666

33:                                               ; preds = %4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %640 [
    i32 134, label %39
    i32 129, label %39
    i32 130, label %39
    i32 133, label %136
    i32 128, label %136
    i32 136, label %235
    i32 132, label %235
    i32 135, label %460
    i32 131, label %460
  ]

39:                                               ; preds = %33, %33, %33
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @loco_decode_plane(%struct.TYPE_11__* %40, i32 %45, i32 %48, i32 %51, i32 %56, i32* %57, i32 %58)
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %39
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %60
  br label %660

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %11, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sdiv i32 %85, 2
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @loco_decode_plane(%struct.TYPE_11__* %77, i32 %82, i32 %86, i32 %89, i32 %94, i32* %95, i32 %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %76
  %99 = load i32, i32* %14, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %98
  br label %660

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %11, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %106
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @loco_decode_plane(%struct.TYPE_11__* %115, i32 %120, i32 %124, i32 %127, i32 %132, i32* %133, i32 %134)
  store i32 %135, i32* %14, align 4
  br label %642

136:                                              ; preds = %33, %33
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @loco_decode_plane(%struct.TYPE_11__* %137, i32 %142, i32 %145, i32 %148, i32 %153, i32* %154, i32 %155)
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %136
  %158 = load i32, i32* %14, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %12, align 4
  %163 = icmp sge i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %160, %157
  br label %660

165:                                              ; preds = %160
  %166 = load i32, i32* %14, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %11, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %165
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sdiv i32 %182, 2
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, 2
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @loco_decode_plane(%struct.TYPE_11__* %174, i32 %179, i32 %183, i32 %187, i32 %192, i32* %193, i32 %194)
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %14, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199, %196
  br label %660

204:                                              ; preds = %199
  %205 = load i32, i32* %14, align 4
  %206 = load i32*, i32** %11, align 8
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  store i32* %208, i32** %11, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %12, align 4
  %211 = sub nsw i32 %210, %209
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %204
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sdiv i32 %221, 2
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %225, 2
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %11, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @loco_decode_plane(%struct.TYPE_11__* %213, i32 %218, i32 %222, i32 %226, i32 %231, i32* %232, i32 %233)
  store i32 %234, i32* %14, align 4
  br label %642

235:                                              ; preds = %33, %33
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 2
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 1
  %251 = mul nsw i32 %246, %250
  %252 = add nsw i32 %241, %251
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 0, %263
  %265 = load i32*, i32** %11, align 8
  %266 = load i32, i32* %12, align 4
  %267 = call i32 @loco_decode_plane(%struct.TYPE_11__* %236, i32 %252, i32 %255, i32 %258, i32 %264, i32* %265, i32 %266)
  store i32 %267, i32* %14, align 4
  br label %268

268:                                              ; preds = %235
  %269 = load i32, i32* %14, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %14, align 4
  %273 = load i32, i32* %12, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %271, %268
  br label %660

276:                                              ; preds = %271
  %277 = load i32, i32* %14, align 4
  %278 = load i32*, i32** %11, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %11, align 8
  %281 = load i32, i32* %14, align 4
  %282 = load i32, i32* %12, align 4
  %283 = sub nsw i32 %282, %281
  store i32 %283, i32* %12, align 4
  br label %284

284:                                              ; preds = %276
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %298, 1
  %300 = mul nsw i32 %295, %299
  %301 = add nsw i32 %290, %300
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 0, %312
  %314 = load i32*, i32** %11, align 8
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @loco_decode_plane(%struct.TYPE_11__* %285, i32 %301, i32 %304, i32 %307, i32 %313, i32* %314, i32 %315)
  store i32 %316, i32* %14, align 4
  br label %317

317:                                              ; preds = %284
  %318 = load i32, i32* %14, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* %12, align 4
  %323 = icmp sge i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %320, %317
  br label %660

325:                                              ; preds = %320
  %326 = load i32, i32* %14, align 4
  %327 = load i32*, i32** %11, align 8
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i32, i32* %327, i64 %328
  store i32* %329, i32** %11, align 8
  %330 = load i32, i32* %14, align 4
  %331 = load i32, i32* %12, align 4
  %332 = sub nsw i32 %331, %330
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %325
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 2
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 2
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %347, 1
  %349 = mul nsw i32 %344, %348
  %350 = add nsw i32 %339, %349
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 2
  %361 = load i32, i32* %360, align 4
  %362 = sub nsw i32 0, %361
  %363 = load i32*, i32** %11, align 8
  %364 = load i32, i32* %12, align 4
  %365 = call i32 @loco_decode_plane(%struct.TYPE_11__* %334, i32 %350, i32 %353, i32 %356, i32 %362, i32* %363, i32 %364)
  store i32 %365, i32* %14, align 4
  %366 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 8
  %369 = and i32 %368, 1
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %459

371:                                              ; preds = %333
  %372 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 0
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 2
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = sub nsw i32 %384, 1
  %386 = mul nsw i32 %381, %385
  %387 = add nsw i32 %376, %386
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 2
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = sub nsw i32 0, %398
  %400 = call i32 @rotate_faulty_loco(i32 %387, i32 %390, i32 %393, i32 %399)
  %401 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 1
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %406, i32 0, i32 2
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 1
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %413, 1
  %415 = mul nsw i32 %410, %414
  %416 = add nsw i32 %405, %415
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 2
  %425 = load i32*, i32** %424, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 1
  %427 = load i32, i32* %426, align 4
  %428 = sub nsw i32 0, %427
  %429 = call i32 @rotate_faulty_loco(i32 %416, i32 %419, i32 %422, i32 %428)
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 2
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 2
  %437 = load i32*, i32** %436, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 2
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = sub nsw i32 %442, 1
  %444 = mul nsw i32 %439, %443
  %445 = add nsw i32 %434, %444
  %446 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %450 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 2
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 2
  %456 = load i32, i32* %455, align 4
  %457 = sub nsw i32 0, %456
  %458 = call i32 @rotate_faulty_loco(i32 %445, i32 %448, i32 %451, i32 %457)
  br label %459

459:                                              ; preds = %371, %333
  br label %642

460:                                              ; preds = %33, %33
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %462 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 1
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 1
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 2
  %469 = load i32*, i32** %468, align 8
  %470 = getelementptr inbounds i32, i32* %469, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %473 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = sub nsw i32 %474, 1
  %476 = mul nsw i32 %471, %475
  %477 = add nsw i32 %466, %476
  %478 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %485 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %484, i32 0, i32 2
  %486 = load i32*, i32** %485, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 1
  %488 = load i32, i32* %487, align 4
  %489 = sub nsw i32 0, %488
  %490 = load i32*, i32** %11, align 8
  %491 = load i32, i32* %12, align 4
  %492 = call i32 @loco_decode_plane(%struct.TYPE_11__* %461, i32 %477, i32 %480, i32 %483, i32 %489, i32* %490, i32 %491)
  store i32 %492, i32* %14, align 4
  br label %493

493:                                              ; preds = %460
  %494 = load i32, i32* %14, align 4
  %495 = icmp slt i32 %494, 0
  br i1 %495, label %500, label %496

496:                                              ; preds = %493
  %497 = load i32, i32* %14, align 4
  %498 = load i32, i32* %12, align 4
  %499 = icmp sge i32 %497, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %496, %493
  br label %660

501:                                              ; preds = %496
  %502 = load i32, i32* %14, align 4
  %503 = load i32*, i32** %11, align 8
  %504 = sext i32 %502 to i64
  %505 = getelementptr inbounds i32, i32* %503, i64 %504
  store i32* %505, i32** %11, align 8
  %506 = load i32, i32* %14, align 4
  %507 = load i32, i32* %12, align 4
  %508 = sub nsw i32 %507, %506
  store i32 %508, i32* %12, align 4
  br label %509

509:                                              ; preds = %501
  %510 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %511 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %512 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %511, i32 0, i32 1
  %513 = load i32*, i32** %512, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 0
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %517 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %516, i32 0, i32 2
  %518 = load i32*, i32** %517, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 0
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %522 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = sub nsw i32 %523, 1
  %525 = mul nsw i32 %520, %524
  %526 = add nsw i32 %515, %525
  %527 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %528 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %531 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %530, i32 0, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %534 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %533, i32 0, i32 2
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 0
  %537 = load i32, i32* %536, align 4
  %538 = sub nsw i32 0, %537
  %539 = load i32*, i32** %11, align 8
  %540 = load i32, i32* %12, align 4
  %541 = call i32 @loco_decode_plane(%struct.TYPE_11__* %510, i32 %526, i32 %529, i32 %532, i32 %538, i32* %539, i32 %540)
  store i32 %541, i32* %14, align 4
  br label %542

542:                                              ; preds = %509
  %543 = load i32, i32* %14, align 4
  %544 = icmp slt i32 %543, 0
  br i1 %544, label %549, label %545

545:                                              ; preds = %542
  %546 = load i32, i32* %14, align 4
  %547 = load i32, i32* %12, align 4
  %548 = icmp sge i32 %546, %547
  br i1 %548, label %549, label %550

549:                                              ; preds = %545, %542
  br label %660

550:                                              ; preds = %545
  %551 = load i32, i32* %14, align 4
  %552 = load i32*, i32** %11, align 8
  %553 = sext i32 %551 to i64
  %554 = getelementptr inbounds i32, i32* %552, i64 %553
  store i32* %554, i32** %11, align 8
  %555 = load i32, i32* %14, align 4
  %556 = load i32, i32* %12, align 4
  %557 = sub nsw i32 %556, %555
  store i32 %557, i32* %12, align 4
  br label %558

558:                                              ; preds = %550
  %559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %560 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 1
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 2
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 2
  %567 = load i32*, i32** %566, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 2
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 4
  %573 = sub nsw i32 %572, 1
  %574 = mul nsw i32 %569, %573
  %575 = add nsw i32 %564, %574
  %576 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 8
  %579 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %580 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %583 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %582, i32 0, i32 2
  %584 = load i32*, i32** %583, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 2
  %586 = load i32, i32* %585, align 4
  %587 = sub nsw i32 0, %586
  %588 = load i32*, i32** %11, align 8
  %589 = load i32, i32* %12, align 4
  %590 = call i32 @loco_decode_plane(%struct.TYPE_11__* %559, i32 %575, i32 %578, i32 %581, i32 %587, i32* %588, i32 %589)
  store i32 %590, i32* %14, align 4
  br label %591

591:                                              ; preds = %558
  %592 = load i32, i32* %14, align 4
  %593 = icmp slt i32 %592, 0
  br i1 %593, label %598, label %594

594:                                              ; preds = %591
  %595 = load i32, i32* %14, align 4
  %596 = load i32, i32* %12, align 4
  %597 = icmp sge i32 %595, %596
  br i1 %597, label %598, label %599

598:                                              ; preds = %594, %591
  br label %660

599:                                              ; preds = %594
  %600 = load i32, i32* %14, align 4
  %601 = load i32*, i32** %11, align 8
  %602 = sext i32 %600 to i64
  %603 = getelementptr inbounds i32, i32* %601, i64 %602
  store i32* %603, i32** %11, align 8
  %604 = load i32, i32* %14, align 4
  %605 = load i32, i32* %12, align 4
  %606 = sub nsw i32 %605, %604
  store i32 %606, i32* %12, align 4
  br label %607

607:                                              ; preds = %599
  %608 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %609 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %610 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %609, i32 0, i32 1
  %611 = load i32*, i32** %610, align 8
  %612 = getelementptr inbounds i32, i32* %611, i64 3
  %613 = load i32, i32* %612, align 4
  %614 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %615 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %614, i32 0, i32 2
  %616 = load i32*, i32** %615, align 8
  %617 = getelementptr inbounds i32, i32* %616, i64 3
  %618 = load i32, i32* %617, align 4
  %619 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %620 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 4
  %622 = sub nsw i32 %621, 1
  %623 = mul nsw i32 %618, %622
  %624 = add nsw i32 %613, %623
  %625 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %626 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %629 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %632 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %631, i32 0, i32 2
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 3
  %635 = load i32, i32* %634, align 4
  %636 = sub nsw i32 0, %635
  %637 = load i32*, i32** %11, align 8
  %638 = load i32, i32* %12, align 4
  %639 = call i32 @loco_decode_plane(%struct.TYPE_11__* %608, i32 %624, i32 %627, i32 %630, i32 %636, i32* %637, i32 %638)
  store i32 %639, i32* %14, align 4
  br label %642

640:                                              ; preds = %33
  %641 = call i32 @av_assert0(i32 0)
  br label %642

642:                                              ; preds = %640, %607, %459, %212, %114
  %643 = load i32, i32* %14, align 4
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %649, label %645

645:                                              ; preds = %642
  %646 = load i32, i32* %14, align 4
  %647 = load i32, i32* %12, align 4
  %648 = icmp sgt i32 %646, %647
  br i1 %648, label %649, label %650

649:                                              ; preds = %645, %642
  br label %660

650:                                              ; preds = %645
  %651 = load i32, i32* %14, align 4
  %652 = load i32, i32* %12, align 4
  %653 = sub nsw i32 %652, %651
  store i32 %653, i32* %12, align 4
  %654 = load i32*, i32** %8, align 8
  store i32 1, i32* %654, align 4
  %655 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %656 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %655, i32 0, i32 0
  %657 = load i32, i32* %656, align 8
  %658 = load i32, i32* %12, align 4
  %659 = sub nsw i32 %657, %658
  store i32 %659, i32* %5, align 4
  br label %666

660:                                              ; preds = %649, %598, %549, %500, %324, %275, %203, %164, %105, %67
  %661 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %662 = load i32, i32* @AV_LOG_ERROR, align 4
  %663 = call i32 @av_log(%struct.TYPE_14__* %661, i32 %662, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %664 = load i32, i32* @EINVAL, align 4
  %665 = call i32 @AVERROR(i32 %664)
  store i32 %665, i32* %5, align 4
  br label %666

666:                                              ; preds = %660, %650, %31
  %667 = load i32, i32* %5, align 4
  ret i32 %667
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @loco_decode_plane(%struct.TYPE_11__*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rotate_faulty_loco(i32, i32, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
