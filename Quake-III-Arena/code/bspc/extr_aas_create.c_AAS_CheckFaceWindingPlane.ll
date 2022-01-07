; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_create.c_AAS_CheckFaceWindingPlane.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_create.c_AAS_CheckFaceWindingPlane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64 }
%struct.TYPE_5__ = type { i64, i32*, i32 }

@mapplanes = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [73 x i8] c"AAS_CheckFaceWindingPlane: face %d winding plane unequal to face plane\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"AAS_CheckFaceWindingPlane: face %d winding reversed\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AAS_CheckFaceWindingPlane(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = call i32 @WindingPlane(i32* %11, i64* %12, float* %3)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mapplanes, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %17
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = call float @DotProduct(i64* %21, i64* %22)
  store float %23, float* %4, align 4
  %24 = load float, float* %3, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to float
  %29 = fsub float %24, %28
  %30 = fptosi float %29 to i64
  %31 = call double @fabs(i64 %30)
  %32 = fcmp ogt double %31, 4.000000e-01
  br i1 %32, label %69, label %33

33:                                               ; preds = %1
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %36, %41
  %43 = call double @fabs(i64 %42)
  %44 = fcmp ogt double %43, 1.000000e-04
  br i1 %44, label %69, label %45

45:                                               ; preds = %33
  %46 = load i64*, i64** %6, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %48, %53
  %55 = call double @fabs(i64 %54)
  %56 = fcmp ogt double %55, 1.000000e-04
  br i1 %56, label %69, label %57

57:                                               ; preds = %45
  %58 = load i64*, i64** %6, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %60, %65
  %67 = call double @fabs(i64 %66)
  %68 = fcmp ogt double %67, 1.000000e-04
  br i1 %68, label %69, label %172

69:                                               ; preds = %57, %45, %33, %1
  %70 = load i64*, i64** %6, align 8
  %71 = call i32 @VectorInverse(i64* %70)
  %72 = load float, float* %3, align 4
  %73 = fneg float %72
  store float %73, float* %3, align 4
  %74 = load float, float* %3, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sitofp i64 %77 to float
  %79 = fsub float %74, %78
  %80 = fptosi float %79 to i64
  %81 = call double @fabs(i64 %80)
  %82 = fcmp ogt double %81, 4.000000e-01
  br i1 %82, label %119, label %83

83:                                               ; preds = %69
  %84 = load i64*, i64** %6, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %86, %91
  %93 = call double @fabs(i64 %92)
  %94 = fcmp ogt double %93, 1.000000e-04
  br i1 %94, label %119, label %95

95:                                               ; preds = %83
  %96 = load i64*, i64** %6, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %98, %103
  %105 = call double @fabs(i64 %104)
  %106 = fcmp ogt double %105, 1.000000e-04
  br i1 %106, label %119, label %107

107:                                              ; preds = %95
  %108 = load i64*, i64** %6, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %110, %115
  %117 = call double @fabs(i64 %116)
  %118 = fcmp ogt double %117, 1.000000e-04
  br i1 %118, label %119, label %156

119:                                              ; preds = %107, %95, %83, %69
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @Log_Write(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64*, i64** %6, align 8
  %128 = call float @DotProduct(i64* %126, i64* %127)
  store float %128, float* %5, align 4
  %129 = load float, float* %4, align 4
  %130 = fcmp olt float %129, 0.000000e+00
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load float, float* %5, align 4
  %133 = fcmp ogt float %132, 0.000000e+00
  br i1 %133, label %140, label %134

134:                                              ; preds = %131, %119
  %135 = load float, float* %4, align 4
  %136 = fcmp ogt float %135, 0.000000e+00
  br i1 %136, label %137, label %155

137:                                              ; preds = %134
  %138 = load float, float* %5, align 4
  %139 = fcmp olt float %138, 0.000000e+00
  br i1 %139, label %140, label %155

140:                                              ; preds = %137, %131
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @Log_Write(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  store i32* %147, i32** %8, align 8
  %148 = load i32*, i32** %8, align 8
  %149 = call i8* @ReverseWinding(i32* %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32* %150, i32** %152, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @FreeWinding(i32* %153)
  br label %155

155:                                              ; preds = %140, %137, %134
  br label %171

156:                                              ; preds = %107
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @Log_Write(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %8, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i8* @ReverseWinding(i32* %164)
  %166 = bitcast i8* %165 to i32*
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 1
  store i32* %166, i32** %168, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = call i32 @FreeWinding(i32* %169)
  br label %171

171:                                              ; preds = %156, %155
  br label %172

172:                                              ; preds = %171, %57
  ret void
}

declare dso_local i32 @WindingPlane(i32*, i64*, float*) #1

declare dso_local float @DotProduct(i64*, i64*) #1

declare dso_local double @fabs(i64) #1

declare dso_local i32 @VectorInverse(i64*) #1

declare dso_local i32 @Log_Write(i8*, i32) #1

declare dso_local i8* @ReverseWinding(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
