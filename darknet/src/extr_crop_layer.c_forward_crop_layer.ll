; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_crop_layer.c_forward_crop_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_crop_layer.c_forward_crop_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, float*, i64, i32 }
%struct.TYPE_5__ = type { float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_crop_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, float* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = bitcast %struct.TYPE_5__* %4 to { float*, i32 }*
  %19 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %18, i32 0, i32 0
  store float* %1, float** %19, align 8
  %20 = getelementptr inbounds { float*, i32 }, { float*, i32 }* %18, i32 0, i32 1
  store i32 %2, i32* %20, align 8
  store i32 0, i32* %12, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = call i32 (...) @rand()
  %26 = srem i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %24, %3
  %29 = phi i1 [ false, %3 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = call i32 (...) @rand()
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %33, %35
  %37 = add nsw i32 %36, 1
  %38 = srem i32 %31, %37
  store i32 %38, i32* %14, align 4
  %39 = call i32 (...) @rand()
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %41, %43
  %45 = add nsw i32 %44, 1
  %46 = srem i32 %39, %45
  store i32 %46, i32* %15, align 4
  store float 2.000000e+00, float* %16, align 4
  store float -1.000000e+00, float* %17, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %28
  store float 1.000000e+00, float* %16, align 4
  store float 0.000000e+00, float* %17, align 4
  br label %51

51:                                               ; preds = %50, %28
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %57, %59
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %14, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %63, %65
  %67 = sdiv i32 %66, 2
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %55, %51
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %155, %68
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %158

74:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %151, %74
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %154

80:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %147, %80
  %82 = load i32, i32* %5, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %150

86:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %143, %86
  %88 = load i32, i32* %6, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %146

92:                                               ; preds = %87
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %107

103:                                              ; preds = %92
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %95
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %117, %121
  %123 = mul nsw i32 %116, %122
  %124 = add nsw i32 %114, %123
  %125 = mul nsw i32 %113, %124
  %126 = add nsw i32 %111, %125
  store i32 %126, i32* %11, align 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %128 = load float*, float** %127, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load float, float* %131, align 4
  %133 = load float, float* %16, align 4
  %134 = fmul float %132, %133
  %135 = load float, float* %17, align 4
  %136 = fadd float %134, %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %138 = load float*, float** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds float, float* %138, i64 %141
  store float %136, float* %142, align 4
  br label %143

143:                                              ; preds = %107
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %87

146:                                              ; preds = %87
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %81

150:                                              ; preds = %81
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %75

154:                                              ; preds = %75
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %69

158:                                              ; preds = %69
  ret void
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
