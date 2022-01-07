; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_best_3d_shift_r.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_best_3d_shift_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @best_3d_shift_r(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = bitcast %struct.TYPE_7__* %8 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %0, i64* %18, align 4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %1, i64* %19, align 4
  %20 = bitcast %struct.TYPE_7__* %9 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  store i64 %2, i64* %21, align 4
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  store i64 %3, i64* %22, align 4
  store i32 %4, i32* %10, align 4
  store i32 %5, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %7, align 4
  br label %139

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %29, %30
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 2.000000e+00
  %34 = fptosi double %33 to i32
  %35 = call i32 @floor(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %struct.TYPE_7__* %9 to { i64, i64 }*
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 4
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 4
  %46 = call { i64, i64 } @crop_image(i64 %43, i64 %45, i32 0, i32 %36, i32 %38, i32 %40)
  %47 = bitcast %struct.TYPE_7__* %13 to { i64, i64 }*
  %48 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 0
  %49 = extractvalue { i64, i64 } %46, 0
  store i64 %49, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %47, i32 0, i32 1
  %51 = extractvalue { i64, i64 } %46, 1
  store i64 %51, i64* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %struct.TYPE_7__* %9 to { i64, i64 }*
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 4
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1
  %62 = load i64, i64* %61, align 4
  %63 = call { i64, i64 } @crop_image(i64 %60, i64 %62, i32 0, i32 %53, i32 %55, i32 %57)
  %64 = bitcast %struct.TYPE_7__* %14 to { i64, i64 }*
  %65 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 0
  %66 = extractvalue { i64, i64 } %63, 0
  store i64 %66, i64* %65, align 4
  %67 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %64, i32 0, i32 1
  %68 = extractvalue { i64, i64 } %63, 1
  store i64 %68, i64* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %77, %79
  %81 = call float @dist_array(i32 %70, i32 %72, i32 %80, i32 10)
  store float %81, float* %15, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %87, %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %90, %92
  %94 = call float @dist_array(i32 %83, i32 %85, i32 %93, i32 10)
  store float %94, float* %16, align 4
  %95 = bitcast %struct.TYPE_7__* %13 to { i64, i64 }*
  %96 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 4
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %95, i32 0, i32 1
  %99 = load i64, i64* %98, align 4
  %100 = call i32 @free_image(i64 %97, i64 %99)
  %101 = bitcast %struct.TYPE_7__* %14 to { i64, i64 }*
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 4
  %104 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %101, i32 0, i32 1
  %105 = load i64, i64* %104, align 4
  %106 = call i32 @free_image(i64 %103, i64 %105)
  %107 = load float, float* %15, align 4
  %108 = load float, float* %16, align 4
  %109 = fcmp olt float %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %28
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %12, align 4
  %113 = bitcast %struct.TYPE_7__* %8 to { i64, i64 }*
  %114 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 4
  %116 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %113, i32 0, i32 1
  %117 = load i64, i64* %116, align 4
  %118 = bitcast %struct.TYPE_7__* %9 to { i64, i64 }*
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 4
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1
  %122 = load i64, i64* %121, align 4
  %123 = call i32 @best_3d_shift_r(i64 %115, i64 %117, i64 %120, i64 %122, i32 %111, i32 %112)
  store i32 %123, i32* %7, align 4
  br label %139

124:                                              ; preds = %28
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %11, align 4
  %128 = bitcast %struct.TYPE_7__* %8 to { i64, i64 }*
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 4
  %131 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %128, i32 0, i32 1
  %132 = load i64, i64* %131, align 4
  %133 = bitcast %struct.TYPE_7__* %9 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 4
  %138 = call i32 @best_3d_shift_r(i64 %130, i64 %132, i64 %135, i64 %137, i32 %126, i32 %127)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %124, %110, %26
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @floor(i32) #1

declare dso_local { i64, i64 } @crop_image(i64, i64, i32, i32, i32, i32) #1

declare dso_local float @dist_array(i32, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
