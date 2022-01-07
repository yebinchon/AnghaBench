; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_compute_stream_rate.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_compute_stream_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pts_pos = type { i64, i64 }

@NDURSAMPLES = common dso_local global i32 0, align 4
@dur_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.pts_pos*, i32)* @compute_stream_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_stream_rate(%struct.pts_pos* %0, i32 %1) #0 {
  %3 = alloca %struct.pts_pos*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pts_pos* %0, %struct.pts_pos** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @NDURSAMPLES, align 4
  %13 = load i32, i32* @NDURSAMPLES, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 8
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca double, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store double* %18, double** %9, align 8
  %19 = load double*, double** %9, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %124, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %127

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 3
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %120, %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %123

42:                                               ; preds = %38
  %43 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %43, i64 %45
  %47 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %49, i64 %51
  %53 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %48, %54
  %56 = icmp sgt i64 %55, 1944000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %123

58:                                               ; preds = %42
  %59 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %59, i64 %61
  %63 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %65, i64 %67
  %69 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %64, %70
  br i1 %71, label %72, label %119

72:                                               ; preds = %58
  %73 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %73, i64 %75
  %77 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %79, i64 %81
  %83 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %78, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %72
  %87 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %87, i64 %89
  %91 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %93, i64 %95
  %97 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %92, %98
  %100 = sitofp i64 %99 to double
  %101 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %101, i64 %103
  %105 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pts_pos*, %struct.pts_pos** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %107, i64 %109
  %111 = getelementptr inbounds %struct.pts_pos, %struct.pts_pos* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %106, %112
  %114 = sitofp i64 %113 to double
  %115 = fdiv double %100, %114
  %116 = load double*, double** %9, align 8
  store double %115, double* %116, align 8
  %117 = load double*, double** %9, align 8
  %118 = getelementptr inbounds double, double* %117, i32 1
  store double* %118, double** %9, align 8
  br label %119

119:                                              ; preds = %86, %72, %58
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %38

123:                                              ; preds = %57, %38
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %20

127:                                              ; preds = %20
  %128 = load double*, double** %9, align 8
  %129 = ptrtoint double* %128 to i64
  %130 = ptrtoint double* %18 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @dur_compare, align 4
  %136 = call i32 @qsort(double* %18, i32 %134, i32 8, i32 %135)
  %137 = load i32, i32* %11, align 4
  %138 = ashr i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %18, i64 %139
  %141 = load double, double* %140, align 8
  %142 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %142)
  ret double %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qsort(double*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
