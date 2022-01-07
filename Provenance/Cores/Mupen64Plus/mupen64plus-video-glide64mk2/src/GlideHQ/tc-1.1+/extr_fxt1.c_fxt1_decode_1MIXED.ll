; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_decode_1MIXED.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/mupen64plus-video-glide64mk2/src/GlideHQ/tc-1.1+/extr_fxt1.c_fxt1_decode_1MIXED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@ACOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @fxt1_decode_1MIXED to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxt1_decode_1MIXED(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x [3 x i32]], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %4, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 2
  %23 = ashr i32 %20, %22
  %24 = and i32 %23, 3
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 11
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 6
  %29 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %30 = load i64, i64* @BCOMP, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @CC_SEL(i32* %32, i32 99)
  %34 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %35 = load i64, i64* @GCOMP, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 0, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @CC_SEL(i32* %37, i32 104)
  %39 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %40 = load i64, i64* @RCOMP, align 8
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @CC_SEL(i32* %42, i32 109)
  %44 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %45 = load i64, i64* @BCOMP, align 8
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @CC_SEL(i32* %47, i32 114)
  %49 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %50 = load i64, i64* @GCOMP, align 8
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %49, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @CC_SEL(i32* %52, i32 119)
  %54 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %55 = load i64, i64* @RCOMP, align 8
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %54, i64 0, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @CC_SEL(i32* %57, i32 126)
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @CC_SEL(i32* %59, i32 33)
  store i32 %60, i32* %10, align 4
  br label %103

61:                                               ; preds = %3
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 2
  %67 = ashr i32 %64, %66
  %68 = and i32 %67, 3
  store i32 %68, i32* %5, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @CC_SEL(i32* %69, i32 64)
  %71 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %72 = load i64, i64* @BCOMP, align 8
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %71, i64 0, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @CC_SEL(i32* %74, i32 69)
  %76 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %77 = load i64, i64* @GCOMP, align 8
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %76, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @CC_SEL(i32* %79, i32 74)
  %81 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %82 = load i64, i64* @RCOMP, align 8
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @CC_SEL(i32* %84, i32 79)
  %86 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %87 = load i64, i64* @BCOMP, align 8
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %86, i64 0, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @CC_SEL(i32* %89, i32 84)
  %91 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %92 = load i64, i64* @GCOMP, align 8
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %91, i64 0, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @CC_SEL(i32* %94, i32 89)
  %96 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %97 = load i64, i64* @RCOMP, align 8
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %96, i64 0, i64 %97
  store i32 %95, i32* %98, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @CC_SEL(i32* %99, i32 125)
  store i32 %100, i32* %9, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @CC_SEL(i32* %101, i32 1)
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %61, %15
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @CC_SEL(i32* %104, i32 124)
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %224

108:                                              ; preds = %103
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @ZERO_4UBV(i32* %112)
  br label %223

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %142

