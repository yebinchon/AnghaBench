; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Database.c_LiStrToKeyBit.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Database.c_LiStrToKeyBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFINITE = common dso_local global i32 0, align 4
@li_keybit_chars = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LiStrToKeyBit(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [36 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %339

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @CopyStr(i8* %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @Trim(i8* %21)
  store i32 0, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @StrLen(i8* %23)
  %25 = icmp ne i32 %24, 41
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @Free(i8* %27)
  store i32 0, i32* %3, align 4
  br label %339

29:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %96, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 36
  br i1 %32, label %33, label %99

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %10, align 1
  %40 = load i32, i32* %7, align 4
  %41 = srem i32 %40, 6
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %59

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 35
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 45
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @Free(i8* %56)
  store i32 0, i32* %3, align 4
  br label %339

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %43, %33
  %60 = load i32, i32* @INFINITE, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %82, %59
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 32
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i8, i8* %10, align 1
  %69 = call i64 @ToUpper(i8 signext %68)
  %70 = load i64*, i64** @li_keybit_chars, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %69, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %79
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @INFINITE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @Free(i8* %93)
  store i32 0, i32* %3, align 4
  br label %339

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %30

99:                                               ; preds = %30
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @Zero(i32* %100, i32 23)
  %102 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = shl i32 %103, 1
  %105 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 4
  %108 = or i32 %104, %107
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 4
  %114 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 1
  %117 = or i32 %113, %116
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 2
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 7
  %123 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 2
  %126 = or i32 %122, %125
  %127 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 4
  %128 = load i32, i32* %127, align 16
  %129 = ashr i32 %128, 3
  %130 = or i32 %126, %129
  %131 = load i32*, i32** %4, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  store i32 %130, i32* %132, align 4
  %133 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 4
  %134 = load i32, i32* %133, align 16
  %135 = shl i32 %134, 5
  %136 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 5
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %135, %137
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 3
  store i32 %138, i32* %140, align 4
  %141 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 6
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 %142, 3
  %144 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 7
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 2
  %147 = or i32 %143, %146
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  store i32 %147, i32* %149, align 4
  %150 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 7
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 6
  %153 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 8
  %154 = load i32, i32* %153, align 16
  %155 = shl i32 %154, 1
  %156 = or i32 %152, %155
  %157 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 9
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 4
  %160 = or i32 %156, %159
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  store i32 %160, i32* %162, align 4
  %163 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 9
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 4
  %166 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 10
  %167 = load i32, i32* %166, align 8
  %168 = ashr i32 %167, 1
  %169 = or i32 %165, %168
  %170 = load i32*, i32** %4, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 6
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 10
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 %173, 7
  %175 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 11
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 %176, 2
  %178 = or i32 %174, %177
  %179 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 12
  %180 = load i32, i32* %179, align 16
  %181 = ashr i32 %180, 3
  %182 = or i32 %178, %181
  %183 = load i32*, i32** %4, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 7
  store i32 %182, i32* %184, align 4
  %185 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 12
  %186 = load i32, i32* %185, align 16
  %187 = shl i32 %186, 5
  %188 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 13
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %187, %189
  %191 = load i32*, i32** %4, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 8
  store i32 %190, i32* %192, align 4
  %193 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 14
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 3
  %196 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 15
  %197 = load i32, i32* %196, align 4
  %198 = ashr i32 %197, 2
  %199 = or i32 %195, %198
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 9
  store i32 %199, i32* %201, align 4
  %202 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 15
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 6
  %205 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 16
  %206 = load i32, i32* %205, align 16
  %207 = shl i32 %206, 1
  %208 = or i32 %204, %207
  %209 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 17
  %210 = load i32, i32* %209, align 4
  %211 = ashr i32 %210, 4
  %212 = or i32 %208, %211
  %213 = load i32*, i32** %4, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 10
  store i32 %212, i32* %214, align 4
  %215 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 17
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 4
  %218 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 18
  %219 = load i32, i32* %218, align 8
  %220 = ashr i32 %219, 1
  %221 = or i32 %217, %220
  %222 = load i32*, i32** %4, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 11
  store i32 %221, i32* %223, align 4
  %224 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 18
  %225 = load i32, i32* %224, align 8
  %226 = shl i32 %225, 7
  %227 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 19
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 2
  %230 = or i32 %226, %229
  %231 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 20
  %232 = load i32, i32* %231, align 16
  %233 = ashr i32 %232, 3
  %234 = or i32 %230, %233
  %235 = load i32*, i32** %4, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 12
  store i32 %234, i32* %236, align 4
  %237 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 20
  %238 = load i32, i32* %237, align 16
  %239 = shl i32 %238, 5
  %240 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 21
  %241 = load i32, i32* %240, align 4
  %242 = or i32 %239, %241
  %243 = load i32*, i32** %4, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 13
  store i32 %242, i32* %244, align 4
  %245 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 22
  %246 = load i32, i32* %245, align 8
  %247 = shl i32 %246, 3
  %248 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 23
  %249 = load i32, i32* %248, align 4
  %250 = ashr i32 %249, 2
  %251 = or i32 %247, %250
  %252 = load i32*, i32** %4, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 14
  store i32 %251, i32* %253, align 4
  %254 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 23
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 %255, 6
  %257 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 24
  %258 = load i32, i32* %257, align 16
  %259 = shl i32 %258, 1
  %260 = or i32 %256, %259
  %261 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 25
  %262 = load i32, i32* %261, align 4
  %263 = ashr i32 %262, 4
  %264 = or i32 %260, %263
  %265 = load i32*, i32** %4, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 15
  store i32 %264, i32* %266, align 4
  %267 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 25
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, 4
  %270 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 26
  %271 = load i32, i32* %270, align 8
  %272 = ashr i32 %271, 1
  %273 = or i32 %269, %272
  %274 = load i32*, i32** %4, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 16
  store i32 %273, i32* %275, align 4
  %276 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 26
  %277 = load i32, i32* %276, align 8
  %278 = shl i32 %277, 7
  %279 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 27
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 %280, 2
  %282 = or i32 %278, %281
  %283 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 28
  %284 = load i32, i32* %283, align 16
  %285 = ashr i32 %284, 3
  %286 = or i32 %282, %285
  %287 = load i32*, i32** %4, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 17
  store i32 %286, i32* %288, align 4
  %289 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 28
  %290 = load i32, i32* %289, align 16
  %291 = shl i32 %290, 5
  %292 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 29
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %291, %293
  %295 = load i32*, i32** %4, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 18
  store i32 %294, i32* %296, align 4
  %297 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 30
  %298 = load i32, i32* %297, align 8
  %299 = shl i32 %298, 3
  %300 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 31
  %301 = load i32, i32* %300, align 4
  %302 = ashr i32 %301, 2
  %303 = or i32 %299, %302
  %304 = load i32*, i32** %4, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 19
  store i32 %303, i32* %305, align 4
  %306 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 31
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 6
  %309 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 32
  %310 = load i32, i32* %309, align 16
  %311 = shl i32 %310, 1
  %312 = or i32 %308, %311
  %313 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 33
  %314 = load i32, i32* %313, align 4
  %315 = ashr i32 %314, 4
  %316 = or i32 %312, %315
  %317 = load i32*, i32** %4, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 20
  store i32 %316, i32* %318, align 4
  %319 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 33
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %320, 4
  %322 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 34
  %323 = load i32, i32* %322, align 8
  %324 = ashr i32 %323, 1
  %325 = or i32 %321, %324
  %326 = load i32*, i32** %4, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 21
  store i32 %325, i32* %327, align 4
  %328 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 34
  %329 = load i32, i32* %328, align 8
  %330 = shl i32 %329, 7
  %331 = getelementptr inbounds [36 x i32], [36 x i32]* %6, i64 0, i64 35
  %332 = load i32, i32* %331, align 4
  %333 = shl i32 %332, 2
  %334 = or i32 %330, %333
  %335 = load i32*, i32** %4, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 22
  store i32 %334, i32* %336, align 4
  %337 = load i8*, i8** %9, align 8
  %338 = call i32 @Free(i8* %337)
  store i32 1, i32* %3, align 4
  br label %339

339:                                              ; preds = %99, %92, %55, %26, %17
  %340 = load i32, i32* %3, align 4
  ret i32 %340
}

declare dso_local i8* @CopyStr(i8*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i64 @ToUpper(i8 signext) #1

declare dso_local i32 @Zero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
