; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_get_rnn_token_data.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_get_rnn_token_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float* }

@.str = private unnamed_addr constant [9 x i8] c"Bad char\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { float*, float* } @get_rnn_token_data(i32* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call float* @calloc(i32 %24, i32 4)
  store float* %25, float** %14, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call float* @calloc(i32 %30, i32 4)
  store float* %31, float** %15, align 8
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %119, %6
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %122

36:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %115, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %118

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = urem i64 %47, %48
  %50 = getelementptr inbounds i32, i32* %42, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %18, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  %59 = load i64, i64* %11, align 8
  %60 = urem i64 %58, %59
  %61 = getelementptr inbounds i32, i32* %52, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %19, align 4
  %63 = load float*, float** %14, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %63, i64 %73
  store float 1.000000e+00, float* %74, align 4
  %75 = load float*, float** %15, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %12, align 4
  %78 = mul nsw i32 %76, %77
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %75, i64 %85
  store float 1.000000e+00, float* %86, align 4
  %87 = load i64*, i64** %9, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  %93 = load i64, i64* %11, align 8
  %94 = urem i64 %92, %93
  %95 = load i64*, i64** %9, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  store i64 %94, i64* %98, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %112, label %102

102:                                              ; preds = %41
  %103 = load i32, i32* %18, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %105, %102, %41
  %113 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %109
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  br label %37

118:                                              ; preds = %37
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %16, align 4
  br label %32

122:                                              ; preds = %32
  %123 = load float*, float** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store float* %123, float** %124, align 8
  %125 = load float*, float** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store float* %125, float** %126, align 8
  %127 = bitcast %struct.TYPE_3__* %7 to { float*, float* }*
  %128 = load { float*, float* }, { float*, float* }* %127, align 8
  ret { float*, float* } %128
}

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
