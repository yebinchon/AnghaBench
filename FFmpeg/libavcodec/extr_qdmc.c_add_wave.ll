; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_add_wave.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdmc.c_add_wave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float**, i32, i32, float**, i32 }

@amplitude_tab = common dso_local global float* null, align 8
@sin_table = common dso_local global float* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32)* @add_wave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_wave(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %7
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 4, %31
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = sub nsw i32 4, %34
  %36 = ashr i32 %33, %35
  store i32 %36, i32* %17, align 4
  %37 = load float*, float** @amplitude_tab, align 8
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, 63
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %37, i64 %40
  %42 = load float, float* %41, align 4
  store float %42, float* %21, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load float**, float*** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float*, float** %45, i64 %47
  %49 = load float*, float** %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %52, %57
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %49, i64 %61
  store float* %62, float** %23, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load float**, float*** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float*, float** %65, i64 %68
  %70 = load float*, float** %69, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %73, %78
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %70, i64 %82
  store float* %83, float** %24, align 8
  %84 = load i32, i32* %14, align 4
  %85 = shl i32 %84, 6
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 4, %87
  %89 = ashr i32 %86, %88
  %90 = mul nsw i32 2, %89
  %91 = add nsw i32 %90, 1
  %92 = shl i32 %91, 7
  %93 = sub nsw i32 %85, %92
  store i32 %93, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %211, %30
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  %98 = shl i32 1, %97
  %99 = sub nsw i32 %98, 1
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %214

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 2, %102
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %16, align 4
  %106 = sub nsw i32 7, %105
  %107 = shl i32 %104, %106
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %18, align 4
  %110 = load float, float* %21, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load float**, float*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float*, float** %113, i64 %115
  %117 = load float*, float** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = fmul float %110, %121
  store float %122, float* %22, align 4
  %123 = load float, float* %22, align 4
  %124 = load float*, float** @sin_table, align 8
  %125 = load i32, i32* %18, align 4
  %126 = and i32 %125, 511
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %124, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fmul float %123, %129
  store float %130, float* %19, align 4
  %131 = load float, float* %22, align 4
  %132 = load float*, float** @sin_table, align 8
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 128
  %135 = and i32 %134, 511
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %132, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fmul float %131, %138
  store float %139, float* %20, align 4
  %140 = load float, float* %19, align 4
  %141 = load float*, float** %23, align 8
  %142 = getelementptr inbounds float, float* %141, i64 0
  %143 = load float, float* %142, align 4
  %144 = fadd float %143, %140
  store float %144, float* %142, align 4
  %145 = load float, float* %19, align 4
  %146 = load float*, float** %23, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  %148 = load float, float* %147, align 4
  %149 = fsub float %148, %145
  store float %149, float* %147, align 4
  %150 = load float, float* %20, align 4
  %151 = load float*, float** %24, align 8
  %152 = getelementptr inbounds float, float* %151, i64 0
  %153 = load float, float* %152, align 4
  %154 = fadd float %153, %150
  store float %154, float* %152, align 4
  %155 = load float, float* %20, align 4
  %156 = load float*, float** %24, align 8
  %157 = getelementptr inbounds float, float* %156, i64 1
  %158 = load float, float* %157, align 4
  %159 = fsub float %158, %155
  store float %159, float* %157, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load float*, float** %23, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds float, float* %163, i64 %164
  store float* %165, float** %23, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load float*, float** %24, align 8
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds float, float* %169, i64 %170
  store float* %171, float** %24, align 8
  %172 = load float*, float** %23, align 8
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load float**, float*** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float*, float** %175, i64 %177
  %179 = load float*, float** %178, align 8
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = mul nsw i32 2, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %179, i64 %184
  %186 = icmp uge float* %172, %185
  br i1 %186, label %187, label %210

187:                                              ; preds = %101
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load float**, float*** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 0, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float*, float** %190, i64 %193
  %195 = load float*, float** %194, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds float, float* %195, i64 %197
  store float* %198, float** %23, align 8
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load float**, float*** %200, align 8
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 2, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds float*, float** %201, i64 %204
  %206 = load float*, float** %205, align 8
  %207 = load i32, i32* %17, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  store float* %209, float** %24, align 8
  br label %210

210:                                              ; preds = %187, %101
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %94

214:                                              ; preds = %94
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
