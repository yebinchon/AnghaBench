; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_avg_flipped_yolo.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_yolo_layer.c_avg_flipped_yolo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avg_flipped_yolo(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %11, i64 %14
  store float* %15, float** %6, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %152, %1
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %155

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %148, %21
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 2
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %151

28:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %144, %28
  %30 = load i32, i32* %4, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %147

34:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %140, %34
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 4
  %40 = add nsw i32 %39, 1
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %143

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %46, %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %49, %51
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %53, %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = add nsw i32 %52, %59
  %61 = load i32, i32* %3, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %61, %63
  %65 = add nsw i32 %60, %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %68, %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %71, %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %74, %76
  %78 = load i32, i32* %4, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %78, %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %81, %83
  %85 = add nsw i32 %77, %84
  %86 = load i32, i32* %3, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %86, %88
  %90 = add nsw i32 %85, %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %2, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = add nsw i32 %90, %95
  store i32 %96, i32* %8, align 4
  %97 = load float*, float** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  %101 = load float, float* %100, align 4
  store float %101, float* %9, align 4
  %102 = load float*, float** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  %106 = load float, float* %105, align 4
  %107 = load float*, float** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %106, float* %110, align 4
  %111 = load float, float* %9, align 4
  %112 = load float*, float** %6, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  store float %111, float* %115, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %42
  %119 = load float*, float** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fneg float %123
  %125 = load float*, float** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  store float %124, float* %128, align 4
  %129 = load float*, float** %6, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  %134 = fneg float %133
  %135 = load float*, float** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  store float %134, float* %138, align 4
  br label %139

139:                                              ; preds = %118, %42
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %35

143:                                              ; preds = %35
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %29

147:                                              ; preds = %29
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %22

151:                                              ; preds = %22
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %16

155:                                              ; preds = %16
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %182, %155
  %157 = load i32, i32* %2, align 4
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %185

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %163 = load float*, float** %162, align 8
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  %168 = load float*, float** %6, align 8
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fadd float %167, %172
  %174 = fpext float %173 to double
  %175 = fdiv double %174, 2.000000e+00
  %176 = fptrunc double %175 to float
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %178 = load float*, float** %177, align 8
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float, float* %178, i64 %180
  store float %176, float* %181, align 4
  br label %182

182:                                              ; preds = %161
  %183 = load i32, i32* %2, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %2, align 4
  br label %156

185:                                              ; preds = %156
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
