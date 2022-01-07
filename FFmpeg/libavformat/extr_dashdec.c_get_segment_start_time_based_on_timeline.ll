; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_segment_start_time_based_on_timeline.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_segment_start_time_based_on_timeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.representation*, i64)* @get_segment_start_time_based_on_timeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_segment_start_time_based_on_timeline(%struct.representation* %0, i64 %1) #0 {
  %3 = alloca %struct.representation*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.representation* %0, %struct.representation** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.representation*, %struct.representation** %3, align 8
  %10 = getelementptr inbounds %struct.representation, %struct.representation* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %116

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %112, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.representation*, %struct.representation** %3, align 8
  %17 = getelementptr inbounds %struct.representation, %struct.representation* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %115

20:                                               ; preds = %14
  %21 = load %struct.representation*, %struct.representation** %3, align 8
  %22 = getelementptr inbounds %struct.representation, %struct.representation* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load %struct.representation*, %struct.representation** %3, align 8
  %32 = getelementptr inbounds %struct.representation, %struct.representation* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %30, %20
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %117

44:                                               ; preds = %39
  %45 = load %struct.representation*, %struct.representation** %3, align 8
  %46 = getelementptr inbounds %struct.representation, %struct.representation* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %47, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %5, align 8
  %55 = load %struct.representation*, %struct.representation** %3, align 8
  %56 = getelementptr inbounds %struct.representation, %struct.representation* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %75

64:                                               ; preds = %44
  %65 = load %struct.representation*, %struct.representation** %3, align 8
  %66 = getelementptr inbounds %struct.representation, %struct.representation* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %67, i64 %68
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %4, align 8
  %74 = mul i64 %72, %73
  store i64 %74, i64* %5, align 8
  br label %117

75:                                               ; preds = %44
  store i64 0, i64* %7, align 8
  br label %76

76:                                               ; preds = %106, %75
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.representation*, %struct.representation** %3, align 8
  %79 = getelementptr inbounds %struct.representation, %struct.representation* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %80, i64 %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = icmp ult i64 %77, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %76
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %8, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %4, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %117

95:                                               ; preds = %88
  %96 = load %struct.representation*, %struct.representation** %3, align 8
  %97 = getelementptr inbounds %struct.representation, %struct.representation* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %97, align 8
  %99 = load i64, i64* %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 %99
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %95
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %76

109:                                              ; preds = %76
  %110 = load i64, i64* %8, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %8, align 8
  br label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %6, align 8
  br label %14

115:                                              ; preds = %14
  br label %116

116:                                              ; preds = %115, %2
  br label %117

117:                                              ; preds = %116, %94, %64, %43
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
