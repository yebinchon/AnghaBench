; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_correct_yolo_boxes.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_correct_yolo_boxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @correct_yolo_boxes(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %12, align 4
  %20 = sitofp i32 %19 to float
  %21 = load i32, i32* %10, align 4
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %20, %22
  %24 = load i32, i32* %13, align 4
  %25 = sitofp i32 %24 to float
  %26 = load i32, i32* %11, align 4
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %25, %27
  %29 = fcmp olt float %23, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %7
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %17, align 4
  br label %44

37:                                               ; preds = %7
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %11, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %37, %30
  store i32 0, i32* %15, align 4
  br label %45

45:                                               ; preds = %144, %44
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %147

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = bitcast %struct.TYPE_5__* %18 to i8*
  %56 = bitcast %struct.TYPE_5__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 16, i1 false)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to double
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sitofp i32 %62 to double
  %64 = fdiv double %63, 2.000000e+00
  %65 = load i32, i32* %12, align 4
  %66 = sitofp i32 %65 to double
  %67 = fdiv double %64, %66
  %68 = fsub double %59, %67
  %69 = load i32, i32* %16, align 4
  %70 = sitofp i32 %69 to float
  %71 = load i32, i32* %12, align 4
  %72 = sitofp i32 %71 to float
  %73 = fdiv float %70, %72
  %74 = fpext float %73 to double
  %75 = fdiv double %68, %74
  %76 = fptosi double %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sitofp i32 %79 to double
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %17, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %84, 2.000000e+00
  %86 = load i32, i32* %13, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %85, %87
  %89 = fsub double %80, %88
  %90 = load i32, i32* %17, align 4
  %91 = sitofp i32 %90 to float
  %92 = load i32, i32* %13, align 4
  %93 = sitofp i32 %92 to float
  %94 = fdiv float %91, %93
  %95 = fpext float %94 to double
  %96 = fdiv double %89, %95
  %97 = fptosi double %96 to i32
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sitofp i32 %99 to float
  %101 = load i32, i32* %16, align 4
  %102 = sitofp i32 %101 to float
  %103 = fdiv float %100, %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %105 = load float, float* %104, align 4
  %106 = fmul float %105, %103
  store float %106, float* %104, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sitofp i32 %107 to float
  %109 = load i32, i32* %17, align 4
  %110 = sitofp i32 %109 to float
  %111 = fdiv float %108, %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %113 = load float, float* %112, align 4
  %114 = fmul float %113, %111
  store float %114, float* %112, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %136, label %117

117:                                              ; preds = %49
  %118 = load i32, i32* %10, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, %118
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %10, align 4
  %123 = sitofp i32 %122 to float
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %125 = load float, float* %124, align 4
  %126 = fmul float %125, %123
  store float %126, float* %124, align 4
  %127 = load i32, i32* %11, align 4
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sitofp i32 %131 to float
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %134 = load float, float* %133, align 4
  %135 = fmul float %134, %132
  store float %135, float* %133, align 4
  br label %136

136:                                              ; preds = %117, %49
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = bitcast %struct.TYPE_5__* %141 to i8*
  %143 = bitcast %struct.TYPE_5__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 16, i1 false)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %15, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %15, align 4
  br label %45

147:                                              ; preds = %45
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
