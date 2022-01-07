; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawbox.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_drawbox.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i8*, i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i8**, i32*, i32 }

@Y = common dso_local global i64 0, align 8
@U = common dso_local global i64 0, align 8
@V = common dso_local global i64 0, align 8
@A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8*], align 16
  %12 = alloca double, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %253

28:                                               ; preds = %2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %253

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @FFMAX(i32 %34, i32 0)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %249, %33
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %44, %47
  %49 = icmp slt i32 %43, %48
  br label %50

50:                                               ; preds = %42, %36
  %51 = phi i1 [ false, %36 ], [ %49, %42 ]
  br i1 %51, label %52, label %252

52:                                               ; preds = %50
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %58, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %57, i64 %65
  %67 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  store i8* %66, i8** %67, align 16
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 3
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %72, i64 %80
  %82 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 3
  store i8* %81, i8** %82, align 8
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %112, %52
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 3
  br i1 %85, label %86, label %115

86:                                               ; preds = %83
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %101, %104
  %106 = mul nsw i32 %100, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %93, i64 %107
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %110
  store i8* %108, i8** %111, align 8
  br label %112

112:                                              ; preds = %86
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %6, align 4
  br label %83

115:                                              ; preds = %83
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %165

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @FFMAX(i32 %121, i32 0)
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %161, %120
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %125, %128
  %130 = icmp slt i32 %124, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br label %137

137:                                              ; preds = %131, %123
  %138 = phi i1 [ false, %123 ], [ %136, %131 ]
  br i1 %138, label %139, label %164

