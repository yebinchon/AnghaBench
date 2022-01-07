; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_get_current_rate.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_get_current_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, float, i64, i32, i32, i64, i32, i64*, float*, i32, float }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Policy is weird!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @get_current_rate(%struct.TYPE_4__* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i64 @get_current_batch(%struct.TYPE_4__* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load float, float* %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = uitofp i64 %18 to float
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = uitofp i64 %22 to float
  %24 = fdiv float %19, %23
  %25 = fptosi float %24 to i32
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call float @pow(i32 %25, i64 %28)
  %30 = fmul float %17, %29
  store float %30, float* %2, align 4
  br label %155

31:                                               ; preds = %1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %149 [
    i32 134, label %35
    i32 129, label %39
    i32 128, label %53
    i32 133, label %90
    i32 132, label %100
    i32 131, label %117
    i32 130, label %127
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load float, float* %37, align 8
  store float %38, float* %2, align 4
  br label %155

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load float, float* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = udiv i64 %46, %49
  %51 = call float @pow(i32 %45, i64 %50)
  %52 = fmul float %42, %51
  store float %52, float* %2, align 4
  br label %155

53:                                               ; preds = %31
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load float, float* %55, align 8
  store float %56, float* %6, align 4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %85, %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %57
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 7
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load float, float* %6, align 4
  store float %74, float* %2, align 4
  br label %155

75:                                               ; preds = %63
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 8
  %78 = load float*, float** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = load float, float* %6, align 4
  %84 = fmul float %83, %82
  store float %84, float* %6, align 4
  br label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %57

88:                                               ; preds = %57
  %89 = load float, float* %6, align 4
  store float %89, float* %2, align 4
  br label %155

90:                                               ; preds = %31
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load float, float* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %4, align 8
  %98 = call float @pow(i32 %96, i64 %97)
  %99 = fmul float %93, %98
  store float %99, float* %2, align 4
  br label %155

100:                                              ; preds = %31
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load float, float* %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = uitofp i64 %104 to float
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 10
  %108 = load float, float* %107, align 4
  %109 = fdiv float %105, %108
  %110 = fsub float 1.000000e+00, %109
  %111 = fptosi float %110 to i32
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = call float @pow(i32 %111, i64 %114)
  %116 = fmul float %103, %115
  store float %116, float* %2, align 4
  br label %155

117:                                              ; preds = %31
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load float, float* %119, align 8
  %121 = call i32 @rand_uniform(i32 0, i32 1)
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call float @pow(i32 %121, i64 %124)
  %126 = fmul float %120, %125
  store float %126, float* %2, align 4
  br label %155

127:                                              ; preds = %31
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load float, float* %129, align 8
  %131 = fpext float %130 to double
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %4, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %136, %139
  %141 = mul i64 %135, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @exp(i32 %142)
  %144 = sitofp i32 %143 to double
  %145 = fadd double 1.000000e+00, %144
  %146 = fdiv double 1.000000e+00, %145
  %147 = fmul double %131, %146
  %148 = fptrunc double %147 to float
  store float %148, float* %2, align 4
  br label %155

149:                                              ; preds = %31
  %150 = load i32, i32* @stderr, align 4
  %151 = call i32 @fprintf(i32 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load float, float* %153, align 8
  store float %154, float* %2, align 4
  br label %155

155:                                              ; preds = %149, %127, %117, %100, %90, %88, %73, %39, %35, %14
  %156 = load float, float* %2, align 4
  ret float %156
}

declare dso_local i64 @get_current_batch(%struct.TYPE_4__*) #1

declare dso_local float @pow(i32, i64) #1

declare dso_local i32 @rand_uniform(i32, i32) #1

declare dso_local i32 @exp(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