117:                                              ; preds = %114
  %118 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %119 = load i64, i64* @BCOMP, align 8
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %118, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @UP5(i32 %121)
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* @BCOMP, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 %122, i32* %125, align 4
  %126 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %127 = load i64, i64* @GCOMP, align 8
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %126, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @UP5(i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i64, i64* @GCOMP, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %135 = load i64, i64* @RCOMP, align 8
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %134, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @UP5(i32 %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load i64, i64* @RCOMP, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32 %138, i32* %141, align 4
  br label %219

142:                                              ; preds = %114
  %143 = load i32, i32* %5, align 4
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %171

145:                                              ; preds = %142
  %146 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %147 = load i64, i64* @BCOMP, align 8
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %146, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @UP5(i32 %149)
  %151 = load i32*, i32** %6, align 8
  %152 = load i64, i64* @BCOMP, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %150, i32* %153, align 4
  %154 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %155 = load i64, i64* @GCOMP, align 8
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %154, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @UP6(i32 %157, i32 %158)
  %160 = load i32*, i32** %6, align 8
  %161 = load i64, i64* @GCOMP, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 %159, i32* %162, align 4
  %163 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %164 = load i64, i64* @RCOMP, align 8
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %163, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @UP5(i32 %166)
  %168 = load i32*, i32** %6, align 8
  %169 = load i64, i64* @RCOMP, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %167, i32* %170, align 4
  br label %218

171:                                              ; preds = %142
  %172 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %173 = load i64, i64* @BCOMP, align 8
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %172, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @UP5(i32 %175)
  %177 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %178 = load i64, i64* @BCOMP, align 8
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %177, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @UP5(i32 %180)
  %182 = add nsw i32 %176, %181
  %183 = sdiv i32 %182, 2
  %184 = load i32*, i32** %6, align 8
  %185 = load i64, i64* @BCOMP, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %183, i32* %186, align 4
  %187 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %188 = load i64, i64* @GCOMP, align 8
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %187, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @UP5(i32 %190)
  %192 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %193 = load i64, i64* @GCOMP, align 8
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %192, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @UP6(i32 %195, i32 %196)
  %198 = add nsw i32 %191, %197
  %199 = sdiv i32 %198, 2
  %200 = load i32*, i32** %6, align 8
  %201 = load i64, i64* @GCOMP, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32 %199, i32* %202, align 4
  %203 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %204 = load i64, i64* @RCOMP, align 8
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %203, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @UP5(i32 %206)
  %208 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %209 = load i64, i64* @RCOMP, align 8
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* %208, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @UP5(i32 %211)
  %213 = add nsw i32 %207, %212
  %214 = sdiv i32 %213, 2
  %215 = load i32*, i32** %6, align 8
  %216 = load i64, i64* @RCOMP, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32 %214, i32* %217, align 4
  br label %218

218:                                              ; preds = %171, %145
  br label %219

219:                                              ; preds = %218, %117
  %220 = load i32*, i32** %6, align 8
  %221 = load i64, i64* @ACOMP, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 255, i32* %222, align 4
  br label %223

223:                                              ; preds = %219, %111
  br label %339

224:                                              ; preds = %103
  %225 = load i32, i32* %5, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %255

227:                                              ; preds = %224
  %228 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %229 = load i64, i64* @BCOMP, align 8
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %228, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @UP5(i32 %231)
  %233 = load i32*, i32** %6, align 8
  %234 = load i64, i64* @BCOMP, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32 %232, i32* %235, align 4
  %236 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %237 = load i64, i64* @GCOMP, align 8
  %238 = getelementptr inbounds [3 x i32], [3 x i32]* %236, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %10, align 4
  %242 = xor i32 %240, %241
  %243 = call i32 @UP6(i32 %239, i32 %242)
  %244 = load i32*, i32** %6, align 8
  %245 = load i64, i64* @GCOMP, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %243, i32* %246, align 4
  %247 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %248 = load i64, i64* @RCOMP, align 8
  %249 = getelementptr inbounds [3 x i32], [3 x i32]* %247, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @UP5(i32 %250)
  %252 = load i32*, i32** %6, align 8
  %253 = load i64, i64* @RCOMP, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32 %251, i32* %254, align 4
  br label %335

255:                                              ; preds = %224
  %256 = load i32, i32* %5, align 4
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %284

258:                                              ; preds = %255
  %259 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %260 = load i64, i64* @BCOMP, align 8
  %261 = getelementptr inbounds [3 x i32], [3 x i32]* %259, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @UP5(i32 %262)
  %264 = load i32*, i32** %6, align 8
  %265 = load i64, i64* @BCOMP, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32 %263, i32* %266, align 4
  %267 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %268 = load i64, i64* @GCOMP, align 8
  %269 = getelementptr inbounds [3 x i32], [3 x i32]* %267, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @UP6(i32 %270, i32 %271)
  %273 = load i32*, i32** %6, align 8
  %274 = load i64, i64* @GCOMP, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %272, i32* %275, align 4
  %276 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %277 = load i64, i64* @RCOMP, align 8
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %276, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @UP5(i32 %279)
  %281 = load i32*, i32** %6, align 8
  %282 = load i64, i64* @RCOMP, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32 %280, i32* %283, align 4
  br label %334

284:                                              ; preds = %255
  %285 = load i32, i32* %5, align 4
  %286 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %287 = load i64, i64* @BCOMP, align 8
  %288 = getelementptr inbounds [3 x i32], [3 x i32]* %286, i64 0, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @UP5(i32 %289)
  %291 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %292 = load i64, i64* @BCOMP, align 8
  %293 = getelementptr inbounds [3 x i32], [3 x i32]* %291, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @UP5(i32 %294)
  %296 = call i32 @LERP(i32 3, i32 %285, i32 %290, i32 %295)
  %297 = load i32*, i32** %6, align 8
  %298 = load i64, i64* @BCOMP, align 8
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* %5, align 4
  %301 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %302 = load i64, i64* @GCOMP, align 8
  %303 = getelementptr inbounds [3 x i32], [3 x i32]* %301, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* %10, align 4
  %307 = xor i32 %305, %306
  %308 = call i32 @UP6(i32 %304, i32 %307)
  %309 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %310 = load i64, i64* @GCOMP, align 8
  %311 = getelementptr inbounds [3 x i32], [3 x i32]* %309, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %9, align 4
  %314 = call i32 @UP6(i32 %312, i32 %313)
  %315 = call i32 @LERP(i32 3, i32 %300, i32 %308, i32 %314)
  %316 = load i32*, i32** %6, align 8
  %317 = load i64, i64* @GCOMP, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32 %315, i32* %318, align 4
  %319 = load i32, i32* %5, align 4
  %320 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 0
  %321 = load i64, i64* @RCOMP, align 8
  %322 = getelementptr inbounds [3 x i32], [3 x i32]* %320, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @UP5(i32 %323)
  %325 = getelementptr inbounds [2 x [3 x i32]], [2 x [3 x i32]]* %8, i64 0, i64 1
  %326 = load i64, i64* @RCOMP, align 8
  %327 = getelementptr inbounds [3 x i32], [3 x i32]* %325, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @UP5(i32 %328)
  %330 = call i32 @LERP(i32 3, i32 %319, i32 %324, i32 %329)
  %331 = load i32*, i32** %6, align 8
  %332 = load i64, i64* @RCOMP, align 8
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32 %330, i32* %333, align 4
  br label %334

334:                                              ; preds = %284, %258
  br label %335

335:                                              ; preds = %334, %227
  %336 = load i32*, i32** %6, align 8
  %337 = load i64, i64* @ACOMP, align 8
  %338 = getelementptr inbounds i32, i32* %336, i64 %337
  store i32 255, i32* %338, align 4
  br label %339

339:                                              ; preds = %335, %223
  ret void
}

declare dso_local i32 @CC_SEL(i32*, i32) #1

declare dso_local i32 @ZERO_4UBV(i32*) #1

declare dso_local i32 @UP5(i32) #1

declare dso_local i32 @UP6(i32, i32) #1

declare dso_local i32 @LERP(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
