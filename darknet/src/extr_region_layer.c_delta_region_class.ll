; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_region_layer.c_delta_region_class.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_region_layer.c_delta_region_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delta_region_class(float* %0, float* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_3__* %5, float %6, i32 %7, float* %8, i32 %9) #0 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %16, align 8
  store float %6, float* %17, align 4
  store i32 %7, i32* %18, align 4
  store float* %8, float** %19, align 8
  store i32 %9, i32* %20, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %129

28:                                               ; preds = %10
  store float 1.000000e+00, float* %23, align 4
  br label %29

29:                                               ; preds = %96, %28
  %30 = load i32, i32* %14, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %124

32:                                               ; preds = %29
  %33 = load float*, float** %11, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %14, align 4
  %37 = mul nsw i32 %35, %36
  %38 = add nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %33, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float, float* %23, align 4
  %43 = fmul float %42, %41
  store float %43, float* %23, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %24, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %24, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %25, align 4
  store i32 0, i32* %21, align 4
  br label %58

58:                                               ; preds = %93, %32
  %59 = load i32, i32* %21, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %59, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %58
  %69 = load float, float* %17, align 4
  %70 = load float*, float** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* %21, align 4
  %75 = add nsw i32 %73, %74
  %76 = mul nsw i32 %72, %75
  %77 = add nsw i32 %71, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %70, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fsub float 0.000000e+00, %80
  %82 = fmul float %69, %81
  %83 = load float*, float** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %21, align 4
  %88 = add nsw i32 %86, %87
  %89 = mul nsw i32 %85, %88
  %90 = add nsw i32 %84, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %83, i64 %91
  store float %82, float* %92, align 4
  br label %93

93:                                               ; preds = %68
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %58

96:                                               ; preds = %58
  %97 = load float, float* %17, align 4
  %98 = load float*, float** %11, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %14, align 4
  %102 = mul nsw i32 %100, %101
  %103 = add nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %98, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fsub float 1.000000e+00, %106
  %108 = fmul float %97, %107
  %109 = load float*, float** %12, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %14, align 4
  %113 = mul nsw i32 %111, %112
  %114 = add nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %109, i64 %115
  store float %108, float* %116, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %14, align 4
  br label %29

124:                                              ; preds = %29
  %125 = load float, float* %23, align 4
  %126 = load float*, float** %19, align 8
  %127 = load float, float* %126, align 4
  %128 = fadd float %127, %125
  store float %128, float* %126, align 4
  br label %213

129:                                              ; preds = %10
  %130 = load float*, float** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fcmp une float %134, 0.000000e+00
  br i1 %135, label %136, label %160

136:                                              ; preds = %129
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load float, float* %17, align 4
  %141 = load float*, float** %11, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %14, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %141, i64 %147
  %149 = load float, float* %148, align 4
  %150 = fsub float 1.000000e+00, %149
  %151 = fmul float %140, %150
  %152 = load float*, float** %12, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %14, align 4
  %156 = mul nsw i32 %154, %155
  %157 = add nsw i32 %153, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %152, i64 %158
  store float %151, float* %159, align 4
  br label %213

160:                                              ; preds = %136, %129
  store i32 0, i32* %22, align 4
  br label %161

161:                                              ; preds = %209, %160
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %212

165:                                              ; preds = %161
  %166 = load float, float* %17, align 4
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 1, i32 0
  %172 = sitofp i32 %171 to float
  %173 = load float*, float** %11, align 8
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %22, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %173, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fsub float %172, %181
  %183 = fmul float %166, %182
  %184 = load float*, float** %12, align 8
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %22, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %184, i64 %190
  store float %183, float* %191, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %165
  %196 = load float*, float** %11, align 8
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %22, align 4
  %200 = mul nsw i32 %198, %199
  %201 = add nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds float, float* %196, i64 %202
  %204 = load float, float* %203, align 4
  %205 = load float*, float** %19, align 8
  %206 = load float, float* %205, align 4
  %207 = fadd float %206, %204
  store float %207, float* %205, align 4
  br label %208

208:                                              ; preds = %195, %165
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %22, align 4
  br label %161

212:                                              ; preds = %161
  br label %213

213:                                              ; preds = %139, %212, %124
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
