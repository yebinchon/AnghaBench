; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_forward_batchnorm_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_batchnorm_layer.c_forward_batchnorm_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@BATCHNORM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_batchnorm_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = bitcast %struct.TYPE_5__* %4 to { i64, i32 }*
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BATCHNORM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @copy_cpu(i32 %17, i32 %19, i32 1, i32 %21, i32 1)
  br label %23

23:                                               ; preds = %12, %3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 14
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @copy_cpu(i32 %28, i32 %30, i32 1, i32 %32, i32 1)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %118

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %45, %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mean_cpu(i32 %39, i32 %41, i32 %43, i32 %48, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 12
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @variance_cpu(i32 %53, i32 %55, i32 %57, i32 %59, i32 %64, i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @scal_cpu(i32 %69, double 0x3FEFAE147AE147AE, i32 %71, i32 1)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @axpy_cpu(i32 %74, double 1.000000e-02, i32 %76, i32 1, i32 %78, i32 1)
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @scal_cpu(i32 %81, double 0x3FEFAE147AE147AE, i32 %83, i32 1)
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 12
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @axpy_cpu(i32 %86, double 1.000000e-02, i32 %88, i32 1, i32 %90, i32 1)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 13
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 12
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %103, %105
  %107 = call i32 @normalize_cpu(i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 11
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @copy_cpu(i32 %112, i32 %114, i32 1, i32 %116, i32 1)
  br label %135

118:                                              ; preds = %23
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %130, %132
  %134 = call i32 @normalize_cpu(i32 %120, i32 %122, i32 %124, i32 %126, i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %118, %37
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %145, %147
  %149 = call i32 @scale_bias(i32 %137, i32 %139, i32 %141, i32 %143, i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %159, %161
  %163 = call i32 @add_bias(i32 %151, i32 %153, i32 %155, i32 %157, i32 %162)
  ret void
}

declare dso_local i32 @copy_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @mean_cpu(i32, i32, i32, i32, i32) #1

declare dso_local i32 @variance_cpu(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scal_cpu(i32, double, i32, i32) #1

declare dso_local i32 @axpy_cpu(i32, double, i32, i32, i32, i32) #1

declare dso_local i32 @normalize_cpu(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scale_bias(i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_bias(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
