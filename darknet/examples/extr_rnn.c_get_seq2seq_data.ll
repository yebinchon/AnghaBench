; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_rnn.c_get_seq2seq_data.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_rnn.c_get_seq2seq_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float* }

@.str = private unnamed_addr constant [9 x i8] c"Bad char\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { float*, float* } @get_seq2seq_data(i8** %0, i8** %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  store i8** %0, i8*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %25, %26
  %28 = call float* @calloc(i32 %27, i32 4)
  store float* %28, float** %18, align 8
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call float* @calloc(i32 %33, i32 4)
  store float* %34, float** %19, align 8
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %114, %7
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %117

39:                                               ; preds = %35
  %40 = call i32 (...) @rand()
  %41 = load i32, i32* %11, align 4
  %42 = srem i32 %40, %41
  store i32 %42, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %110, %39
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %43
  %48 = load i8**, i8*** %9, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %21, align 1
  %57 = load i8**, i8*** %10, align 8
  %58 = load i32, i32* %20, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %22, align 1
  %66 = load float*, float** %18, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i8, i8* %21, align 1
  %75 = zext i8 %74 to i32
  %76 = add nsw i32 %73, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %66, i64 %77
  store float 1.000000e+00, float* %78, align 4
  %79 = load float*, float** %19, align 8
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i8, i8* %22, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %86, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %79, i64 %90
  store float 1.000000e+00, float* %91, align 4
  %92 = load i8, i8* %21, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp sgt i32 %93, 255
  br i1 %94, label %107, label %95

95:                                               ; preds = %47
  %96 = load i8, i8* %21, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load i8, i8* %22, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp sgt i32 %101, 255
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i8, i8* %22, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sle i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %99, %95, %47
  %108 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  br label %43

113:                                              ; preds = %43
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %35

117:                                              ; preds = %35
  %118 = load float*, float** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store float* %118, float** %119, align 8
  %120 = load float*, float** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store float* %120, float** %121, align 8
  %122 = bitcast %struct.TYPE_3__* %8 to { float*, float* }*
  %123 = load { float*, float* }, { float*, float* }* %122, align 8
  ret { float*, float* } %123
}

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
