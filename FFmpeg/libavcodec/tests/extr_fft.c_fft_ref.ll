; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_fft.c_fft_ref.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_fft.c_fft_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, double }
%struct.TYPE_5__ = type { i8*, i8* }

@exptab = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_5__*, i32)* @fft_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fft_ref(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %107, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %110

25:                                               ; preds = %21
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %87, %25
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @exptab, align 8
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fneg double %49
  store double %50, double* %15, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @exptab, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = fneg double %58
  store double %59, double* %14, align 8
  br label %73

60:                                               ; preds = %31
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @exptab, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  store double %66, double* %15, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @exptab, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  store double %72, double* %14, align 8
  br label %73

73:                                               ; preds = %60, %41
  %74 = load double, double* %11, align 8
  %75 = load double, double* %12, align 8
  %76 = load double, double* %15, align 8
  %77 = load double, double* %14, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @CMAC(double %74, double %75, double %76, double %77, i8* %80, i8* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 1
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %13, align 8
  br label %87

87:                                               ; preds = %73
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %27

90:                                               ; preds = %27
  %91 = load double, double* %11, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i8* @REF_SCALE(double %91, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i8* %93, i8** %98, align 8
  %99 = load double, double* %12, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i8* @REF_SCALE(double %99, i32 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i8* %101, i8** %106, align 8
  br label %107

107:                                              ; preds = %90
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %21

110:                                              ; preds = %21
  ret void
}

declare dso_local i32 @CMAC(double, double, double, double, i8*, i8*) #1

declare dso_local i8* @REF_SCALE(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
