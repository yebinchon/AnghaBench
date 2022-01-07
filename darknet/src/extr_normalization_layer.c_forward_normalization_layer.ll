; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_normalization_layer.c_forward_normalization_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_normalization_layer.c_forward_normalization_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, float*, float*, i32, i32, float*, i32, i32 }
%struct.TYPE_5__ = type { float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @forward_normalization_layer(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store float* %1, float** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %23, %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %25, %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %30 = load float*, float** %29, align 8
  %31 = call i32 @scal_cpu(i32 %28, i32 0, float* %30, i32 1)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %210, %2
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %213

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %39, i64 %47
  store float* %48, float** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %50, i64 %58
  store float* %59, float** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %61 = load float*, float** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %61, i64 %69
  store float* %70, float** %11, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load float*, float** %11, align 8
  %77 = load float*, float** %9, align 8
  %78 = call i32 @pow_cpu(i32 %75, i32 2, float* %76, i32 1, float* %77, i32 1)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = load float*, float** %10, align 8
  %85 = call i32 @const_cpu(i32 %81, i32 %83, float* %84, i32 1)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %108, %37
  %87 = load i32, i32* %4, align 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %89, 2
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = mul nsw i32 %93, %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = load float*, float** %9, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load i32, i32* %4, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %98, i64 %104
  %106 = load float*, float** %10, align 8
  %107 = call i32 @axpy_cpu(i32 %95, i32 %97, float* %105, i32 1, float* %106, i32 1)
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %86

111:                                              ; preds = %86
  store i32 1, i32* %4, align 4
  br label %112

112:                                              ; preds = %206, %111
  %113 = load i32, i32* %4, align 4
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %209

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load float*, float** %10, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, 1
  %127 = mul nsw i32 %124, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds float, float* %121, i64 %128
  %130 = load float*, float** %10, align 8
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %4, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %130, i64 %136
  %138 = call i32 @copy_cpu(i32 %120, float* %129, i32 1, float* %137, i32 1)
  %139 = load i32, i32* %4, align 4
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 %139, %143
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %4, align 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = sdiv i32 %148, 2
  %150 = add nsw i32 %146, %149
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %12, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %117
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %7, align 4
  %156 = mul nsw i32 %154, %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 0, %158
  %160 = load float*, float** %9, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = mul nsw i32 %161, %162
  %164 = load i32, i32* %12, align 4
  %165 = mul nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %160, i64 %166
  %168 = load float*, float** %10, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* %4, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %168, i64 %174
  %176 = call i32 @axpy_cpu(i32 %156, i32 %159, float* %167, i32 1, float* %175, i32 1)
  br label %177

177:                                              ; preds = %153, %117
  %178 = load i32, i32* %13, align 4
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %205

182:                                              ; preds = %177
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 %183, %184
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 9
  %187 = load i32, i32* %186, align 8
  %188 = load float*, float** %9, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %7, align 4
  %191 = mul nsw i32 %189, %190
  %192 = load i32, i32* %13, align 4
  %193 = mul nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %188, i64 %194
  %196 = load float*, float** %10, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = mul nsw i32 %197, %198
  %200 = load i32, i32* %4, align 4
  %201 = mul nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %196, i64 %202
  %204 = call i32 @axpy_cpu(i32 %185, i32 %187, float* %195, i32 1, float* %203, i32 1)
  br label %205

205:                                              ; preds = %182, %177
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %4, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %4, align 4
  br label %112

209:                                              ; preds = %112
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %32

213:                                              ; preds = %32
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %7, align 4
  %216 = mul nsw i32 %214, %215
  %217 = load i32, i32* %8, align 4
  %218 = mul nsw i32 %216, %217
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %218, %220
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 7
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 0, %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %226 = load float*, float** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %228 = load float*, float** %227, align 8
  %229 = call i32 @pow_cpu(i32 %221, i32 %224, float* %226, i32 1, float* %228, i32 1)
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %7, align 4
  %232 = mul nsw i32 %230, %231
  %233 = load i32, i32* %8, align 4
  %234 = mul nsw i32 %232, %233
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %234, %236
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %239 = load float*, float** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 8
  %241 = load float*, float** %240, align 8
  %242 = call i32 @mul_cpu(i32 %237, float* %239, i32 1, float* %241, i32 1)
  ret void
}

declare dso_local i32 @scal_cpu(i32, i32, float*, i32) #1

declare dso_local i32 @pow_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @const_cpu(i32, i32, float*, i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @copy_cpu(i32, float*, i32, float*, i32) #1

declare dso_local i32 @mul_cpu(i32, float*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
