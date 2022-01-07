; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_do_interpolation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_do_interpolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, double*, double*, i32, double*)* @do_interpolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_interpolation(%struct.TYPE_3__* %0, double* %1, double* %2, i32 %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double*, align 8
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store double* %1, double** %8, align 8
  store double* %2, double** %9, align 8
  store i32 %3, i32* %10, align 4
  store double* %4, double** %11, align 8
  %18 = load double*, double** %8, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @factorization(double* %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %151

25:                                               ; preds = %5
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @av_fast_malloc(double** %27, i32* %29, i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load double*, double** %36, align 8
  store double* %37, double** %15, align 8
  %38 = load double*, double** %15, align 8
  %39 = icmp ne double* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %151

43:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %86, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %16, align 4
  %52 = load double*, double** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  store double %56, double* %17, align 8
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %77, %48
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %57
  %62 = load double*, double** %8, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %62, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load double*, double** %15, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fmul double %68, %73
  %75 = load double, double* %17, align 8
  %76 = fsub double %75, %74
  store double %76, double* %17, align 8
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %57

80:                                               ; preds = %57
  %81 = load double, double* %17, align 8
  %82 = load double*, double** %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  store double %81, double* %85, align 8
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %147, %89
  %93 = load i32, i32* %12, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %150

95:                                               ; preds = %92
  %96 = load double*, double** %15, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load double*, double** %8, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %101, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fdiv double %100, %109
  %111 = load double*, double** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds double, double* %111, i64 %113
  store double %110, double* %114, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %143, %95
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %146

121:                                              ; preds = %117
  %122 = load double*, double** %8, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %10, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds double, double* %122, i64 %128
  %130 = load double, double* %129, align 8
  %131 = load double*, double** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double, double* %131, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fmul double %130, %135
  %137 = load double*, double** %11, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %137, i64 %139
  %141 = load double, double* %140, align 8
  %142 = fsub double %141, %136
  store double %142, double* %140, align 8
  br label %143

143:                                              ; preds = %121
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %117

146:                                              ; preds = %117
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %12, align 4
  br label %92

150:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %40, %23
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i32 @factorization(double*, i32) #1

declare dso_local i32 @av_fast_malloc(double**, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
