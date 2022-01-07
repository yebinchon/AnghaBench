; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_PointToPolygonFormFactor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_PointToPolygonFormFactor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32** }

@MAX_POINTS_ON_WINDING = common dso_local global i32 0, align 4
@PointToPolygonFormFactor.printed = internal global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [87 x i8] c"WARNING: bad PointToPolygonFormFactor: %f at %1.1f %1.1f %1.1f from %1.1f %1.1f %1.1f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @PointToPolygonFormFactor(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %19 = load i32, i32* @MAX_POINTS_ON_WINDING, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %52, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %22, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @VectorSubtract(i32* %36, i32* %37, i32* %41)
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %22, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %22, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call double @VectorNormalize(i32* %46, i32* %50)
  br label %52

52:                                               ; preds = %29
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %23

55:                                               ; preds = %23
  %56 = getelementptr inbounds i32*, i32** %22, i64 0
  %57 = load i32*, i32** %56, align 16
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %22, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @VectorCopy(i32* %57, i32* %61)
  store float 0.000000e+00, float* %14, align 4
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %170, %55
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %173

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %22, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %22, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call float @DotProduct(i32* %75, i32* %79)
  store float %80, float* %15, align 4
  %81 = load float, float* %15, align 4
  %82 = fpext float %81 to double
  %83 = fcmp ogt double %82, 1.000000e+00
  br i1 %83, label %84, label %85

84:                                               ; preds = %69
  store float 1.000000e+00, float* %15, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load float, float* %15, align 4
  %87 = fpext float %86 to double
  %88 = fcmp olt double %87, -1.000000e+00
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store float -1.000000e+00, float* %15, align 4
  br label %90

90:                                               ; preds = %89, %85
  br label %91

91:                                               ; preds = %90, %84
  %92 = load float, float* %15, align 4
  %93 = call float @acos(float %92)
  store float %93, float* %16, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %22, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %22, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @CrossProduct(i32* %97, i32* %101, i32* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = call double @VectorNormalize(i32* %104, i32* %105)
  %107 = fcmp olt double %106, 1.000000e-04
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %170

109:                                              ; preds = %91
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call float @DotProduct(i32* %110, i32* %111)
  store float %112, float* %17, align 4
  %113 = load float, float* %17, align 4
  %114 = load float, float* %16, align 4
  %115 = fmul float %113, %114
  %116 = load float, float* %14, align 4
  %117 = fadd float %116, %115
  store float %117, float* %14, align 4
  %118 = load float, float* %14, align 4
  %119 = fpext float %118 to double
  %120 = fcmp ogt double %119, 6.300000e+00
  br i1 %120, label %125, label %121

121:                                              ; preds = %109
  %122 = load float, float* %14, align 4
  %123 = fpext float %122 to double
  %124 = fcmp olt double %123, -6.300000e+00
  br i1 %124, label %125, label %169

125:                                              ; preds = %121, %109
  %126 = load i64, i64* @PointToPolygonFormFactor.printed, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %168, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* @qtrue, align 8
  store i64 %129, i64* @PointToPolygonFormFactor.printed, align 8
  %130 = load float, float* %14, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @_printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), float %130, i32 %139, i32 %148, i32 %157, i32 %160, i32 %163, i32 %166)
  br label %168

168:                                              ; preds = %128, %125
  store float 0.000000e+00, float* %4, align 4
  store i32 1, i32* %18, align 4
  br label %179

169:                                              ; preds = %121
  br label %170

170:                                              ; preds = %169, %108
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %63

173:                                              ; preds = %63
  %174 = load float, float* %14, align 4
  %175 = fpext float %174 to double
  %176 = fdiv double %175, 0x401921FB54B95997
  %177 = fptrunc double %176 to float
  store float %177, float* %14, align 4
  %178 = load float, float* %14, align 4
  store float %178, float* %4, align 4
  store i32 1, i32* %18, align 4
  br label %179

179:                                              ; preds = %173, %168
  %180 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load float, float* %4, align 4
  ret float %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #2

declare dso_local double @VectorNormalize(i32*, i32*) #2

declare dso_local i32 @VectorCopy(i32*, i32*) #2

declare dso_local float @DotProduct(i32*, i32*) #2

declare dso_local float @acos(float) #2

declare dso_local i32 @CrossProduct(i32*, i32*, i32*) #2

declare dso_local i32 @_printf(i8*, float, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
