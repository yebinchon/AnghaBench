; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_IntersectTrianglePlanes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_tetrahedron.c_TH_IntersectTrianglePlanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { float* }
%struct.TYPE_7__ = type { float, i32 }

@thworld = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TH_IntersectTrianglePlanes(i32 %0, i32 %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @thworld, i32 0, i32 0), align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  store float* %25, float** %10, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @thworld, i32 0, i32 0), align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float* %31, float** %11, align 8
  %32 = load float*, float** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call float @DotProduct(float* %32, i32 %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load float, float* %38, align 4
  %40 = fsub float %36, %39
  store float %40, float* %12, align 4
  %41 = load float*, float** %11, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call float @DotProduct(float* %41, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = fsub float %45, %48
  store float %49, float* %13, align 4
  %50 = load float, float* %12, align 4
  %51 = fpext float %50 to double
  %52 = fcmp olt double %51, 1.000000e-01
  br i1 %52, label %53, label %58

53:                                               ; preds = %4
  %54 = load float, float* %13, align 4
  %55 = fpext float %54 to double
  %56 = fcmp olt double %55, 1.000000e-01
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %153

58:                                               ; preds = %53, %4
  %59 = load float, float* %12, align 4
  %60 = fpext float %59 to double
  %61 = fcmp ogt double %60, -1.000000e-01
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load float, float* %13, align 4
  %64 = fpext float %63 to double
  %65 = fcmp ogt double %64, -1.000000e-01
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %153

67:                                               ; preds = %62, %58
  %68 = load float, float* %12, align 4
  %69 = load float, float* %12, align 4
  %70 = load float, float* %13, align 4
  %71 = fsub float %69, %70
  %72 = fdiv float %68, %71
  store float %72, float* %14, align 4
  %73 = load float*, float** %10, align 8
  %74 = getelementptr inbounds float, float* %73, i64 0
  %75 = load float, float* %74, align 4
  %76 = load float*, float** %11, align 8
  %77 = getelementptr inbounds float, float* %76, i64 0
  %78 = load float, float* %77, align 4
  %79 = load float*, float** %10, align 8
  %80 = getelementptr inbounds float, float* %79, i64 0
  %81 = load float, float* %80, align 4
  %82 = fsub float %78, %81
  %83 = load float, float* %14, align 4
  %84 = fmul float %82, %83
  %85 = fadd float %75, %84
  %86 = load float*, float** %19, align 8
  %87 = getelementptr inbounds float, float* %86, i64 0
  store float %85, float* %87, align 4
  %88 = load float*, float** %10, align 8
  %89 = getelementptr inbounds float, float* %88, i64 1
  %90 = load float, float* %89, align 4
  %91 = load float*, float** %11, align 8
  %92 = getelementptr inbounds float, float* %91, i64 1
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %10, align 8
  %95 = getelementptr inbounds float, float* %94, i64 1
  %96 = load float, float* %95, align 4
  %97 = fsub float %93, %96
  %98 = load float, float* %14, align 4
  %99 = fmul float %97, %98
  %100 = fadd float %90, %99
  %101 = load float*, float** %19, align 8
  %102 = getelementptr inbounds float, float* %101, i64 1
  store float %100, float* %102, align 4
  %103 = load float*, float** %10, align 8
  %104 = getelementptr inbounds float, float* %103, i64 2
  %105 = load float, float* %104, align 4
  %106 = load float*, float** %11, align 8
  %107 = getelementptr inbounds float, float* %106, i64 2
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %10, align 8
  %110 = getelementptr inbounds float, float* %109, i64 2
  %111 = load float, float* %110, align 4
  %112 = fsub float %108, %111
  %113 = load float, float* %14, align 4
  %114 = fmul float %112, %113
  %115 = fadd float %105, %114
  %116 = load float*, float** %19, align 8
  %117 = getelementptr inbounds float, float* %116, i64 2
  store float %115, float* %117, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %149, %67
  %119 = load i32, i32* %16, align 4
  %120 = icmp slt i32 %119, 3
  br i1 %120, label %121, label %152

121:                                              ; preds = %118
  %122 = load float*, float** %19, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call float @DotProduct(float* %122, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load float, float* %134, align 4
  %136 = fsub float %129, %135
  store float %136, float* %15, align 4
  %137 = load float, float* %15, align 4
  %138 = fcmp olt float %137, 0.000000e+00
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %121
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  br label %153

147:                                              ; preds = %142, %121
  %148 = load i32, i32* %17, align 4
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %147
  %150 = load i32, i32* %16, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %16, align 4
  br label %118

152:                                              ; preds = %118
  store i32 1, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %146, %66, %57
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local float @DotProduct(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
