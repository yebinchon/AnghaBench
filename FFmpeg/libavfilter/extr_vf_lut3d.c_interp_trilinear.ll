; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_interp_trilinear.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_lut3d.c_interp_trilinear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.rgbvec* }
%struct.rgbvec = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rgbvec*, %struct.TYPE_3__*, %struct.rgbvec*)* @interp_trilinear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interp_trilinear(%struct.rgbvec* noalias sret %0, %struct.TYPE_3__* %1, %struct.rgbvec* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.rgbvec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca %struct.rgbvec, align 4
  %11 = alloca %struct.rgbvec, align 4
  %12 = alloca %struct.rgbvec, align 4
  %13 = alloca %struct.rgbvec, align 4
  %14 = alloca %struct.rgbvec, align 4
  %15 = alloca %struct.rgbvec, align 4
  %16 = alloca %struct.rgbvec, align 4
  %17 = alloca %struct.rgbvec, align 4
  %18 = alloca %struct.rgbvec, align 4
  %19 = alloca %struct.rgbvec, align 4
  %20 = alloca %struct.rgbvec, align 4
  %21 = alloca %struct.rgbvec, align 4
  %22 = alloca %struct.rgbvec, align 4
  %23 = alloca %struct.rgbvec, align 4
  %24 = alloca %struct.rgbvec, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store %struct.rgbvec* %2, %struct.rgbvec** %5, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %32 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %33 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PREV(i32 %34)
  store i32 %35, i32* %31, align 4
  %36 = getelementptr inbounds i32, i32* %31, i64 1
  %37 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %38 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PREV(i32 %39)
  store i32 %40, i32* %36, align 4
  %41 = getelementptr inbounds i32, i32* %36, i64 1
  %42 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %43 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PREV(i32 %44)
  store i32 %45, i32* %41, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %47 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %48 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @NEXT(i32 %49)
  store i32 %50, i32* %46, align 4
  %51 = getelementptr inbounds i32, i32* %46, i64 1
  %52 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %53 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NEXT(i32 %54)
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds i32, i32* %51, i64 1
  %57 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %58 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @NEXT(i32 %59)
  store i32 %60, i32* %56, align 4
  %61 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 0
  %62 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %63 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %61, align 4
  %68 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 1
  %69 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %70 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %71, %73
  store i32 %74, i32* %68, align 4
  %75 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 2
  %76 = load %struct.rgbvec*, %struct.rgbvec** %5, align 8
  %77 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %78, %80
  store i32 %81, i32* %75, align 4
  %82 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 4
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 5
  store i32 0, i32* %84, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load %struct.rgbvec*, %struct.rgbvec** %86, align 8
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 %89, %90
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %91, %95
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %96, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %87, i64 %100
  %102 = bitcast %struct.rgbvec* %11 to i8*
  %103 = bitcast %struct.rgbvec* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 24, i1 false)
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load %struct.rgbvec*, %struct.rgbvec** %105, align 8
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %108, %109
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %110, %114
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %115, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %106, i64 %119
  %121 = bitcast %struct.rgbvec* %12 to i8*
  %122 = bitcast %struct.rgbvec* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 24, i1 false)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load %struct.rgbvec*, %struct.rgbvec** %124, align 8
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = mul nsw i32 %127, %128
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %129, %133
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %134, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %125, i64 %138
  %140 = bitcast %struct.rgbvec* %13 to i8*
  %141 = bitcast %struct.rgbvec* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %140, i8* align 4 %141, i64 24, i1 false)
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load %struct.rgbvec*, %struct.rgbvec** %143, align 8
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = mul nsw i32 %146, %147
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %7, align 4
  %152 = mul nsw i32 %150, %151
  %153 = add nsw i32 %148, %152
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %153, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %144, i64 %157
  %159 = bitcast %struct.rgbvec* %14 to i8*
  %160 = bitcast %struct.rgbvec* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 24, i1 false)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  %163 = load %struct.rgbvec*, %struct.rgbvec** %162, align 8
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %6, align 4
  %167 = mul nsw i32 %165, %166
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 %169, %170
  %172 = add nsw i32 %167, %171
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %172, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %163, i64 %176
  %178 = bitcast %struct.rgbvec* %15 to i8*
  %179 = bitcast %struct.rgbvec* %177 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 24, i1 false)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load %struct.rgbvec*, %struct.rgbvec** %181, align 8
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %6, align 4
  %186 = mul nsw i32 %184, %185
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %186, %190
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %191, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %182, i64 %195
  %197 = bitcast %struct.rgbvec* %16 to i8*
  %198 = bitcast %struct.rgbvec* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 24, i1 false)
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load %struct.rgbvec*, %struct.rgbvec** %200, align 8
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %6, align 4
  %205 = mul nsw i32 %203, %204
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %7, align 4
  %209 = mul nsw i32 %207, %208
  %210 = add nsw i32 %205, %209
  %211 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %210, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %201, i64 %214
  %216 = bitcast %struct.rgbvec* %17 to i8*
  %217 = bitcast %struct.rgbvec* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %216, i8* align 4 %217, i64 24, i1 false)
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 2
  %220 = load %struct.rgbvec*, %struct.rgbvec** %219, align 8
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %6, align 4
  %224 = mul nsw i32 %222, %223
  %225 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %7, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %224, %228
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %229, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %220, i64 %233
  %235 = bitcast %struct.rgbvec* %18 to i8*
  %236 = bitcast %struct.rgbvec* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %235, i8* align 4 %236, i64 24, i1 false)
  %237 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  call void @lerp(%struct.rgbvec* sret %19, %struct.rgbvec* %11, %struct.rgbvec* %15, i32 %238)
  %239 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  call void @lerp(%struct.rgbvec* sret %20, %struct.rgbvec* %13, %struct.rgbvec* %17, i32 %240)
  %241 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  call void @lerp(%struct.rgbvec* sret %21, %struct.rgbvec* %12, %struct.rgbvec* %16, i32 %242)
  %243 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  call void @lerp(%struct.rgbvec* sret %22, %struct.rgbvec* %14, %struct.rgbvec* %18, i32 %244)
  %245 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  call void @lerp(%struct.rgbvec* sret %23, %struct.rgbvec* %19, %struct.rgbvec* %20, i32 %246)
  %247 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  call void @lerp(%struct.rgbvec* sret %24, %struct.rgbvec* %21, %struct.rgbvec* %22, i32 %248)
  %249 = getelementptr inbounds %struct.rgbvec, %struct.rgbvec* %10, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  call void @lerp(%struct.rgbvec* sret %0, %struct.rgbvec* %23, %struct.rgbvec* %24, i32 %250)
  ret void
}

declare dso_local i32 @PREV(i32) #1

declare dso_local i32 @NEXT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @lerp(%struct.rgbvec* sret, %struct.rgbvec*, %struct.rgbvec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
