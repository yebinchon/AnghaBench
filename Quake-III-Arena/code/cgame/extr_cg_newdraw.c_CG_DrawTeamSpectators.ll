; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawTeamSpectators.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawTeamSpectators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i64, i64, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@cg = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawTeamSpectators(%struct.TYPE_4__* %0, float %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %156

13:                                               ; preds = %4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 1), align 8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 1), align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 0), align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 5), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 6), align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 5), align 8
  %36 = add nsw i64 %35, 10
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 6), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 2
  %42 = icmp sle i32 %37, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %34
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 0), align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 7), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load float, float* %6, align 4
  %52 = call i32 @CG_Text_Width(i32* %50, float %51, i32 1)
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  br label %73

58:                                               ; preds = %43
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  br label %72

63:                                               ; preds = %58
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  br label %72

72:                                               ; preds = %63, %61
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  br label %73

73:                                               ; preds = %72, %47
  br label %83

74:                                               ; preds = %34
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83, %30
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = sub nsw i32 %91, 2
  %93 = sitofp i32 %92 to float
  store float %93, float* %9, align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 2), align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = sub nsw i64 %101, 3
  %103 = load float, float* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 7), align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i32 @CG_Text_Paint_Limit(float* %9, i32 %94, i64 %102, float %103, i32 %104, i32* %107, i32 0, i64 0)
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %84
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %114, %117
  %119 = sub nsw i32 %118, 2
  %120 = sitofp i32 %119 to float
  store float %120, float* %10, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = sub nsw i64 %128, 3
  %130 = load float, float* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 7), align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %134 = call i32 @CG_Text_Paint_Limit(float* %10, i32 %121, i64 %129, float %130, i32 %131, i32* %132, i32 0, i64 %133)
  br label %135

135:                                              ; preds = %111, %84
  %136 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 4), align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load float, float* %9, align 4
  %140 = fcmp ogt float %139, 0.000000e+00
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %147, %150
  %152 = sub nsw i32 %151, 2
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  br label %153

153:                                              ; preds = %144, %141
  br label %155

154:                                              ; preds = %138, %135
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cg, i32 0, i32 3), align 8
  br label %155

155:                                              ; preds = %154, %153
  br label %156

156:                                              ; preds = %155, %4
  ret void
}

declare dso_local i32 @CG_Text_Width(i32*, float, i32) #1

declare dso_local i32 @CG_Text_Paint_Limit(float*, i32, i64, float, i32, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
