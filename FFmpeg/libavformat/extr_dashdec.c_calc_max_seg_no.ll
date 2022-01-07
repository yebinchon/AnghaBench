; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_calc_max_seg_no.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_calc_max_seg_no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.representation = type { i32, i32, i32, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.representation*, %struct.TYPE_5__*)* @calc_max_seg_no to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_max_seg_no(%struct.representation* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.representation*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.representation* %0, %struct.representation** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.representation*, %struct.representation** %3, align 8
  %9 = getelementptr inbounds %struct.representation, %struct.representation* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.representation*, %struct.representation** %3, align 8
  %14 = getelementptr inbounds %struct.representation, %struct.representation* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.representation*, %struct.representation** %3, align 8
  %17 = getelementptr inbounds %struct.representation, %struct.representation* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %140

21:                                               ; preds = %2
  %22 = load %struct.representation*, %struct.representation** %3, align 8
  %23 = getelementptr inbounds %struct.representation, %struct.representation* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %27 = load %struct.representation*, %struct.representation** %3, align 8
  %28 = getelementptr inbounds %struct.representation, %struct.representation* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.representation*, %struct.representation** %3, align 8
  %31 = getelementptr inbounds %struct.representation, %struct.representation* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %84, %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.representation*, %struct.representation** %3, align 8
  %38 = getelementptr inbounds %struct.representation, %struct.representation* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %35
  %42 = load %struct.representation*, %struct.representation** %3, align 8
  %43 = getelementptr inbounds %struct.representation, %struct.representation* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %71

52:                                               ; preds = %41
  %53 = load %struct.representation*, %struct.representation** %3, align 8
  %54 = getelementptr inbounds %struct.representation, %struct.representation* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.representation*, %struct.representation** %3, align 8
  %63 = getelementptr inbounds %struct.representation, %struct.representation* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sdiv i32 %61, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %5, align 4
  br label %83

71:                                               ; preds = %41
  %72 = load %struct.representation*, %struct.representation** %3, align 8
  %73 = getelementptr inbounds %struct.representation, %struct.representation* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %71, %52
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %35

87:                                               ; preds = %35
  br label %139

88:                                               ; preds = %21
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = load %struct.representation*, %struct.representation** %3, align 8
  %95 = getelementptr inbounds %struct.representation, %struct.representation* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %93
  %99 = load %struct.representation*, %struct.representation** %3, align 8
  %100 = getelementptr inbounds %struct.representation, %struct.representation* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (...) @get_current_time_in_sec()
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = load %struct.representation*, %struct.representation** %3, align 8
  %108 = getelementptr inbounds %struct.representation, %struct.representation* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.representation*, %struct.representation** %3, align 8
  %112 = getelementptr inbounds %struct.representation, %struct.representation* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = sdiv i32 %110, %113
  %115 = add nsw i32 %101, %114
  store i32 %115, i32* %5, align 4
  br label %138

116:                                              ; preds = %93, %88
  %117 = load %struct.representation*, %struct.representation** %3, align 8
  %118 = getelementptr inbounds %struct.representation, %struct.representation* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load %struct.representation*, %struct.representation** %3, align 8
  %123 = getelementptr inbounds %struct.representation, %struct.representation* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.representation*, %struct.representation** %3, align 8
  %129 = getelementptr inbounds %struct.representation, %struct.representation* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = load %struct.representation*, %struct.representation** %3, align 8
  %133 = getelementptr inbounds %struct.representation, %struct.representation* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %131, %134
  %136 = add nsw i32 %124, %135
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %121, %116
  br label %138

138:                                              ; preds = %137, %98
  br label %139

139:                                              ; preds = %138, %87
  br label %140

140:                                              ; preds = %139, %12
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @get_current_time_in_sec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
