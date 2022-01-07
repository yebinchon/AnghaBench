; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_DoRailDiscs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_surface.c_DoRailDiscs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32***, i32*, i32, i32**, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@r_railWidth = common dso_local global %struct.TYPE_9__* null, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, float*, float*, float*)* @DoRailDiscs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoRailDiscs(i32 %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x float*], align 16
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_railWidth, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %275

31:                                               ; preds = %27
  store float 2.500000e-01, float* %17, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %121, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %124

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 90
  %38 = add nsw i32 45, %37
  %39 = call i32 @DEG2RAD(i32 %38)
  %40 = call float @cos(i32 %39)
  store float %40, float* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 90
  %43 = add nsw i32 45, %42
  %44 = call i32 @DEG2RAD(i32 %43)
  %45 = call float @sin(i32 %44)
  store float %45, float* %16, align 4
  %46 = load float*, float** %9, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float, float* %15, align 4
  %50 = fmul float %48, %49
  %51 = load float*, float** %10, align 8
  %52 = getelementptr inbounds float, float* %51, i64 0
  %53 = load float, float* %52, align 4
  %54 = load float, float* %16, align 4
  %55 = fmul float %53, %54
  %56 = fadd float %50, %55
  %57 = load float, float* %17, align 4
  %58 = fmul float %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = sitofp i32 %59 to float
  %61 = fmul float %58, %60
  %62 = load float*, float** %13, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  store float %61, float* %63, align 4
  %64 = load float*, float** %9, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  %67 = load float, float* %15, align 4
  %68 = fmul float %66, %67
  %69 = load float*, float** %10, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  %71 = load float, float* %70, align 4
  %72 = load float, float* %16, align 4
  %73 = fmul float %71, %72
  %74 = fadd float %68, %73
  %75 = load float, float* %17, align 4
  %76 = fmul float %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = sitofp i32 %77 to float
  %79 = fmul float %76, %78
  %80 = load float*, float** %13, align 8
  %81 = getelementptr inbounds float, float* %80, i64 1
  store float %79, float* %81, align 4
  %82 = load float*, float** %9, align 8
  %83 = getelementptr inbounds float, float* %82, i64 2
  %84 = load float, float* %83, align 4
  %85 = load float, float* %15, align 4
  %86 = fmul float %84, %85
  %87 = load float*, float** %10, align 8
  %88 = getelementptr inbounds float, float* %87, i64 2
  %89 = load float, float* %88, align 4
  %90 = load float, float* %16, align 4
  %91 = fmul float %89, %90
  %92 = fadd float %86, %91
  %93 = load float, float* %17, align 4
  %94 = fmul float %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = sitofp i32 %95 to float
  %97 = fmul float %94, %96
  %98 = load float*, float** %13, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float %97, float* %99, align 4
  %100 = load float*, float** %7, align 8
  %101 = load float*, float** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %103
  %105 = load float*, float** %104, align 8
  %106 = call i32 @VectorAdd(float* %100, float* %101, float* %105)
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %120

109:                                              ; preds = %35
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %111
  %113 = load float*, float** %112, align 8
  %114 = load float*, float** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %116
  %118 = load float*, float** %117, align 8
  %119 = call i32 @VectorAdd(float* %113, float* %114, float* %118)
  br label %120

120:                                              ; preds = %109, %35
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %32

124:                                              ; preds = %32
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %272, %124
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %275

129:                                              ; preds = %125
  %130 = call i32 @RB_CHECKOVERFLOW(i32 4, i32 6)
  store i32 0, i32* %18, align 4
  br label %131

131:                                              ; preds = %214, %129
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %132, 4
  br i1 %133, label %134, label %217

134:                                              ; preds = %131
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %136
  %138 = load float*, float** %137, align 8
  %139 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @VectorCopy(float* %138, i32 %142)
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %144, 2
  %146 = zext i1 %145 to i32
  %147 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %149 = getelementptr inbounds i32**, i32*** %147, i64 %148
  %150 = load i32**, i32*** %149, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %146, i32* %153, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %134
  %157 = load i32, i32* %18, align 4
  %158 = icmp ne i32 %157, 3
  br label %159

159:                                              ; preds = %156, %134
  %160 = phi i1 [ false, %134 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  %162 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %164 = getelementptr inbounds i32**, i32*** %162, i64 %163
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %161, i32* %168, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %177 = getelementptr inbounds i32*, i32** %175, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %174, i32* %179, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %185, i32* %190, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %198 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %199 = getelementptr inbounds i32*, i32** %197, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  store i32 %196, i32* %201, align 4
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %205
  %207 = load float*, float** %206, align 8
  %208 = load float*, float** %8, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %210
  %212 = load float*, float** %211, align 8
  %213 = call i32 @VectorAdd(float* %207, float* %208, float* %212)
  br label %214

214:                                              ; preds = %159
  %215 = load i32, i32* %18, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %18, align 4
  br label %131

217:                                              ; preds = %131
  %218 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %219 = sub i64 %218, 4
  %220 = add i64 %219, 0
  %221 = trunc i64 %220 to i32
  %222 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %228 = sub i64 %227, 4
  %229 = add i64 %228, 1
  %230 = trunc i64 %229 to i32
  %231 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  store i32 %230, i32* %235, align 4
  %236 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %237 = sub i64 %236, 4
  %238 = add i64 %237, 3
  %239 = trunc i64 %238 to i32
  %240 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %241 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %243 = sext i32 %241 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %246 = sub i64 %245, 4
  %247 = add i64 %246, 3
  %248 = trunc i64 %247 to i32
  %249 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  store i32 %248, i32* %253, align 4
  %254 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %255 = sub i64 %254, 4
  %256 = add i64 %255, 1
  %257 = trunc i64 %256 to i32
  %258 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %257, i32* %262, align 4
  %263 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %264 = sub i64 %263, 4
  %265 = add i64 %264, 2
  %266 = trunc i64 %265 to i32
  %267 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 %266, i32* %271, align 4
  br label %272

272:                                              ; preds = %217
  %273 = load i32, i32* %11, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %11, align 4
  br label %125

275:                                              ; preds = %30, %125
  ret void
}

declare dso_local float @cos(i32) #1

declare dso_local i32 @DEG2RAD(i32) #1

declare dso_local float @sin(i32) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
