; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_FinishUpdate.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_I_FinishUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@I_FinishUpdate.lasttic = internal global i32 0, align 4
@devparm = common dso_local global i64 0, align 8
@screens = common dso_local global i32** null, align 8
@SCREENHEIGHT = common dso_local global i32 0, align 4
@SCREENWIDTH = common dso_local global i32 0, align 4
@multiply = common dso_local global i32 0, align 4
@image = common dso_local global %struct.TYPE_4__* null, align 8
@X_width = common dso_local global i32 0, align 4
@doShm = common dso_local global i64 0, align 8
@X_display = common dso_local global i32 0, align 4
@X_mainWindow = common dso_local global i32 0, align 4
@X_gc = common dso_local global i32 0, align 4
@X_height = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"XShmPutImage() failed\0A\00", align 1
@shmFinished = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @I_FinishUpdate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32*], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32*], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = load i64, i64* @devparm, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %0
  %21 = call i32 (...) @I_GetTime()
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @I_FinishUpdate.lasttic, align 4
  %24 = sub nsw i32 %22, %23
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* @I_FinishUpdate.lasttic, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp sgt i32 %26, 20
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 20, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %20
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %1, align 4
  %33 = mul nsw i32 %32, 2
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load i32**, i32*** @screens, align 8
  %37 = getelementptr inbounds i32*, i32** %36, i64 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @SCREENHEIGHT, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @SCREENWIDTH, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  store i32 255, i32* %46, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %2, align 4
  br label %30

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %52, 40
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32**, i32*** @screens, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @SCREENHEIGHT, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @SCREENWIDTH, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %2, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %2, align 4
  br label %51

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %0
  %71 = load i32, i32* @multiply, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %161

73:                                               ; preds = %70
  %74 = load i32**, i32*** @screens, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %92, %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 2
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @image, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @X_width, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 %90
  store i32* %88, i32** %91, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %77

95:                                               ; preds = %77
  %96 = load i32, i32* @SCREENHEIGHT, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %147, %95
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %160

101:                                              ; preds = %97
  %102 = load i32, i32* @SCREENWIDTH, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %143, %101
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %4, align 8
  %106 = load i32, i32* %104, align 4
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, -16777216
  %109 = load i32, i32* %10, align 4
  %110 = lshr i32 %109, 8
  %111 = and i32 %110, 16776960
  %112 = or i32 %108, %111
  %113 = load i32, i32* %10, align 4
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = or i32 %112, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %10, align 4
  %118 = shl i32 %117, 16
  %119 = and i32 %118, -16777216
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 %120, 8
  %122 = and i32 %121, 16776960
  %123 = or i32 %119, %122
  %124 = load i32, i32* %10, align 4
  %125 = and i32 %124, 255
  %126 = or i32 %123, %125
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %129 = load i32*, i32** %128, align 16
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %128, align 16
  store i32 %127, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %132, align 8
  store i32 %131, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %137 = load i32*, i32** %136, align 16
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %136, align 16
  store i32 %135, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %140, align 8
  store i32 %139, i32* %141, align 4
  br label %143

143:                                              ; preds = %103
  %144 = load i32, i32* %5, align 4
  %145 = sub nsw i32 %144, 4
  store i32 %145, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %103, label %147

147:                                              ; preds = %143
  %148 = load i32, i32* @X_width, align 4
  %149 = sdiv i32 %148, 4
  %150 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 0
  %151 = load i32*, i32** %150, align 16
  %152 = sext i32 %149 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %150, align 16
  %154 = load i32, i32* @X_width, align 4
  %155 = sdiv i32 %154, 4
  %156 = getelementptr inbounds [2 x i32*], [2 x i32*]* %3, i64 0, i64 1
  %157 = load i32*, i32** %156, align 8
  %158 = sext i32 %155 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %156, align 8
  br label %97

160:                                              ; preds = %97
  br label %316

161:                                              ; preds = %70
  %162 = load i32, i32* @multiply, align 4
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %303

164:                                              ; preds = %161
  %165 = load i32**, i32*** @screens, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 0
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %183, %164
  %169 = load i32, i32* %15, align 4
  %170 = icmp slt i32 %169, 3
  br i1 %170, label %171, label %186

171:                                              ; preds = %168
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @image, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @X_width, align 4
  %177 = mul nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 %181
  store i32* %179, i32** %182, align 8
  br label %183

183:                                              ; preds = %171
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %168

186:                                              ; preds = %168
  %187 = load i32, i32* @SCREENHEIGHT, align 4
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %280, %186
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %14, align 4
  %191 = icmp ne i32 %189, 0
  br i1 %191, label %192, label %302

