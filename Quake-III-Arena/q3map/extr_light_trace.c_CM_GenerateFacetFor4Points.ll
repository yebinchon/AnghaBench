; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_CM_GenerateFacetFor4Points.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light_trace.c_CM_GenerateFacetFor4Points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { float*, i32, float**, i32* }
%struct.TYPE_12__ = type { float* }

@qfalse = common dso_local global i32 0, align 4
@PLANAR_EPSILON = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CM_GenerateFacetFor4Points(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_12__* %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load float*, float** %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load float*, float** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load float*, float** %25, align 8
  %27 = call i32 @PlaneFromPoints(float* %17, float* %20, float* %23, float* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* @qfalse, align 4
  store i32 %32, i32* %6, align 4
  br label %214

33:                                               ; preds = %5
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load float*, float** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 8
  %40 = call double @DotProduct(float* %36, float* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 3
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = fsub double %40, %46
  %48 = fptrunc double %47 to float
  store float %48, float* %12, align 4
  %49 = load float, float* %12, align 4
  %50 = call i64 @fabs(float %49)
  %51 = load i64, i64* @PLANAR_EPSILON, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %33
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @qfalse, align 4
  store i32 %56, i32* %6, align 4
  br label %214

57:                                               ; preds = %33
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 4, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load float*, float** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load float*, float** %72, align 8
  %74 = call i32 @CM_GenerateBoundaryForPoints(i32 %64, float* %67, float* %70, float* %73)
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load float*, float** %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load float*, float** %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = call i32 @CM_GenerateBoundaryForPoints(i32 %79, float* %82, float* %85, float* %88)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load float*, float** %99, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load float*, float** %102, align 8
  %104 = call i32 @CM_GenerateBoundaryForPoints(i32 %94, float* %97, float* %100, float* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load float*, float** %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load float*, float** %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load float*, float** %117, align 8
  %119 = call i32 @CM_GenerateBoundaryForPoints(i32 %109, float* %112, float* %115, float* %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load float*, float** %121, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 2
  %125 = load float**, float*** %124, align 8
  %126 = getelementptr inbounds float*, float** %125, i64 0
  %127 = load float*, float** %126, align 8
  %128 = call i32 @VectorCopy(float* %122, float* %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load float*, float** %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 2
  %134 = load float**, float*** %133, align 8
  %135 = getelementptr inbounds float*, float** %134, i64 1
  %136 = load float*, float** %135, align 8
  %137 = call i32 @VectorCopy(float* %131, float* %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load float*, float** %139, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 2
  %143 = load float**, float*** %142, align 8
  %144 = getelementptr inbounds float*, float** %143, i64 2
  %145 = load float*, float** %144, align 8
  %146 = call i32 @VectorCopy(float* %140, float* %145)
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load float*, float** %148, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load float**, float*** %151, align 8
  %153 = getelementptr inbounds float*, float** %152, i64 3
  %154 = load float*, float** %153, align 8
  %155 = call i32 @VectorCopy(float* %149, float* %154)
  store i32 1, i32* %13, align 4
  br label %156

156:                                              ; preds = %204, %57
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 4
  br i1 %158, label %159, label %207

159:                                              ; preds = %156
  %160 = load float*, float** %14, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  %163 = load float**, float*** %162, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float*, float** %163, i64 %165
  %167 = load float*, float** %166, align 8
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load float**, float*** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  %173 = srem i32 %172, 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float*, float** %170, i64 %174
  %176 = load float*, float** %175, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 2
  %179 = load float**, float*** %178, align 8
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %180, 2
  %182 = srem i32 %181, 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float*, float** %179, i64 %183
  %185 = load float*, float** %184, align 8
  %186 = call i32 @PlaneFromPoints(float* %160, float* %167, float* %176, float* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %159
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 1
  store i32 0, i32* %190, align 8
  %191 = load i32, i32* @qfalse, align 4
  store i32 %191, i32* %6, align 4
  br label %214

192:                                              ; preds = %159
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 0
  %195 = load float*, float** %194, align 8
  %196 = load float*, float** %14, align 8
  %197 = call double @DotProduct(float* %195, float* %196)
  %198 = fcmp olt double %197, 9.000000e-01
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 1
  store i32 0, i32* %201, align 8
  %202 = load i32, i32* @qfalse, align 4
  store i32 %202, i32* %6, align 4
  br label %214

203:                                              ; preds = %192
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %156

207:                                              ; preds = %156
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %212 = call i32 @TextureMatrixFromPoints(%struct.TYPE_13__* %208, %struct.TYPE_12__* %209, %struct.TYPE_12__* %210, %struct.TYPE_12__* %211)
  %213 = load i32, i32* @qtrue, align 4
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %207, %199, %188, %53, %29
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i32 @PlaneFromPoints(float*, float*, float*, float*) #1

declare dso_local double @DotProduct(float*, float*) #1

declare dso_local i64 @fabs(float) #1

declare dso_local i32 @CM_GenerateBoundaryForPoints(i32, float*, float*, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i32 @TextureMatrixFromPoints(%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
