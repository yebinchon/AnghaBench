; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fftr.c_kiss_fftr_alloc.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fftr.c_kiss_fftr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Real FFT optimization must be even.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @kiss_fftr_alloc(i32 %0, i32 %1, i8* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  br label %118

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @kiss_fft_alloc(i32 %24, i32 %25, i32* null, i64* %12)
  %27 = load i64, i64* %12, align 8
  %28 = add i64 4, %27
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 3
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = add i64 %28, %33
  store i64 %34, i64* %13, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = icmp eq i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %21
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @KISS_FFT_MALLOC(i64 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %11, align 8
  br label %52

41:                                               ; preds = %21
  %42 = load i64*, i64** %9, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = bitcast i8* %47 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %11, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* %13, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %37
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %54 = icmp ne %struct.TYPE_3__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %5, align 8
  br label %118

56:                                               ; preds = %52
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 1
  %59 = bitcast %struct.TYPE_3__* %58 to i32*
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = bitcast i32* %64 to i8*
  %66 = load i64, i64* %12, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = bitcast i8* %67 to i32*
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @kiss_fft_alloc(i32 %79, i32 %80, i32* %83, i64* %12)
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %113, %56
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sdiv i32 %87, 2
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = sitofp i32 %92 to double
  %94 = load i32, i32* %6, align 4
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %93, %95
  %97 = fadd double %96, 5.000000e-01
  %98 = fmul double 0xC00921FB54442D18, %97
  store double %98, double* %14, align 8
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %90
  %102 = load double, double* %14, align 8
  %103 = fmul double %102, -1.000000e+00
  store double %103, double* %14, align 8
  br label %104

104:                                              ; preds = %101, %90
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load double, double* %14, align 8
  %112 = call i32 @kf_cexp(i32* %110, double %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %85

116:                                              ; preds = %85
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %117, %struct.TYPE_3__** %5, align 8
  br label %118

118:                                              ; preds = %116, %55, %18
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %119
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @kiss_fft_alloc(i32, i32, i32*, i64*) #1

declare dso_local i64 @KISS_FFT_MALLOC(i64) #1

declare dso_local i32 @kf_cexp(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
