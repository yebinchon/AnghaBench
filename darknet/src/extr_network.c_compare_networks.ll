; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_compare_networks.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_compare_networks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"%5d %5d\0A%5d %5d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compare_networks(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = bitcast %struct.TYPE_9__* %5 to { i32, i32* }*
  %21 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 0
  store i32 %2, i32* %21, align 8
  %22 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %20, i32 0, i32 1
  store i32* %3, i32** %22, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast %struct.TYPE_9__* %5 to { i32, i32* }*
  %25 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %24, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call { i64, i32* } @network_predict_data(i32* %23, i32 %26, i32* %28)
  %30 = bitcast %struct.TYPE_8__* %8 to { i64, i32* }*
  %31 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i32* } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i32* } %29, 1
  store i32* %34, i32** %33, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = bitcast %struct.TYPE_9__* %5 to { i32, i32* }*
  %37 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %36, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call { i64, i32* } @network_predict_data(i32* %35, i32 %38, i32* %40)
  %42 = bitcast %struct.TYPE_8__* %9 to { i64, i32* }*
  %43 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %42, i32 0, i32 0
  %44 = extractvalue { i64, i32* } %41, 0
  store i64 %44, i64* %43, align 8
  %45 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %42, i32 0, i32 1
  %46 = extractvalue { i64, i32* } %41, 1
  store i32* %46, i32** %45, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %108, %4
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %111

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @max_index(i32 %59, i32 %62)
  store i32 %63, i32* %15, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @max_index(i32 %69, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @max_index(i32 %78, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %52
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %107

96:                                               ; preds = %52
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %106

103:                                              ; preds = %96
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %47

111:                                              ; preds = %47
  %112 = load i32, i32* %11, align 4
  %113 = sitofp i32 %112 to float
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), float %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 %118, %119
  %121 = call i64 @abs(i32 %120)
  %122 = sitofp i64 %121 to double
  %123 = fsub double %122, 1.000000e+00
  %124 = fptosi double %123 to i64
  %125 = call float @pow(i64 %124, i32 2)
  store float %125, float* %18, align 4
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %126, %127
  %129 = sitofp i32 %128 to float
  store float %129, float* %19, align 4
  %130 = load float, float* %18, align 4
  %131 = load float, float* %19, align 4
  %132 = fdiv float %130, %131
  %133 = call i32 (i8*, float, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), float %132)
  ret void
}

declare dso_local { i64, i32* } @network_predict_data(i32*, i32, i32*) #1

declare dso_local i32 @max_index(i32, i32) #1

declare dso_local i32 @printf(i8*, float, ...) #1

declare dso_local float @pow(i64, i32) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
