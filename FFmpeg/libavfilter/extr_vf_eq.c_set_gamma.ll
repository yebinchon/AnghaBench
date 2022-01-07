; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_eq.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_7__*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @set_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gamma(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 11
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = call i32 @av_expr_eval(i32 %6, i32 %9, %struct.TYPE_6__* %10)
  %12 = call i8* @av_clipf(i32 %11, double 1.000000e-01, double 1.000000e+01)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = call i32 @av_expr_eval(i32 %18, i32 %21, %struct.TYPE_6__* %22)
  %24 = call i8* @av_clipf(i32 %23, double 1.000000e-01, double 1.000000e+01)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = call i32 @av_expr_eval(i32 %30, i32 %33, %struct.TYPE_6__* %34)
  %36 = call i8* @av_clipf(i32 %35, double 1.000000e-01, double 1.000000e+01)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %47 = call i32 @av_expr_eval(i32 %42, i32 %45, %struct.TYPE_6__* %46)
  %48 = call i8* @av_clipf(i32 %47, double 1.000000e-01, double 1.000000e+01)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = call i32 @av_expr_eval(i32 %54, i32 %57, %struct.TYPE_6__* %58)
  %60 = call i8* @av_clipf(i32 %59, double 0.000000e+00, double 1.000000e+00)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %69, i32* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %77, %80
  %82 = call i8* @sqrt(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %91, %94
  %96 = call i8* @sqrt(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %132, %1
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %104, 3
  br i1 %105, label %106, label %135

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i8* %109, i8** %116, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %131 = call i32 @check_values(%struct.TYPE_7__* %129, %struct.TYPE_6__* %130)
  br label %132

132:                                              ; preds = %106
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %103

135:                                              ; preds = %103
  ret void
}

declare dso_local i8* @av_clipf(i32, double, double) #1

declare dso_local i32 @av_expr_eval(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i8* @sqrt(i32) #1

declare dso_local i32 @check_values(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
