; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_valid_go.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_valid_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double, double, double }
%struct.TYPE_8__ = type { i32, i8** }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Learning Rate: %g, Momentum: %g, Decay: %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%d Accuracy %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @valid_go(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %24 = call i32 @time(i32 0)
  %25 = call i32 @srand(i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i8* @basecfg(i8* %26)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.TYPE_7__* @load_network(i8* %30, i8* %31, i32 0)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = call i32 @set_batch_network(%struct.TYPE_7__* %33, i32 1)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load double, double* %39, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load double, double* %42, align 8
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), double %37, double %40, double %43)
  %45 = call float* @calloc(i32 1083, i32 4)
  store float* %45, float** %11, align 8
  %46 = call float* @calloc(i32 363, i32 4)
  store float* %46, float** %12, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call { i32, i8** } @load_go_moves(i8* %47)
  %49 = bitcast %struct.TYPE_8__* %13 to { i32, i8** }*
  %50 = getelementptr inbounds { i32, i8** }, { i32, i8** }* %49, i32 0, i32 0
  %51 = extractvalue { i32, i8** } %48, 0
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds { i32, i8** }, { i32, i8** }* %49, i32 0, i32 1
  %53 = extractvalue { i32, i8** } %48, 1
  store i8** %53, i8*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %128, %4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %18, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %19, align 4
  %72 = load i8*, i8** %18, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  store i32 %75, i32* %20, align 4
  %76 = load i8*, i8** %18, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %20, align 4
  %82 = mul nsw i32 19, %81
  %83 = add nsw i32 %80, %82
  store i32 %83, i32* %22, align 4
  %84 = load i8*, i8** %18, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load float*, float** %11, align 8
  %87 = call i32 @string_to_board(i8* %85, float* %86)
  %88 = load i32, i32* %19, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %60
  store i32 0, i32* %16, align 4
  br label %91

91:                                               ; preds = %100, %90
  %92 = load i32, i32* %16, align 4
  %93 = icmp slt i32 %92, 361
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load float*, float** %11, align 8
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 722, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %95, i64 %98
  store float 1.000000e+00, float* %99, align 4
  br label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %91

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %60
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %106 = load float*, float** %11, align 8
  %107 = load float*, float** %12, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @predict_move2(%struct.TYPE_7__* %105, float* %106, float* %107, i32 %108)
  %110 = load float*, float** %12, align 8
  %111 = call i32 @max_index(float* %110, i32 362)
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %23, align 4
  %113 = load i32, i32* %22, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %115, %104
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %17, align 4
  %121 = sitofp i32 %120 to float
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  %124 = sitofp i32 %123 to float
  %125 = fdiv float %121, %124
  %126 = fpext float %125 to double
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %119, double %126)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %56

131:                                              ; preds = %56
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i8* @basecfg(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_7__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_7__*, i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local { i32, i8** } @load_go_moves(i8*) #1

declare dso_local i32 @string_to_board(i8*, float*) #1

declare dso_local i32 @predict_move2(%struct.TYPE_7__*, float*, float*, i32) #1

declare dso_local i32 @max_index(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
