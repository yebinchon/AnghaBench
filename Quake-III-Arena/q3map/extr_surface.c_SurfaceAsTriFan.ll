; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SurfaceAsTriFan.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SurfaceAsTriFan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@numDrawVerts = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_VERTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"MAX_MAP_DRAW_VERTS\00", align 1
@drawVerts = common dso_local global %struct.TYPE_6__* null, align 8
@numDrawIndexes = common dso_local global i64 0, align 8
@MAX_MAP_DRAW_INDEXES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"MAX_MAP_DRAWINDEXES\00", align 1
@drawIndexes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @SurfaceAsTriFan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SurfaceAsTriFan(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load i64, i64* @numDrawVerts, align 8
  %8 = load i64, i64* @MAX_MAP_DRAW_VERTS, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drawVerts, align 8
  %14 = load i64, i64* @numDrawVerts, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %14
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %5, align 8
  %16 = load i64, i64* @numDrawVerts, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* @numDrawVerts, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %21, align 16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drawVerts, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %26
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %121, %12
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %126

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @VectorAdd(i32* %37, i32* %40, i32* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, %60
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = add nsw i32 %95, %93
  store i32 %96, i32* %94, align 16
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %101
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %109
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %34
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %3, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 1
  store %struct.TYPE_6__* %125, %struct.TYPE_6__** %6, align 8
  br label %28

126:                                              ; preds = %28
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, %129
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %143, %138
  store i32 %144, i32* %142, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, %147
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, %156
  store i32 %162, i32* %160, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = sdiv i32 %170, %165
  store i32 %171, i32* %169, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, %174
  store i32 %180, i32* %178, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = sdiv i32 %188, %183
  store i32 %189, i32* %187, align 4
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %191 = load i32, i32* %190, align 16
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %191, %194
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %195, i32* %199, align 4
  %200 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sdiv i32 %201, %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %205, i32* %209, align 4
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sdiv i32 %211, %214
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  store i32 %215, i32* %219, align 4
  %220 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %221, %224
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 3
  store i32 %225, i32* %229, align 4
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drawVerts, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @VectorCopy(i32 %237, i32 %240)
  %242 = load i64, i64* @numDrawIndexes, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = mul nsw i32 %245, 3
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %242, %247
  %249 = load i64, i64* @MAX_MAP_DRAW_INDEXES, align 8
  %250 = icmp sgt i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %126
  %252 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %126
  %254 = load i64, i64* @numDrawIndexes, align 8
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 3
  store i64 %254, i64* %256, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %259, 3
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  store i32 0, i32* %3, align 4
  br label %263

263:                                              ; preds = %292, %253
  %264 = load i32, i32* %3, align 4
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %295

269:                                              ; preds = %263
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** @drawIndexes, align 8
  %274 = load i64, i64* @numDrawIndexes, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* @numDrawIndexes, align 8
  %276 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 %272, i32* %276, align 4
  %277 = load i32, i32* %3, align 4
  %278 = load i32*, i32** @drawIndexes, align 8
  %279 = load i64, i64* @numDrawIndexes, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* @numDrawIndexes, align 8
  %281 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32 %277, i32* %281, align 4
  %282 = load i32, i32* %3, align 4
  %283 = add nsw i32 %282, 1
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = srem i32 %283, %286
  %288 = load i32*, i32** @drawIndexes, align 8
  %289 = load i64, i64* @numDrawIndexes, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* @numDrawIndexes, align 8
  %291 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32 %287, i32* %291, align 4
  br label %292

292:                                              ; preds = %269
  %293 = load i32, i32* %3, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %3, align 4
  br label %263

295:                                              ; preds = %263
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorAdd(i32*, i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
