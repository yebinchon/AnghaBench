; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_network_predict_data_multi.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_network_predict_data_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { float** }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float** @network_predict_data_multi(%struct.TYPE_11__* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = bitcast %struct.TYPE_13__* %6 to { i64, i32* }*
  %17 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %16, i32 0, i32 0
  store i64 %1, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %16, i32 0, i32 1
  store i32* %2, i32** %18, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call float** @make_matrix(i32 %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store float** %26, float*** %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = call float* @calloc(i32 %34, i32 4)
  store float* %35, float** %14, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %153, %4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %159

42:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %86

58:                                               ; preds = %49
  %59 = load float*, float** %14, align 8
  %60 = load i32, i32* %11, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %59, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(float* %66, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %58
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %43

86:                                               ; preds = %57, %43
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %149, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %152

91:                                               ; preds = %87
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = load float*, float** %14, align 8
  %94 = call float* @network_predict(%struct.TYPE_11__* %92, float* %93)
  store float* %94, float** %15, align 8
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %145, %91
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %148

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %102, %103
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %148

110:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %111

111:                                              ; preds = %141, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %144

115:                                              ; preds = %111
  %116 = load float*, float** %15, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %13, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %117, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %116, i64 %122
  %124 = load float, float* %123, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sitofp i32 %125 to float
  %127 = fdiv float %124, %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %129 = load float**, float*** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float*, float** %129, i64 %133
  %135 = load float*, float** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fadd float %139, %127
  store float %140, float* %138, align 4
  br label %141

141:                                              ; preds = %115
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %111

144:                                              ; preds = %111
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %95

148:                                              ; preds = %109, %95
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %87

152:                                              ; preds = %87
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %9, align 4
  br label %36

159:                                              ; preds = %36
  %160 = load float*, float** %14, align 8
  %161 = call i32 @free(float* %160)
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %163 = load float**, float*** %162, align 8
  ret float** %163
}

declare dso_local float** @make_matrix(i32, i32) #1

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(float*, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_11__*, float*) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