192:                                              ; preds = %188
  %193 = load i32, i32* @SCREENWIDTH, align 4
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %276, %192
  %195 = load i32*, i32** %12, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %12, align 8
  %197 = load i32, i32* %195, align 4
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = and i32 %198, -16777216
  %200 = load i32, i32* %17, align 4
  %201 = lshr i32 %200, 8
  %202 = and i32 %201, 16711680
  %203 = or i32 %199, %202
  %204 = load i32, i32* %17, align 4
  %205 = lshr i32 %204, 16
  %206 = and i32 %205, 65535
  %207 = or i32 %203, %206
  %208 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %17, align 4
  %210 = shl i32 %209, 8
  %211 = and i32 %210, -16777216
  %212 = load i32, i32* %17, align 4
  %213 = and i32 %212, 16776960
  %214 = or i32 %211, %213
  %215 = load i32, i32* %17, align 4
  %216 = lshr i32 %215, 8
  %217 = and i32 %216, 255
  %218 = or i32 %214, %217
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* %17, align 4
  %221 = shl i32 %220, 16
  %222 = and i32 %221, -65536
  %223 = load i32, i32* %17, align 4
  %224 = shl i32 %223, 8
  %225 = and i32 %224, 65280
  %226 = or i32 %222, %225
  %227 = load i32, i32* %17, align 4
  %228 = and i32 %227, 255
  %229 = or i32 %226, %228
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 %229, i32* %230, align 4
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %234 = load i32*, i32** %233, align 16
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %233, align 16
  store i32 %232, i32* %234, align 4
  %236 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i32 1
  store i32* %240, i32** %238, align 8
  store i32 %237, i32* %239, align 4
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %244 = load i32*, i32** %243, align 16
  %245 = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %245, i32** %243, align 16
  store i32 %242, i32* %244, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %249 = load i32*, i32** %248, align 16
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %248, align 16
  store i32 %247, i32* %249, align 4
  %251 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** %253, align 8
  store i32 %252, i32* %254, align 4
  %256 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %259 = load i32*, i32** %258, align 16
  %260 = getelementptr inbounds i32, i32* %259, i32 1
  store i32* %260, i32** %258, align 16
  store i32 %257, i32* %259, align 4
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %264 = load i32*, i32** %263, align 16
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %263, align 16
  store i32 %262, i32* %264, align 4
  %266 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %267 = load i32, i32* %266, align 4
  %268 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i32 1
  store i32* %270, i32** %268, align 8
  store i32 %267, i32* %269, align 4
  %271 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %274 = load i32*, i32** %273, align 16
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %273, align 16
  store i32 %272, i32* %274, align 4
  br label %276

276:                                              ; preds = %194
  %277 = load i32, i32* %13, align 4
  %278 = sub nsw i32 %277, 4
  store i32 %278, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %194, label %280

280:                                              ; preds = %276
  %281 = load i32, i32* @X_width, align 4
  %282 = mul nsw i32 2, %281
  %283 = sdiv i32 %282, 4
  %284 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %285 = load i32*, i32** %284, align 16
  %286 = sext i32 %283 to i64
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  store i32* %287, i32** %284, align 16
  %288 = load i32, i32* @X_width, align 4
  %289 = mul nsw i32 2, %288
  %290 = sdiv i32 %289, 4
  %291 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  %292 = load i32*, i32** %291, align 8
  %293 = sext i32 %290 to i64
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32* %294, i32** %291, align 8
  %295 = load i32, i32* @X_width, align 4
  %296 = mul nsw i32 2, %295
  %297 = sdiv i32 %296, 4
  %298 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %299 = load i32*, i32** %298, align 16
  %300 = sext i32 %297 to i64
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32* %301, i32** %298, align 16
  br label %188

302:                                              ; preds = %188
  br label %315

303:                                              ; preds = %161
  %304 = load i32, i32* @multiply, align 4
  %305 = icmp eq i32 %304, 4
  br i1 %305, label %306, label %314

306:                                              ; preds = %303
  %307 = load i32**, i32*** @screens, align 8
  %308 = getelementptr inbounds i32*, i32** %307, i64 0
  %309 = load i32*, i32** %308, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** @image, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = bitcast i32* %312 to double*
  call void @Expand4(i32* %309, double* %313)
  br label %314

314:                                              ; preds = %306, %303
  br label %315

315:                                              ; preds = %314, %302
  br label %316

316:                                              ; preds = %315, %160
  %317 = load i64, i64* @doShm, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %339

319:                                              ; preds = %316
  %320 = load i32, i32* @X_display, align 4
  %321 = load i32, i32* @X_mainWindow, align 4
  %322 = load i32, i32* @X_gc, align 4
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** @image, align 8
  %324 = load i32, i32* @X_width, align 4
  %325 = load i32, i32* @X_height, align 4
  %326 = load i32, i32* @True, align 4
  %327 = call i32 @XShmPutImage(i32 %320, i32 %321, i32 %322, %struct.TYPE_4__* %323, i32 0, i32 0, i32 0, i32 0, i32 %324, i32 %325, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %319
  %330 = call i32 @I_Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %319
  store i32 0, i32* @shmFinished, align 4
  br label %332

332:                                              ; preds = %334, %331
  %333 = call i32 (...) @I_GetEvent()
  br label %334

334:                                              ; preds = %332
  %335 = load i32, i32* @shmFinished, align 4
  %336 = icmp ne i32 %335, 0
  %337 = xor i1 %336, true
  br i1 %337, label %332, label %338

338:                                              ; preds = %334
  br label %350

339:                                              ; preds = %316
  %340 = load i32, i32* @X_display, align 4
  %341 = load i32, i32* @X_mainWindow, align 4
  %342 = load i32, i32* @X_gc, align 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** @image, align 8
  %344 = load i32, i32* @X_width, align 4
  %345 = load i32, i32* @X_height, align 4
  %346 = call i32 @XPutImage(i32 %340, i32 %341, i32 %342, %struct.TYPE_4__* %343, i32 0, i32 0, i32 0, i32 0, i32 %344, i32 %345)
  %347 = load i32, i32* @X_display, align 4
  %348 = load i32, i32* @False, align 4
  %349 = call i32 @XSync(i32 %347, i32 %348)
  br label %350

350:                                              ; preds = %339, %338
  ret void
}

declare dso_local i32 @I_GetTime(...) #1

declare dso_local void @Expand4(i32*, double*) #1

declare dso_local i32 @XShmPutImage(i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @I_GetEvent(...) #1

declare dso_local i32 @XPutImage(i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XSync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