139:                                              ; preds = %137
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i64 @pixel_belongs_to_box(%struct.TYPE_10__* %140, i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %147 = load i8*, i8** %146, align 16
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = sub nsw i32 255, %152
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %156 = load i8*, i8** %155, align 16
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 %154, i8* %159, align 1
  br label %160

160:                                              ; preds = %145, %139
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %123

164:                                              ; preds = %137
  br label %248

165:                                              ; preds = %115
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @FFMAX(i32 %166, i32 0)
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %244, %165
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %170, %173
  %175 = icmp slt i32 %169, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %168
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br label %182

182:                                              ; preds = %176, %168
  %183 = phi i1 [ false, %168 ], [ %181, %176 ]
  br i1 %183, label %184, label %247

184:                                              ; preds = %182
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i64 @pixel_belongs_to_box(%struct.TYPE_10__* %185, i32 %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %243

190:                                              ; preds = %184
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 5
  %193 = load i8*, i8** %192, align 8
  %194 = load i64, i64* @Y, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %198 = load i8*, i8** %197, align 16
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8 %196, i8* %201, align 1
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 5
  %204 = load i8*, i8** %203, align 8
  %205 = load i64, i64* @U, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = ashr i32 %210, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %209, i64 %215
  store i8 %207, i8* %216, align 1
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 5
  %219 = load i8*, i8** %218, align 8
  %220 = load i64, i64* @V, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %224 = load i8*, i8** %223, align 16
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = ashr i32 %225, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %224, i64 %230
  store i8 %222, i8* %231, align 1
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 5
  %234 = load i8*, i8** %233, align 8
  %235 = load i64, i64* @A, align 8
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 3
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %239, i64 %241
  store i8 %237, i8* %242, align 1
  br label %243

243:                                              ; preds = %190, %184
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %168

247:                                              ; preds = %182
  br label %248

248:                                              ; preds = %247, %164
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %8, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %8, align 4
  br label %36

252:                                              ; preds = %50
  br label %514

253:                                              ; preds = %28, %2
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @FFMAX(i32 %254, i32 0)
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %510, %253
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %256
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %264, %267
  %269 = icmp slt i32 %263, %268
  br label %270

270:                                              ; preds = %262, %256
  %271 = phi i1 [ false, %256 ], [ %269, %262 ]
  br i1 %271, label %272, label %513

272:                                              ; preds = %270
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  %277 = load i8*, i8** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = mul nsw i32 %278, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %277, i64 %285
  %287 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  store i8* %286, i8** %287, align 16
  store i32 1, i32* %6, align 4
  br label %288

288:                                              ; preds = %317, %272
  %289 = load i32, i32* %6, align 4
  %290 = icmp slt i32 %289, 3
  br i1 %290, label %291, label %320

291:                                              ; preds = %288
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 1
  %294 = load i8**, i8*** %293, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8*, i8** %294, i64 %296
  %298 = load i8*, i8** %297, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %8, align 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = ashr i32 %306, %309
  %311 = mul nsw i32 %305, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8, i8* %298, i64 %312
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 %315
  store i8* %313, i8** %316, align 8
  br label %317

317:                                              ; preds = %291
  %318 = load i32, i32* %6, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %6, align 4
  br label %288

320:                                              ; preds = %288
  %321 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 7
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %370

325:                                              ; preds = %320
  %326 = load i32, i32* %9, align 4
  %327 = call i32 @FFMAX(i32 %326, i32 0)
  store i32 %327, i32* %7, align 4
  br label %328

328:                                              ; preds = %366, %325
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* %9, align 4
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %330, %333
  %335 = icmp slt i32 %329, %334
  br i1 %335, label %336, label %342

336:                                              ; preds = %328
  %337 = load i32, i32* %7, align 4
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = icmp slt i32 %337, %340
  br label %342

342:                                              ; preds = %336, %328
  %343 = phi i1 [ false, %328 ], [ %341, %336 ]
  br i1 %343, label %344, label %369

344:                                              ; preds = %342
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* %8, align 4
  %348 = call i64 @pixel_belongs_to_box(%struct.TYPE_10__* %345, i32 %346, i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %365

350:                                              ; preds = %344
  %351 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %352 = load i8*, i8** %351, align 16
  %353 = load i32, i32* %7, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, i8* %352, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = sub nsw i32 255, %357
  %359 = trunc i32 %358 to i8
  %360 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %361 = load i8*, i8** %360, align 16
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  store i8 %359, i8* %364, align 1
  br label %365

365:                                              ; preds = %350, %344
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %7, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %7, align 4
  br label %328

369:                                              ; preds = %342
  br label %509

370:                                              ; preds = %320
  %371 = load i32, i32* %9, align 4
  %372 = call i32 @FFMAX(i32 %371, i32 0)
  store i32 %372, i32* %7, align 4
  br label %373

373:                                              ; preds = %505, %370
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* %9, align 4
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 8
  %379 = add nsw i32 %375, %378
  %380 = icmp slt i32 %374, %379
  br i1 %380, label %381, label %387

381:                                              ; preds = %373
  %382 = load i32, i32* %7, align 4
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = icmp slt i32 %382, %385
  br label %387

387:                                              ; preds = %381, %373
  %388 = phi i1 [ false, %373 ], [ %386, %381 ]
  br i1 %388, label %389, label %508

389:                                              ; preds = %387
  %390 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %390, i32 0, i32 5
  %392 = load i8*, i8** %391, align 8
  %393 = load i64, i64* @A, align 8
  %394 = getelementptr inbounds i8, i8* %392, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = uitofp i8 %395 to double
  %397 = fdiv double %396, 2.550000e+02
  store double %397, double* %12, align 8
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %399 = load i32, i32* %7, align 4
  %400 = load i32, i32* %8, align 4
  %401 = call i64 @pixel_belongs_to_box(%struct.TYPE_10__* %398, i32 %399, i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %504

403:                                              ; preds = %389
  %404 = load double, double* %12, align 8
  %405 = fsub double 1.000000e+00, %404
  %406 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %407 = load i8*, i8** %406, align 16
  %408 = load i32, i32* %7, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8, i8* %407, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = sitofp i32 %412 to double
  %414 = fmul double %405, %413
  %415 = load double, double* %12, align 8
  %416 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %416, i32 0, i32 5
  %418 = load i8*, i8** %417, align 8
  %419 = load i64, i64* @Y, align 8
  %420 = getelementptr inbounds i8, i8* %418, i64 %419
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = sitofp i32 %422 to double
  %424 = fmul double %415, %423
  %425 = fadd double %414, %424
  %426 = fptoui double %425 to i8
  %427 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 0
  %428 = load i8*, i8** %427, align 16
  %429 = load i32, i32* %7, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i8, i8* %428, i64 %430
  store i8 %426, i8* %431, align 1
  %432 = load double, double* %12, align 8
  %433 = fsub double 1.000000e+00, %432
  %434 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %435 = load i8*, i8** %434, align 8
  %436 = load i32, i32* %7, align 4
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 6
  %439 = load i32, i32* %438, align 8
  %440 = ashr i32 %436, %439
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %435, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i32
  %445 = sitofp i32 %444 to double
  %446 = fmul double %433, %445
  %447 = load double, double* %12, align 8
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i32 0, i32 5
  %450 = load i8*, i8** %449, align 8
  %451 = load i64, i64* @U, align 8
  %452 = getelementptr inbounds i8, i8* %450, i64 %451
  %453 = load i8, i8* %452, align 1
  %454 = zext i8 %453 to i32
  %455 = sitofp i32 %454 to double
  %456 = fmul double %447, %455
  %457 = fadd double %446, %456
  %458 = fptoui double %457 to i8
  %459 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 1
  %460 = load i8*, i8** %459, align 8
  %461 = load i32, i32* %7, align 4
  %462 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %462, i32 0, i32 6
  %464 = load i32, i32* %463, align 8
  %465 = ashr i32 %461, %464
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, i8* %460, i64 %466
  store i8 %458, i8* %467, align 1
  %468 = load double, double* %12, align 8
  %469 = fsub double 1.000000e+00, %468
  %470 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %471 = load i8*, i8** %470, align 16
  %472 = load i32, i32* %7, align 4
  %473 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = ashr i32 %472, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %471, i64 %477
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i32
  %481 = sitofp i32 %480 to double
  %482 = fmul double %469, %481
  %483 = load double, double* %12, align 8
  %484 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 5
  %486 = load i8*, i8** %485, align 8
  %487 = load i64, i64* @V, align 8
  %488 = getelementptr inbounds i8, i8* %486, i64 %487
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = sitofp i32 %490 to double
  %492 = fmul double %483, %491
  %493 = fadd double %482, %492
  %494 = fptoui double %493 to i8
  %495 = getelementptr inbounds [4 x i8*], [4 x i8*]* %11, i64 0, i64 2
  %496 = load i8*, i8** %495, align 16
  %497 = load i32, i32* %7, align 4
  %498 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %498, i32 0, i32 6
  %500 = load i32, i32* %499, align 8
  %501 = ashr i32 %497, %500
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %496, i64 %502
  store i8 %494, i8* %503, align 1
  br label %504

504:                                              ; preds = %403, %389
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %7, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %7, align 4
  br label %373

508:                                              ; preds = %387
  br label %509

509:                                              ; preds = %508, %369
  br label %510

510:                                              ; preds = %509
  %511 = load i32, i32* %8, align 4
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %8, align 4
  br label %256

513:                                              ; preds = %270
  br label %514

514:                                              ; preds = %513, %252
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 0
  %517 = load %struct.TYPE_9__*, %struct.TYPE_9__** %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %517, i32 0, i32 0
  %519 = load i32*, i32** %518, align 8
  %520 = getelementptr inbounds i32, i32* %519, i64 0
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %523 = call i32 @ff_filter_frame(i32 %521, %struct.TYPE_11__* %522)
  ret i32 %523
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @pixel_belongs_to_box(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
