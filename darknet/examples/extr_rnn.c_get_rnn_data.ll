; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_get_rnn_data.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_get_rnn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float* }

@.str = private unnamed_addr constant [9 x i8] c"Bad char\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { float*, float* } @get_rnn_data(i8* %0, i64* %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
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

32:                                               ; preds = %123, %6
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %126

36:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %119, %36
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %122

41:                                               ; preds = %37
  %42 = load i8*, i8** %8, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = urem i64 %47, %48
  %50 = getelementptr inbounds i8, i8* %42, i64 %49
  %51 = load i8, i8* %50, align 1
  store i8 %51, i8* %18, align 1
  %52 = load i8*, i8** %8, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  %59 = load i64, i64* %11, align 8
  %60 = urem i64 %58, %59
  %61 = getelementptr inbounds i8, i8* %52, i64 %60
  %62 = load i8, i8* %61, align 1
  store i8 %62, i8* %19, align 1
  %63 = load float*, float** %14, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i8, i8* %18, align 1
  %72 = zext i8 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %63, i64 %74
  store float 1.000000e+00, float* %75, align 4
  %76 = load float*, float** %15, align 8
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i8, i8* %19, align 1
  %85 = zext i8 %84 to i32
  %86 = add nsw i32 %83, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %76, i64 %87
  store float 1.000000e+00, float* %88, align 4
  %89 = load i64*, i64** %9, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, 1
  %95 = load i64, i64* %11, align 8
  %96 = urem i64 %94, %95
  %97 = load i64*, i64** %9, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %96, i64* %100, align 8
  %101 = load i8, i8* %18, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sgt i32 %102, 255
  br i1 %103, label %116, label %104

104:                                              ; preds = %41
  %105 = load i8, i8* %18, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load i8, i8* %19, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp sgt i32 %110, 255
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i8, i8* %19, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %108, %104, %41
  %117 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %112
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %37

122:                                              ; preds = %37
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %32

126:                                              ; preds = %32
  %127 = load float*, float** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store float* %127, float** %128, align 8
  %129 = load float*, float** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store float* %129, float** %130, align 8
  %131 = bitcast %struct.TYPE_3__* %7 to { float*, float* }*
  %132 = load { float*, float* }, { float*, float* }* %131, align 8
  ret { float*, float* } %132
}

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
