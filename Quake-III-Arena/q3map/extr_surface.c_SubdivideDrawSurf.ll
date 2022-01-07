; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SubdivideDrawSurf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_SubdivideDrawSurf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"SubdivideDrawSurf: Bad w->numpoints\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SubdivideDrawSurf(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, float %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x float*], align 16
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store float %2, float* %6, align 4
  store float 0x3FB99999A0000000, float* %10, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %148

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @Error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = getelementptr inbounds [2 x float*], [2 x float*]* %9, i64 0, i64 0
  %31 = load float*, float** %30, align 16
  %32 = getelementptr inbounds [2 x float*], [2 x float*]* %9, i64 0, i64 1
  %33 = load float*, float** %32, align 8
  %34 = call i32 @ClearBounds(float* %31, float* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %54, %29
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x float*], [2 x float*]* %9, i64 0, i64 0
  %50 = load float*, float** %49, align 16
  %51 = getelementptr inbounds [2 x float*], [2 x float*]* %9, i64 0, i64 1
  %52 = load float*, float** %51, align 8
  %53 = call i32 @AddPointToBounds(i32 %48, float* %50, float* %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %35

57:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %131, %57
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %134

61:                                               ; preds = %58
  store float* null, float** %16, align 8
  store float* null, float** %17, align 8
  %62 = getelementptr inbounds [2 x float*], [2 x float*]* %9, i64 0, i64 0
  %63 = load float*, float** %62, align 16
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float, float* %6, align 4
  %69 = fdiv float %67, %68
  %70 = call float @floor(float %69)
  %71 = load float, float* %6, align 4
  %72 = fmul float %70, %71
  %73 = fptosi float %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = getelementptr inbounds [2 x float*], [2 x float*]* %9, i64 0, i64 1
  %75 = load float*, float** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load float, float* %6, align 4
  %81 = fdiv float %79, %80
  %82 = call float @ceil(float %81)
  %83 = load float, float* %6, align 4
  %84 = fmul float %82, %83
  %85 = fptosi float %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sitofp i32 %86 to float
  %88 = load float, float* %6, align 4
  %89 = fadd float %87, %88
  %90 = load float*, float** %16, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float %89, float* %93, align 4
  %94 = load float*, float** %17, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float -1.000000e+00, float* %97, align 4
  %98 = load float*, float** %16, align 8
  %99 = load float*, float** %17, align 8
  %100 = call float @DotProduct(float* %98, float* %99)
  store float %100, float* %18, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sitofp i32 %103 to float
  %105 = load float, float* %6, align 4
  %106 = fcmp ogt float %104, %105
  br i1 %106, label %107, label %130

107:                                              ; preds = %61
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = load float*, float** %17, align 8
  %110 = load float, float* %18, align 4
  %111 = call i32 @ClipWindingEpsilon(%struct.TYPE_10__* %108, float* %109, float %110, float 0x3FB99999A0000000, %struct.TYPE_10__** %13, %struct.TYPE_10__** %14)
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = icmp ne %struct.TYPE_10__* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %107
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %5, align 8
  br label %129

116:                                              ; preds = %107
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %120, %struct.TYPE_10__** %5, align 8
  br label %128

121:                                              ; preds = %116
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = load float, float* %6, align 4
  call void @SubdivideDrawSurf(%struct.TYPE_11__* %122, %struct.TYPE_10__* %123, float %124)
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %127 = load float, float* %6, align 4
  call void @SubdivideDrawSurf(%struct.TYPE_11__* %125, %struct.TYPE_10__* %126, float %127)
  br label %148

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %114
  br label %130

130:                                              ; preds = %129, %61
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %58

134:                                              ; preds = %58
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %142 = call %struct.TYPE_11__* @DrawSurfaceForSide(i32 %137, i32 %140, %struct.TYPE_10__* %141)
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %15, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %134, %121, %21
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @ClearBounds(float*, float*) #1

declare dso_local i32 @AddPointToBounds(i32, float*, float*) #1

declare dso_local float @floor(float) #1

declare dso_local float @ceil(float) #1

declare dso_local float @DotProduct(float*, float*) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_10__*, float*, float, float, %struct.TYPE_10__**, %struct.TYPE_10__**) #1

declare dso_local %struct.TYPE_11__* @DrawSurfaceForSide(i32, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
