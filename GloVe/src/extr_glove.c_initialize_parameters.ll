; ModuleID = '/home/carl/AnghaBench/GloVe/src/extr_glove.c_initialize_parameters.c'
source_filename = "/home/carl/AnghaBench/GloVe/src/extr_glove.c_initialize_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vector_size = common dso_local global i32 0, align 4
@W = common dso_local global double* null, align 8
@vocab_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Error allocating memory for W\0A\00", align 1
@gradsq = common dso_local global double* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Error allocating memory for gradsq\0A\00", align 1
@RAND_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_parameters() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @vector_size, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @vector_size, align 4
  %5 = load i32, i32* @vocab_size, align 4
  %6 = mul nsw i32 2, %5
  %7 = load i32, i32* @vector_size, align 4
  %8 = mul nsw i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = call i64 @posix_memalign(i8** bitcast (double** @W to i8**), i32 128, i32 %11)
  store i64 %12, i64* %1, align 8
  %13 = load double*, double** @W, align 8
  %14 = icmp eq double* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %0
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %0
  %20 = load i32, i32* @vocab_size, align 4
  %21 = mul nsw i32 2, %20
  %22 = load i32, i32* @vector_size, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i64 @posix_memalign(i8** bitcast (double** @gradsq to i8**), i32 128, i32 %26)
  store i64 %27, i64* %1, align 8
  %28 = load double*, double** @gradsq, align 8
  %29 = icmp eq double* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i64, i64* %2, align 8
  %37 = load i32, i32* @vector_size, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  store i64 0, i64* %1, align 8
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i64, i64* %1, align 8
  %43 = load i32, i32* @vocab_size, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = call double (...) @rand()
  %49 = load i64, i64* @RAND_MAX, align 8
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %48, %50
  %52 = fsub double %51, 5.000000e-01
  %53 = load i32, i32* @vector_size, align 4
  %54 = sitofp i32 %53 to double
  %55 = fdiv double %52, %54
  %56 = load double*, double** @W, align 8
  %57 = load i64, i64* %1, align 8
  %58 = load i32, i32* @vector_size, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %57, %59
  %61 = load i64, i64* %2, align 8
  %62 = add nsw i64 %60, %61
  %63 = getelementptr inbounds double, double* %56, i64 %62
  store double %55, double* %63, align 8
  br label %64

64:                                               ; preds = %47
  %65 = load i64, i64* %1, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %1, align 8
  br label %41

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %2, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %2, align 8
  br label %35

71:                                               ; preds = %35
  store i64 0, i64* %2, align 8
  br label %72

72:                                               ; preds = %97, %71
  %73 = load i64, i64* %2, align 8
  %74 = load i32, i32* @vector_size, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  store i64 0, i64* %1, align 8
  br label %78

78:                                               ; preds = %93, %77
  %79 = load i64, i64* %1, align 8
  %80 = load i32, i32* @vocab_size, align 4
  %81 = mul nsw i32 2, %80
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78
  %85 = load double*, double** @gradsq, align 8
  %86 = load i64, i64* %1, align 8
  %87 = load i32, i32* @vector_size, align 4
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %86, %88
  %90 = load i64, i64* %2, align 8
  %91 = add nsw i64 %89, %90
  %92 = getelementptr inbounds double, double* %85, i64 %91
  store double 1.000000e+00, double* %92, align 8
  br label %93

93:                                               ; preds = %84
  %94 = load i64, i64* %1, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %1, align 8
  br label %78

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %2, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %2, align 8
  br label %72

100:                                              ; preds = %72
  %101 = load i32, i32* @vector_size, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* @vector_size, align 4
  ret void
}

declare dso_local i64 @posix_memalign(i8**, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local double @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
