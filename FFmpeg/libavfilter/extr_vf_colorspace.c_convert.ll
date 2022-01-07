; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_convert.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_colorspace.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32*, i32, i32 (i32**, i32*, i32**, i32, i32, i32, i32, i32)*, i32, i32 (i32**, i32*, i32**, i32, i32, i32, i32, i32, i32)*, i32, i32, %struct.TYPE_10__, i32, i32, i32, i32, i32 (i32**, i32, i32**, i32*, i32, i32, i32, i32)*, i32, i32 (i32**, i32*, i32**, i32*, i32, i32, i32, i32*)*, i64, i32** }
%struct.TYPE_10__ = type { i32 (i32**, i32, i32, i32, i32)* }
%struct.TYPE_11__ = type { i32*, i32, i32*, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32** }
%struct.TYPE_8__ = type { i32, i32, i32** }

@DITHER_FSB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32, i32)* @convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert(%struct.TYPE_13__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca [3 x i32*], align 16
  %12 = alloca [3 x i32*], align 16
  %13 = alloca [3 x i32*], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %9, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 5
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %14, align 4
  %33 = mul nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %33, %34
  %36 = mul nsw i32 2, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* %14, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %40, %41
  %43 = mul nsw i32 2, %42
  store i32 %43, i32* %16, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %18, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %58, i64 %66
  %68 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  store i32* %67, i32** %68, align 16
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %81, %84
  %86 = mul nsw i32 %80, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %75, i64 %87
  %89 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  store i32* %88, i32** %89, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %102, %105
  %107 = mul nsw i32 %101, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %96, i64 %108
  %110 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  store i32* %109, i32** %110, align 16
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %15, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %117, i64 %125
  %127 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  store i32* %126, i32** %127, align 16
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32**, i32*** %131, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = ashr i32 %140, %143
  %145 = mul nsw i32 %139, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %134, i64 %146
  %148 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 1
  store i32* %147, i32** %148, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 2
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = ashr i32 %161, %164
  %166 = mul nsw i32 %160, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %155, i64 %167
  %169 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 2
  store i32* %168, i32** %169, align 16
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 18
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = mul nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %174, i64 %180
  %182 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  store i32* %181, i32** %182, align 16
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 18
  %185 = load i32**, i32*** %184, align 8
  %186 = getelementptr inbounds i32*, i32** %185, i64 1
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %187, i64 %193
  %195 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 1
  store i32* %194, i32** %195, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 18
  %198 = load i32**, i32*** %197, align 8
  %199 = getelementptr inbounds i32*, i32** %198, i64 2
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %15, align 4
  %205 = mul nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %200, i64 %206
  %208 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 2
  store i32* %207, i32** %208, align 16
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 17
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %234

213:                                              ; preds = %4
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 16
  %216 = load i32 (i32**, i32*, i32**, i32*, i32, i32, i32, i32*)*, i32 (i32**, i32*, i32**, i32*, i32, i32, i32, i32*)** %215, align 8
  %217 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 15
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = call i32 %216(i32** %217, i32* %220, i32** %221, i32* %224, i32 %225, i32 %226, i32 %229, i32* %232)
  br label %358

234:                                              ; preds = %4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 14
  %237 = load i32 (i32**, i32, i32**, i32*, i32, i32, i32, i32)*, i32 (i32**, i32, i32**, i32*, i32, i32, i32, i32)** %236, align 8
  %238 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 13
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 2
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 %237(i32** %238, i32 %241, i32** %242, i32* %245, i32 %246, i32 %247, i32 %250, i32 %255)
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 12
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %302, label %261

261:                                              ; preds = %234
  %262 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* %18, align 4
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 11
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @apply_lut(i32** %262, i32 %265, i32 %266, i32 %267, i32 %270)
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 10
  %274 = load i32, i32* %273, align 8
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %291, label %276

276:                                              ; preds = %261
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 9
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load i32 (i32**, i32, i32, i32, i32)*, i32 (i32**, i32, i32, i32, i32)** %279, align 8
  %281 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %17, align 4
  %286 = load i32, i32* %18, align 4
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 4
  %290 = call i32 %280(i32** %281, i32 %284, i32 %285, i32 %286, i32 %289)
  br label %291

291:                                              ; preds = %276, %261
  %292 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %18, align 4
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @apply_lut(i32** %292, i32 %295, i32 %296, i32 %297, i32 %300)
  br label %302

302:                                              ; preds = %291, %234
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @DITHER_FSB, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %334

308:                                              ; preds = %302
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 6
  %311 = load i32 (i32**, i32*, i32**, i32, i32, i32, i32, i32, i32)*, i32 (i32**, i32*, i32**, i32, i32, i32, i32, i32, i32)** %310, align 8
  %312 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* %18, align 4
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 8
  %333 = call i32 %311(i32** %312, i32* %315, i32** %316, i32 %319, i32 %320, i32 %321, i32 %324, i32 %329, i32 %332)
  br label %357

334:                                              ; preds = %302
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 4
  %337 = load i32 (i32**, i32*, i32**, i32, i32, i32, i32, i32)*, i32 (i32**, i32*, i32**, i32, i32, i32, i32, i32)** %336, align 8
  %338 = getelementptr inbounds [3 x i32*], [3 x i32*]* %12, i64 0, i64 0
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds [3 x i32*], [3 x i32*]* %13, i64 0, i64 0
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %17, align 4
  %347 = load i32, i32* %18, align 4
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 1
  %355 = load i32, i32* %354, align 4
  %356 = call i32 %337(i32** %338, i32* %341, i32** %342, i32 %345, i32 %346, i32 %347, i32 %350, i32 %355)
  br label %357

357:                                              ; preds = %334, %308
  br label %358

358:                                              ; preds = %357, %213
  ret i32 0
}

declare dso_local i32 @apply_lut(i32**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
