; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_backward_batchnorm_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_backward_batchnorm_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BATCHNORM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backward_batchnorm_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %1, i64* %4, align 4
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 17
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 16
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %8, %2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 15
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %25, %27
  %29 = call i32 @backward_bias(i32 %17, i32 %19, i32 %21, i32 %23, i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 14
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @backward_scale_cpu(i32 %31, i32 %33, i32 %35, i32 %37, i32 %42, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %55, %57
  %59 = call i32 @scale_bias(i32 %47, i32 %49, i32 %51, i32 %53, i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %69, %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mean_delta_cpu(i32 %61, i32 %63, i32 %65, i32 %67, i32 %72, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %89, %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @variance_delta_cpu(i32 %77, i32 %79, i32 %81, i32 %83, i32 %85, i32 %87, i32 %92, i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 11
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %111, %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @normalize_delta_cpu(i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %114, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BATCHNORM, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %15
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %124, %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @copy_cpu(i32 %127, i32 %129, i32 1, i32 %131, i32 1)
  br label %133

133:                                              ; preds = %122, %15
  ret void
}

declare dso_local i32 @backward_bias(i32, i32, i32, i32, i32) #1

declare dso_local i32 @backward_scale_cpu(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scale_bias(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mean_delta_cpu(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @variance_delta_cpu(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @normalize_delta_cpu(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
