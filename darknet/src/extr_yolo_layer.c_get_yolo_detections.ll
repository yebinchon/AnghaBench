; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_get_yolo_detections.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_get_yolo_detections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float*, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { float, i32, float*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_yolo_detections(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, i32 %1, i32 %2, i32 %3, i32 %4, float %5, i32* %6, i32 %7, %struct.TYPE_9__* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float %5, float* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  store float* %31, float** %21, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = call i32 @avg_flipped_yolo(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0)
  br label %37

37:                                               ; preds = %35, %9
  store i32 0, i32* %22, align 4
  store i32 0, i32* %18, align 4
  br label %38

38:                                               ; preds = %185, %37
  %39 = load i32, i32* %18, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %41, %43
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %188

46:                                               ; preds = %38
  %47 = load i32, i32* %18, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %47, %49
  store i32 %50, i32* %23, align 4
  %51 = load i32, i32* %18, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = srem i32 %51, %53
  store i32 %54, i32* %24, align 4
  store i32 0, i32* %20, align 4
  br label %55

55:                                               ; preds = %181, %46
  %56 = load i32, i32* %20, align 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %184

60:                                               ; preds = %55
  %61 = load i32, i32* %20, align 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %64, %66
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @entry_index(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, i32 0, i32 %69, i32 4)
  store i32 %70, i32* %25, align 4
  %71 = load float*, float** %21, align 8
  %72 = load i32, i32* %25, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  store float %75, float* %26, align 4
  %76 = load float, float* %26, align 4
  %77 = load float, float* %14, align 4
  %78 = fcmp ole float %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %181

80:                                               ; preds = %60
  %81 = load i32, i32* %20, align 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %81, %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 %84, %86
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @entry_index(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, i32 0, i32 %89, i32 0)
  store i32 %90, i32* %27, align 4
  %91 = load float*, float** %21, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %20, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %27, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %23, align 4
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %110, %112
  %114 = call i32 @get_yolo_box(float* %91, i32 %93, i32 %99, i32 %100, i32 %101, i32 %102, i32 %104, i32 %106, i32 %107, i32 %108, i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %116 = load i32, i32* %22, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 8
  %120 = load float, float* %26, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store float %120, float* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i32 %127, i32* %132, align 4
  store i32 0, i32* %19, align 4
  br label %133

133:                                              ; preds = %175, %80
  %134 = load i32, i32* %19, align 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %133
  %139 = load i32, i32* %20, align 4
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %139, %141
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %0, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %142, %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 5, %148
  %150 = call i32 @entry_index(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %0, i32 0, i32 %147, i32 %149)
  store i32 %150, i32* %28, align 4
  %151 = load float, float* %26, align 4
  %152 = load float*, float** %21, align 8
  %153 = load i32, i32* %28, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %152, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fmul float %151, %156
  store float %157, float* %29, align 4
  %158 = load float, float* %29, align 4
  %159 = load float, float* %14, align 4
  %160 = fcmp ogt float %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %138
  %162 = load float, float* %29, align 4
  br label %164

163:                                              ; preds = %138
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi float [ %162, %161 ], [ 0.000000e+00, %163 ]
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %167 = load i32, i32* %22, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load float*, float** %170, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %165, float* %174, align 4
  br label %175

175:                                              ; preds = %164
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %133

178:                                              ; preds = %133
  %179 = load i32, i32* %22, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %22, align 4
  br label %181

181:                                              ; preds = %178, %79
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %20, align 4
  br label %55

184:                                              ; preds = %55
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %38

188:                                              ; preds = %38
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %190 = load i32, i32* %22, align 4
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %16, align 4
  %196 = call i32 @correct_yolo_boxes(%struct.TYPE_9__* %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %22, align 4
  ret i32 %197
}

declare dso_local i32 @avg_flipped_yolo(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @entry_index(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8, i32, i32, i32) #1

declare dso_local i32 @get_yolo_box(float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @correct_yolo_boxes(%struct.TYPE_9__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
