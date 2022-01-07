; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_calc_next_seg_no_from_timelines.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_calc_next_seg_no_from_timelines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.representation*, i64)* @calc_next_seg_no_from_timelines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_next_seg_no_from_timelines(%struct.representation* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.representation*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.representation* %0, %struct.representation** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %86, %2
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.representation*, %struct.representation** %4, align 8
  %13 = getelementptr inbounds %struct.representation, %struct.representation* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %89

16:                                               ; preds = %10
  %17 = load %struct.representation*, %struct.representation** %4, align 8
  %18 = getelementptr inbounds %struct.representation, %struct.representation* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %16
  %27 = load %struct.representation*, %struct.representation** %4, align 8
  %28 = getelementptr inbounds %struct.representation, %struct.representation* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %29, i64 %30
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  br label %35

35:                                               ; preds = %26, %16
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %90

40:                                               ; preds = %35
  %41 = load %struct.representation*, %struct.representation** %4, align 8
  %42 = getelementptr inbounds %struct.representation, %struct.representation* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %80, %40
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.representation*, %struct.representation** %4, align 8
  %54 = getelementptr inbounds %struct.representation, %struct.representation* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %55, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %52, %60
  br i1 %61, label %62, label %83

62:                                               ; preds = %51
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %90

69:                                               ; preds = %62
  %70 = load %struct.representation*, %struct.representation** %4, align 8
  %71 = getelementptr inbounds %struct.representation, %struct.representation* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %69
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %7, align 8
  br label %51

83:                                               ; preds = %51
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %10

89:                                               ; preds = %10
  store i64 -1, i64* %3, align 8
  br label %92

90:                                               ; preds = %68, %39
  %91 = load i64, i64* %8, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %89
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
