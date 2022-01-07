; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snowenc.c_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32*, i32* }

@MID_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @encode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_header(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @MID_STATE, align 4
  %12 = call i32 @memset(i32* %10, i32 %11, i32 128)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 24
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @put_rac(i32* %14, i32* %15, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %24, %1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %31 = call i32 @ff_snow_reset_contexts(%struct.TYPE_6__* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 6
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i32 0, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %60, %29
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 25
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @memset(i32* %58, i32 0, i32 8)
  br label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %42

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %63, %24
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %169

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 24
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 23
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @put_symbol(i32* %71, i32* %74, i32 %77, i32 0)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 24
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 23
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @put_rac(i32* %80, i32* %83, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 24
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 23
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @put_symbol(i32* %89, i32* %92, i32 %95, i32 0)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 24
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 23
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @put_symbol(i32* %98, i32* %101, i32 %104, i32 0)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 24
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 23
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @put_symbol(i32* %107, i32* %110, i32 %113, i32 0)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 24
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 23
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @put_symbol(i32* %116, i32* %119, i32 %122, i32 0)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 12
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 2
  br i1 %127, label %128, label %147

128:                                              ; preds = %69
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 24
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 23
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 13
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @put_symbol(i32* %130, i32* %133, i32 %136, i32 0)
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 24
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 23
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 14
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @put_symbol(i32* %139, i32* %142, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %128, %69
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 24
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 23
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 15
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @put_rac(i32* %149, i32* %152, i32 %155)
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 24
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 23
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 16
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, 1
  %166 = call i32 @put_symbol(i32* %158, i32* %161, i32 %165, i32 0)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %168 = call i32 @encode_qlogs(%struct.TYPE_6__* %167)
  br label %169

169:                                              ; preds = %147, %64
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %338, label %174

174:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %222, %174
  %176 = load i32, i32* %3, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @FFMIN(i32 %179, i32 2)
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %225

182:                                              ; preds = %175
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 25
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  store %struct.TYPE_7__* %188, %struct.TYPE_7__** %8, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %191, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %7, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %201, %204
  %206 = zext i1 %205 to i32
  %207 = load i32, i32* %7, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 5
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @memcmp(i32* %211, i32* %214, i32 8)
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = load i32, i32* %7, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %7, align 4
  br label %222

222:                                              ; preds = %182
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %3, align 4
  br label %175

225:                                              ; preds = %175
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 24
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 23
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @put_rac(i32* %227, i32* %230, i32 %231)
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %303

235:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %299, %235
  %237 = load i32, i32* %3, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 12
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @FFMIN(i32 %240, i32 2)
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %302

243:                                              ; preds = %236
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 25
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = load i32, i32* %3, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i64 %248
  store %struct.TYPE_7__* %249, %struct.TYPE_7__** %9, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 24
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 23
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i32 @put_rac(i32* %251, i32* %254, i32 %258)
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 24
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 23
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = sdiv i64 %267, 2
  %269 = sub nsw i64 %268, 1
  %270 = trunc i64 %269 to i32
  %271 = call i32 @put_symbol(i32* %261, i32* %264, i32 %270, i32 0)
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = sdiv i64 %274, 2
  %276 = trunc i64 %275 to i32
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %295, %243
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %298

280:                                              ; preds = %277
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 24
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 23
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 4
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @FFABS(i32 %292)
  %294 = call i32 @put_symbol(i32* %282, i32* %285, i32 %293, i32 0)
  br label %295

295:                                              ; preds = %280
  %296 = load i32, i32* %4, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %4, align 4
  br label %277

298:                                              ; preds = %277
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %3, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %3, align 4
  br label %236

302:                                              ; preds = %236
  br label %303

303:                                              ; preds = %302, %225
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 17
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 10
  %309 = load i32, i32* %308, align 8
  %310 = sext i32 %309 to i64
  %311 = icmp ne i64 %306, %310
  br i1 %311, label %312, label %330

312:                                              ; preds = %303
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 24
  %315 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 23
  %317 = load i32*, i32** %316, align 8
  %318 = call i32 @put_rac(i32* %314, i32* %317, i32 1)
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 24
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 23
  %323 = load i32*, i32** %322, align 8
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 10
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @put_symbol(i32* %320, i32* %323, i32 %326, i32 0)
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %329 = call i32 @encode_qlogs(%struct.TYPE_6__* %328)
  br label %337

330:                                              ; preds = %303
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 24
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 23
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @put_rac(i32* %332, i32* %335, i32 0)
  br label %337

337:                                              ; preds = %330, %312
  br label %338

338:                                              ; preds = %337, %169
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 24
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 23
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 18
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = sub nsw i32 %346, %349
  %351 = call i32 @put_symbol(i32* %340, i32* %343, i32 %350, i32 1)
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 24
  %354 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 23
  %356 = load i32*, i32** %355, align 8
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 19
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %359, %362
  %364 = call i32 @put_symbol(i32* %353, i32* %356, i32 %363, i32 1)
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 24
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i32 0, i32 23
  %369 = load i32*, i32** %368, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 20
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 5
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %372, %375
  %377 = call i32 @put_symbol(i32* %366, i32* %369, i32 %376, i32 1)
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 24
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 23
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 21
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 8
  %389 = sub nsw i32 %385, %388
  %390 = call i32 @put_symbol(i32* %379, i32* %382, i32 %389, i32 1)
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 24
  %393 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 23
  %395 = load i32*, i32** %394, align 8
  %396 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 22
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 8
  %402 = sub nsw i32 %398, %401
  %403 = call i32 @put_symbol(i32* %392, i32* %395, i32 %402, i32 1)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @put_rac(i32*, i32*, i32) #1

declare dso_local i32 @ff_snow_reset_contexts(%struct.TYPE_6__*) #1

declare dso_local i32 @put_symbol(i32*, i32*, i32, i32) #1

declare dso_local i32 @encode_qlogs(%struct.TYPE_6__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
