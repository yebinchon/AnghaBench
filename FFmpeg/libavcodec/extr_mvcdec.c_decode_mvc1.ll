; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mvcdec.c_decode_mvc1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mvcdec.c_decode_mvc1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"buffer overflow\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32)* @decode_mvc1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_mvc1(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %20

20:                                               ; preds = %354, %6
  %21 = load i32, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %357

24:                                               ; preds = %20
  store i32 0, i32* %17, align 4
  br label %25

25:                                               ; preds = %350, %24
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %353

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @bytestream2_get_bytes_left(i32* %30)
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %358

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @bytestream2_get_be16u(i32* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @bytestream2_get_be16u(i32* %37)
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @bytestream2_get_be16u(i32* %40)
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = and i32 %44, 32768
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %34
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @bytestream2_get_bytes_left(i32* %48)
  %50 = icmp slt i32 %49, 12
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @AV_LOG_WARNING, align 4
  %54 = call i32 @av_log(i32* %52, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %55, i32* %7, align 4
  br label %358

56:                                               ; preds = %47
  store i32 2, i32* %19, align 4
  br label %57

57:                                               ; preds = %66, %56
  %58 = load i32, i32* %19, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @bytestream2_get_be16u(i32* %61)
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %19, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %19, align 4
  br label %57

69:                                               ; preds = %57
  br label %81

70:                                               ; preds = %34
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 6
  store i32 %72, i32* %73, align 8
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  store i32 %72, i32* %74, align 16
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 2
  store i32 %72, i32* %75, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 7
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 5
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %70, %69
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 0
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  %89 = load i32, i32* %17, align 4
  %90 = mul nsw i32 %89, 2
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32* %92, i32** %14, align 8
  %93 = load i32, i32* %16, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 0, i32 1
  store i32 %97, i32* %19, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 32767
  %104 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %98, i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32* %106, i32** %14, align 8
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, 2
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  store i32 %111, i32* %19, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 32767
  %118 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %112, i32 %117)
  %119 = load i32*, i32** %14, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  store i32* %120, i32** %14, align 8
  %121 = load i32, i32* %16, align 4
  %122 = and i32 %121, 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 2, i32 3
  store i32 %125, i32* %19, align 4
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 32767
  %132 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %126, i32 %131)
  %133 = load i32*, i32** %14, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32* %134, i32** %14, align 8
  %135 = load i32, i32* %16, align 4
  %136 = and i32 %135, 8
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 2, i32 3
  store i32 %139, i32* %19, align 4
  %140 = load i32*, i32** %14, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 32767
  %146 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %140, i32 %145)
  %147 = load i32*, i32** %14, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  store i32* %148, i32** %14, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  %156 = load i32, i32* %17, align 4
  %157 = mul nsw i32 %156, 2
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32* %159, i32** %14, align 8
  %160 = load i32, i32* %16, align 4
  %161 = and i32 %160, 16
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 0, i32 1
  store i32 %164, i32* %19, align 4
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 32767
  %171 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %165, i32 %170)
  %172 = load i32*, i32** %14, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  store i32* %173, i32** %14, align 8
  %174 = load i32, i32* %16, align 4
  %175 = and i32 %174, 32
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 0, i32 1
  store i32 %178, i32* %19, align 4
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 32767
  %185 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %179, i32 %184)
  %186 = load i32*, i32** %14, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  store i32* %187, i32** %14, align 8
  %188 = load i32, i32* %16, align 4
  %189 = and i32 %188, 64
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32 2, i32 3
  store i32 %192, i32* %19, align 4
  %193 = load i32*, i32** %14, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 32767
  %199 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %193, i32 %198)
  %200 = load i32*, i32** %14, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32* %201, i32** %14, align 8
  %202 = load i32, i32* %16, align 4
  %203 = and i32 %202, 128
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 2, i32 3
  store i32 %206, i32* %19, align 4
  %207 = load i32*, i32** %14, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 32767
  %213 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %207, i32 %212)
  %214 = load i32*, i32** %14, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  store i32* %215, i32** %14, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %18, align 4
  %218 = add nsw i32 %217, 2
  %219 = load i32, i32* %13, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %216, i64 %221
  %223 = load i32, i32* %17, align 4
  %224 = mul nsw i32 %223, 2
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32* %226, i32** %14, align 8
  %227 = load i32, i32* %16, align 4
  %228 = and i32 %227, 256
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 4, i32 5
  store i32 %231, i32* %19, align 4
  %232 = load i32*, i32** %14, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, 32767
  %238 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %232, i32 %237)
  %239 = load i32*, i32** %14, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 2
  store i32* %240, i32** %14, align 8
  %241 = load i32, i32* %16, align 4
  %242 = and i32 %241, 512
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i32 4, i32 5
  store i32 %245, i32* %19, align 4
  %246 = load i32*, i32** %14, align 8
  %247 = load i32, i32* %19, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 32767
  %252 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %246, i32 %251)
  %253 = load i32*, i32** %14, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  store i32* %254, i32** %14, align 8
  %255 = load i32, i32* %16, align 4
  %256 = and i32 %255, 1024
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 6, i32 7
  store i32 %259, i32* %19, align 4
  %260 = load i32*, i32** %14, align 8
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 32767
  %266 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %260, i32 %265)
  %267 = load i32*, i32** %14, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 2
  store i32* %268, i32** %14, align 8
  %269 = load i32, i32* %16, align 4
  %270 = and i32 %269, 2048
  %271 = icmp ne i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 6, i32 7
  store i32 %273, i32* %19, align 4
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %19, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 32767
  %280 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %274, i32 %279)
  %281 = load i32*, i32** %14, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  store i32* %282, i32** %14, align 8
  %283 = load i32*, i32** %10, align 8
  %284 = load i32, i32* %18, align 4
  %285 = add nsw i32 %284, 3
  %286 = load i32, i32* %13, align 4
  %287 = mul nsw i32 %285, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %283, i64 %288
  %290 = load i32, i32* %17, align 4
  %291 = mul nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32* %293, i32** %14, align 8
  %294 = load i32, i32* %16, align 4
  %295 = and i32 %294, 4096
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 4, i32 5
  store i32 %298, i32* %19, align 4
  %299 = load i32*, i32** %14, align 8
  %300 = load i32, i32* %19, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, 32767
  %305 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %299, i32 %304)
  %306 = load i32*, i32** %14, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  store i32* %307, i32** %14, align 8
  %308 = load i32, i32* %16, align 4
  %309 = and i32 %308, 8192
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i32 4, i32 5
  store i32 %312, i32* %19, align 4
  %313 = load i32*, i32** %14, align 8
  %314 = load i32, i32* %19, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 32767
  %319 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %313, i32 %318)
  %320 = load i32*, i32** %14, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  store i32* %321, i32** %14, align 8
  %322 = load i32, i32* %16, align 4
  %323 = and i32 %322, 16384
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32 6, i32 7
  store i32 %326, i32* %19, align 4
  %327 = load i32*, i32** %14, align 8
  %328 = load i32, i32* %19, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = and i32 %331, 32767
  %333 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %327, i32 %332)
  %334 = load i32*, i32** %14, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  store i32* %335, i32** %14, align 8
  %336 = load i32, i32* %16, align 4
  %337 = and i32 %336, 32768
  %338 = icmp ne i32 %337, 0
  %339 = zext i1 %338 to i64
  %340 = select i1 %338, i32 6, i32 7
  store i32 %340, i32* %19, align 4
  %341 = load i32*, i32** %14, align 8
  %342 = load i32, i32* %19, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %345, 32767
  %347 = call i32 (i32*, i32, ...) bitcast (i32 (...)* @AV_WN16A to i32 (i32*, i32, ...)*)(i32* %341, i32 %346)
  %348 = load i32*, i32** %14, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 2
  store i32* %349, i32** %14, align 8
  br label %350

350:                                              ; preds = %81
  %351 = load i32, i32* %17, align 4
  %352 = add nsw i32 %351, 4
  store i32 %352, i32* %17, align 4
  br label %25

353:                                              ; preds = %25
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %18, align 4
  %356 = add nsw i32 %355, 4
  store i32 %356, i32* %18, align 4
  br label %20

357:                                              ; preds = %20
  store i32 0, i32* %7, align 4
  br label %358

358:                                              ; preds = %357, %51, %33
  %359 = load i32, i32* %7, align 4
  ret i32 %359
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_be16u(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @AV_WN16A(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
