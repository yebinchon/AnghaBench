; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct15.c_fft15_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mdct15.c_fft15_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32)* @fft15_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft15_c(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x %struct.TYPE_11__], align 16
  %11 = alloca [5 x %struct.TYPE_11__], align 16
  %12 = alloca [5 x %struct.TYPE_11__], align 16
  %13 = alloca [2 x %struct.TYPE_11__], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i64 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 19
  %19 = call i32 @fft5(%struct.TYPE_11__* %14, %struct.TYPE_11__* %16, %struct.TYPE_11__* %18)
  %20 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %11, i64 0, i64 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 19
  %25 = call i32 @fft5(%struct.TYPE_11__* %20, %struct.TYPE_11__* %22, %struct.TYPE_11__* %24)
  %26 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 19
  %31 = call i32 @fft5(%struct.TYPE_11__* %26, %struct.TYPE_11__* %28, %struct.TYPE_11__* %30)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %311, %4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 5
  br i1 %34, label %35, label %314

35:                                               ; preds = %32
  %36 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %11, i64 0, i64 %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i64 %42
  %44 = bitcast %struct.TYPE_11__* %36 to { i64, i64 }*
  %45 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 16
  %47 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %44, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = bitcast %struct.TYPE_11__* %39 to { i64, i64 }*
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 16
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %struct.TYPE_11__* %43 to { i64, i64 }*
  %55 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %54, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @CMUL3(i64 %46, i64 %48, i64 %51, i64 %53, i64 %56, i64 %58)
  %60 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %12, i64 0, i64 %62
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 2, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 %67
  %69 = bitcast %struct.TYPE_11__* %60 to { i64, i64 }*
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 16
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %69, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = bitcast %struct.TYPE_11__* %63 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 16
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = bitcast %struct.TYPE_11__* %68 to { i64, i64 }*
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @CMUL3(i64 %71, i64 %73, i64 %76, i64 %78, i64 %81, i64 %83)
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i64 %97, i64* %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 16
  %110 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 16
  %113 = add nsw i64 %109, %112
  %114 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 16
  %117 = add nsw i64 %113, %116
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %9, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i64 %117, i64* %124, align 8
  %125 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %11, i64 0, i64 %127
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 5
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %132
  %134 = bitcast %struct.TYPE_11__* %125 to { i64, i64 }*
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 16
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = bitcast %struct.TYPE_11__* %128 to { i64, i64 }*
  %140 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 16
  %142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %139, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = bitcast %struct.TYPE_11__* %133 to { i64, i64 }*
  %145 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %144, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @CMUL3(i64 %136, i64 %138, i64 %141, i64 %143, i64 %146, i64 %148)
  %150 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %12, i64 0, i64 %152
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 5
  %157 = mul nsw i32 2, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 %158
  %160 = bitcast %struct.TYPE_11__* %150 to { i64, i64 }*
  %161 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 16
  %163 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %160, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = bitcast %struct.TYPE_11__* %153 to { i64, i64 }*
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 16
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = bitcast %struct.TYPE_11__* %159 to { i64, i64 }*
  %171 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @CMUL3(i64 %162, i64 %164, i64 %167, i64 %169, i64 %172, i64 %174)
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %180, %183
  %185 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %9, align 4
  %192 = add nsw i32 %191, 5
  %193 = mul nsw i32 %190, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  store i64 %188, i64* %196, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 16
  %202 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 16
  %205 = add nsw i64 %201, %204
  %206 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 16
  %209 = add nsw i64 %205, %208
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %9, align 4
  %213 = add nsw i32 %212, 5
  %214 = mul nsw i32 %211, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store i64 %209, i64* %217, align 8
  %218 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %11, i64 0, i64 %220
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 10
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i64 %225
  %227 = bitcast %struct.TYPE_11__* %218 to { i64, i64 }*
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 16
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = bitcast %struct.TYPE_11__* %221 to { i64, i64 }*
  %233 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 16
  %235 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %232, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = bitcast %struct.TYPE_11__* %226 to { i64, i64 }*
  %238 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %237, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @CMUL3(i64 %229, i64 %231, i64 %234, i64 %236, i64 %239, i64 %241)
  %243 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %12, i64 0, i64 %245
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = load i32, i32* %9, align 4
  %249 = mul nsw i32 2, %248
  %250 = add nsw i32 %249, 5
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %251
  %253 = bitcast %struct.TYPE_11__* %243 to { i64, i64 }*
  %254 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 16
  %256 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %253, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = bitcast %struct.TYPE_11__* %246 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 16
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = bitcast %struct.TYPE_11__* %252 to { i64, i64 }*
  %264 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %263, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @CMUL3(i64 %255, i64 %257, i64 %260, i64 %262, i64 %265, i64 %267)
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %273, %276
  %278 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %277, %280
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %9, align 4
  %285 = add nsw i32 %284, 10
  %286 = mul nsw i32 %283, %285
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i32 0, i32 1
  store i64 %281, i64* %289, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %10, i64 0, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 16
  %295 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 0
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 16
  %298 = add nsw i64 %294, %297
  %299 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %13, i64 0, i64 1
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 16
  %302 = add nsw i64 %298, %301
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 10
  %307 = mul nsw i32 %304, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  store i64 %302, i64* %310, align 8
  br label %311

311:                                              ; preds = %35
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %32

314:                                              ; preds = %32
  ret void
}

declare dso_local i32 @fft5(%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @CMUL3(i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
