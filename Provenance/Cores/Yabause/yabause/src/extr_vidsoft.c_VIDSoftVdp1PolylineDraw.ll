; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1PolylineDraw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_VIDSoftVdp1PolylineDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64 }

@gouraudA = common dso_local global i32 0, align 4
@gouraudB = common dso_local global i32 0, align 4
@gouraudC = common dso_local global i32 0, align 4
@gouraudD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDSoftVdp1PolylineDraw(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @Vdp1ReadCommand(i32* %13, i32 %16, i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 12
  %28 = call i64 @T1ReadWord(i32* %23, i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = add nsw i32 %22, %29
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 14
  %41 = call i64 @T1ReadWord(i32* %36, i32 %40)
  %42 = trunc i64 %41 to i32
  %43 = add nsw i32 %35, %42
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %43, i32* %44, align 16
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %4, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 16
  %54 = call i64 @T1ReadWord(i32* %49, i32 %53)
  %55 = trunc i64 %54 to i32
  %56 = add nsw i32 %48, %55
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 18
  %67 = call i64 @T1ReadWord(i32* %62, i32 %66)
  %68 = trunc i64 %67 to i32
  %69 = add nsw i32 %61, %68
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 20
  %80 = call i64 @T1ReadWord(i32* %75, i32 %79)
  %81 = trunc i64 %80 to i32
  %82 = add nsw i32 %74, %81
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %82, i32* %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 22
  %93 = call i64 @T1ReadWord(i32* %88, i32 %92)
  %94 = trunc i64 %93 to i32
  %95 = add nsw i32 %87, %94
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %95, i32* %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 24
  %106 = call i64 @T1ReadWord(i32* %101, i32 %105)
  %107 = trunc i64 %106 to i32
  %108 = add nsw i32 %100, %107
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %108, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 26
  %119 = call i64 @T1ReadWord(i32* %114, i32 %118)
  %120 = trunc i64 %119 to i32
  %121 = add nsw i32 %113, %120
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %126 = load i32, i32* %125, align 16
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @iterateOverLine(i32 %124, i32 %126, i32 %128, i32 %130, i32 1, i32* null, i32* null, %struct.TYPE_6__* %131, i32* %13, i32* %132, i32* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @gouraudA, align 4
  %137 = load i32, i32* @gouraudB, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %135, i32 %136, i32 %137, i32* %138, %struct.TYPE_6__* %139, i32* %13, i32* %140)
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %145 = load i32, i32* %144, align 16
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load double, double* %9, align 8
  %151 = load double, double* %10, align 8
  %152 = load double, double* %11, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @DrawLine(i32 %143, i32 %145, i32 %147, i32 %149, i32 0, i32 0, i32 0, double %150, double %151, double %152, %struct.TYPE_6__* %153, i32* %13, i32* %154, i32* %155)
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 @iterateOverLine(i32 %158, i32 %160, i32 %162, i32 %164, i32 1, i32* null, i32* null, %struct.TYPE_6__* %165, i32* %13, i32* %166, i32* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @gouraudB, align 4
  %171 = load i32, i32* @gouraudC, align 4
  %172 = load i32*, i32** %4, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = load i32*, i32** %6, align 8
  %175 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %169, i32 %170, i32 %171, i32* %172, %struct.TYPE_6__* %173, i32* %13, i32* %174)
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %183 = load i32, i32* %182, align 8
  %184 = load double, double* %9, align 8
  %185 = load double, double* %10, align 8
  %186 = load double, double* %11, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %188 = load i32*, i32** %4, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @DrawLine(i32 %177, i32 %179, i32 %181, i32 %183, i32 0, i32 0, i32 0, double %184, double %185, double %186, %struct.TYPE_6__* %187, i32* %13, i32* %188, i32* %189)
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %192 = load i32, i32* %191, align 8
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 @iterateOverLine(i32 %192, i32 %194, i32 %196, i32 %198, i32 1, i32* null, i32* null, %struct.TYPE_6__* %199, i32* %13, i32* %200, i32* %201)
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @gouraudD, align 4
  %205 = load i32, i32* @gouraudC, align 4
  %206 = load i32*, i32** %4, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %208 = load i32*, i32** %6, align 8
  %209 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %203, i32 %204, i32 %205, i32* %206, %struct.TYPE_6__* %207, i32* %13, i32* %208)
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %215 = load i32, i32* %214, align 8
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %217 = load i32, i32* %216, align 8
  %218 = load double, double* %9, align 8
  %219 = load double, double* %10, align 8
  %220 = load double, double* %11, align 8
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %222 = load i32*, i32** %4, align 8
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @DrawLine(i32 %211, i32 %213, i32 %215, i32 %217, i32 0, i32 0, i32 0, double %218, double %219, double %220, %struct.TYPE_6__* %221, i32* %13, i32* %222, i32* %223)
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %230 = load i32, i32* %229, align 16
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %232 = load i32, i32* %231, align 16
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = load i32*, i32** %4, align 8
  %235 = load i32*, i32** %6, align 8
  %236 = call i32 @iterateOverLine(i32 %226, i32 %228, i32 %230, i32 %232, i32 1, i32* null, i32* null, %struct.TYPE_6__* %233, i32* %13, i32* %234, i32* %235)
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @gouraudA, align 4
  %239 = load i32, i32* @gouraudD, align 4
  %240 = load i32*, i32** %4, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %242 = load i32*, i32** %6, align 8
  %243 = call i32 @gouraudLineSetup(double* %9, double* %10, double* %11, i32 %237, i32 %238, i32 %239, i32* %240, %struct.TYPE_6__* %241, i32* %13, i32* %242)
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %245 = load i32, i32* %244, align 16
  %246 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %247 = load i32, i32* %246, align 16
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = load double, double* %9, align 8
  %253 = load double, double* %10, align 8
  %254 = load double, double* %11, align 8
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %256 = load i32*, i32** %4, align 8
  %257 = load i32*, i32** %6, align 8
  %258 = call i32 @DrawLine(i32 %245, i32 %247, i32 %249, i32 %251, i32 0, i32 0, i32 0, double %252, double %253, double %254, %struct.TYPE_6__* %255, i32* %13, i32* %256, i32* %257)
  ret void
}

declare dso_local i32 @Vdp1ReadCommand(i32*, i32, i32*) #1

declare dso_local i64 @T1ReadWord(i32*, i32) #1

declare dso_local i32 @iterateOverLine(i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @gouraudLineSetup(double*, double*, double*, i32, i32, i32, i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @DrawLine(i32, i32, i32, i32, i32, i32, i32, double, double, double, %struct.TYPE_6__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
