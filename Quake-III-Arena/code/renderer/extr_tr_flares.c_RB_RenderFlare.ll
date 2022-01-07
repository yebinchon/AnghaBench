; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_flares.c_RB_RenderFlare.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_flares.c_RB_RenderFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { float }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { float }
%struct.TYPE_13__ = type { i64, i32***, i32**, i32*, i32, i64** }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i32, i32 }

@backEnd = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@r_flareSize = common dso_local global %struct.TYPE_14__* null, align 8
@tess = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_RenderFlare(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 1, i32 0), align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 4
  %15 = mul nsw i32 %13, %14
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @VectorScale(i32 %10, i32 %15, i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 255
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 255
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 255
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  %33 = load float, float* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @backEnd, i32 0, i32 0, i32 0), align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_flareSize, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 4
  %37 = fdiv float %36, 6.400000e+02
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = sdiv i32 8, %41
  %43 = sitofp i32 %42 to float
  %44 = fadd float %37, %43
  %45 = fmul float %33, %44
  store float %45, float* %3, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @RB_BeginSurface(i32 %46, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = sitofp i64 %53 to float
  %55 = load float, float* %3, align 4
  %56 = fsub float %54, %55
  %57 = fptosi float %56 to i64
  %58 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %60 = getelementptr inbounds i64*, i64** %58, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %57, i64* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sitofp i64 %65 to float
  %67 = load float, float* %3, align 4
  %68 = fsub float %66, %67
  %69 = fptosi float %68 to i64
  %70 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i64*, i64** %70, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  store i64 %69, i64* %74, align 8
  %75 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %77 = getelementptr inbounds i32**, i32*** %75, i64 %76
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 0, i32* %81, align 4
  %82 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i32**, i32*** %82, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %93 = getelementptr inbounds i32*, i32** %91, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %90, i32* %95, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %97, i32* %102, align 4
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %104, i32* %109, align 4
  %110 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %112 = getelementptr inbounds i32*, i32** %110, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  store i32 255, i32* %114, align 4
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = sitofp i64 %119 to float
  %121 = load float, float* %3, align 4
  %122 = fsub float %120, %121
  %123 = fptosi float %122 to i64
  %124 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %126 = getelementptr inbounds i64*, i64** %124, i64 %125
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  store i64 %123, i64* %128, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = sitofp i64 %131 to float
  %133 = load float, float* %3, align 4
  %134 = fadd float %132, %133
  %135 = fptosi float %134 to i64
  %136 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %138 = getelementptr inbounds i64*, i64** %136, i64 %137
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  store i64 %135, i64* %140, align 8
  %141 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %143 = getelementptr inbounds i32**, i32*** %141, i64 %142
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 0, i32* %147, align 4
  %148 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %150 = getelementptr inbounds i32**, i32*** %148, i64 %149
  %151 = load i32**, i32*** %150, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 1, i32* %154, align 4
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %156, i32* %161, align 4
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %165 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %166 = getelementptr inbounds i32*, i32** %164, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 %163, i32* %168, align 4
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %173 = getelementptr inbounds i32*, i32** %171, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  store i32 %170, i32* %175, align 4
  %176 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %178 = getelementptr inbounds i32*, i32** %176, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  store i32 255, i32* %180, align 4
  %181 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = sitofp i64 %185 to float
  %187 = load float, float* %3, align 4
  %188 = fadd float %186, %187
  %189 = fptosi float %188 to i64
  %190 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %191 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %192 = getelementptr inbounds i64*, i64** %190, i64 %191
  %193 = load i64*, i64** %192, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  store i64 %189, i64* %194, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = sitofp i64 %197 to float
  %199 = load float, float* %3, align 4
  %200 = fadd float %198, %199
  %201 = fptosi float %200 to i64
  %202 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %204 = getelementptr inbounds i64*, i64** %202, i64 %203
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 1
  store i64 %201, i64* %206, align 8
  %207 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %209 = getelementptr inbounds i32**, i32*** %207, i64 %208
  %210 = load i32**, i32*** %209, align 8
  %211 = getelementptr inbounds i32*, i32** %210, i64 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 1, i32* %213, align 4
  %214 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %216 = getelementptr inbounds i32**, i32*** %214, i64 %215
  %217 = load i32**, i32*** %216, align 8
  %218 = getelementptr inbounds i32*, i32** %217, i64 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  store i32 1, i32* %220, align 4
  %221 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %225 = getelementptr inbounds i32*, i32** %223, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  store i32 %222, i32* %227, align 4
  %228 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %231 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %232 = getelementptr inbounds i32*, i32** %230, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  store i32 %229, i32* %234, align 4
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %236 = load i32, i32* %235, align 4
  %237 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %239 = getelementptr inbounds i32*, i32** %237, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  store i32 %236, i32* %241, align 4
  %242 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %244 = getelementptr inbounds i32*, i32** %242, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 3
  store i32 255, i32* %246, align 4
  %247 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = sitofp i64 %251 to float
  %253 = load float, float* %3, align 4
  %254 = fadd float %252, %253
  %255 = fptosi float %254 to i64
  %256 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %257 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %258 = getelementptr inbounds i64*, i64** %256, i64 %257
  %259 = load i64*, i64** %258, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 0
  store i64 %255, i64* %260, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = sitofp i64 %263 to float
  %265 = load float, float* %3, align 4
  %266 = fsub float %264, %265
  %267 = fptosi float %266 to i64
  %268 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 5), align 8
  %269 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %270 = getelementptr inbounds i64*, i64** %268, i64 %269
  %271 = load i64*, i64** %270, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 1
  store i64 %267, i64* %272, align 8
  %273 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %275 = getelementptr inbounds i32**, i32*** %273, i64 %274
  %276 = load i32**, i32*** %275, align 8
  %277 = getelementptr inbounds i32*, i32** %276, i64 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  store i32 1, i32* %279, align 4
  %280 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 1), align 8
  %281 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %282 = getelementptr inbounds i32**, i32*** %280, i64 %281
  %283 = load i32**, i32*** %282, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 1
  store i32 0, i32* %286, align 4
  %287 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %290 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %291 = getelementptr inbounds i32*, i32** %289, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 %288, i32* %293, align 4
  %294 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %295 = load i32, i32* %294, align 4
  %296 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %297 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %298 = getelementptr inbounds i32*, i32** %296, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  store i32 %295, i32* %300, align 4
  %301 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %302 = load i32, i32* %301, align 4
  %303 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %304 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %305 = getelementptr inbounds i32*, i32** %303, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 2
  store i32 %302, i32* %307, align 4
  %308 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 2), align 8
  %309 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %310 = getelementptr inbounds i32*, i32** %308, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  store i32 255, i32* %312, align 4
  %313 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %314 = add i64 %313, 1
  store i64 %314, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 0), align 8
  %315 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 3), align 8
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 0, i32* %319, align 4
  %320 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 3), align 8
  %321 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %320, i64 %323
  store i32 1, i32* %324, align 4
  %325 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 3), align 8
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  store i32 2, i32* %329, align 4
  %330 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 3), align 8
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  store i32 0, i32* %334, align 4
  %335 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 3), align 8
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  store i32 2, i32* %339, align 4
  %340 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 3), align 8
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tess, i32 0, i32 4), align 8
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  store i32 3, i32* %344, align 4
  %345 = call i32 (...) @RB_EndSurface()
  ret void
}

declare dso_local i32 @VectorScale(i32, i32, i32*) #1

declare dso_local i32 @RB_BeginSurface(i32, i32) #1

declare dso_local i32 @RB_EndSurface(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
