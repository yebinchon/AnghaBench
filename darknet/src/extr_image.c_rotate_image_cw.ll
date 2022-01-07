; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_rotate_image_cw.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_rotate_image_cw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rotate_image_cw(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store i32 %1, i32* %3, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 400
  %19 = srem i32 %18, 4
  store i32 %19, i32* %3, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %208, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %211

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %204, %26
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %207

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %200, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %35, 2
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %203

38:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %196, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sdiv i32 %42, 2
  %44 = add nsw i32 %43, 1
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %199

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %48 = load float*, float** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = add nsw i32 %52, %56
  %58 = mul nsw i32 %51, %57
  %59 = add nsw i32 %49, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %48, i64 %60
  %62 = load float, float* %61, align 4
  store float %62, float* %9, align 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %73, %74
  %76 = add nsw i32 %71, %75
  %77 = mul nsw i32 %70, %76
  %78 = add nsw i32 %68, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %64, i64 %79
  %81 = load float, float* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %87, %91
  %93 = mul nsw i32 %86, %92
  %94 = add nsw i32 %84, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %83, i64 %95
  store float %81, float* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %98 = load float*, float** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %100, %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %106, %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %7, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %108, %112
  %114 = mul nsw i32 %104, %113
  %115 = add nsw i32 %102, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %98, i64 %116
  %118 = load float, float* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %120 = load float*, float** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 1
  %123 = load i32, i32* %5, align 4
  %124 = sub nsw i32 %122, %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %127, %131
  %133 = mul nsw i32 %126, %132
  %134 = add nsw i32 %124, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %120, i64 %135
  store float %118, float* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %138 = load float*, float** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %6, align 4
  %145 = sub nsw i32 %143, %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %145, %149
  %151 = mul nsw i32 %141, %150
  %152 = add nsw i32 %139, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %138, i64 %153
  %155 = load float, float* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %157 = load float*, float** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sub nsw i32 %158, 1
  %160 = load i32, i32* %6, align 4
  %161 = sub nsw i32 %159, %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, 1
  %166 = load i32, i32* %5, align 4
  %167 = sub nsw i32 %165, %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %7, align 4
  %171 = mul nsw i32 %169, %170
  %172 = add nsw i32 %167, %171
  %173 = mul nsw i32 %163, %172
  %174 = add nsw i32 %161, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %157, i64 %175
  store float %155, float* %176, align 4
  %177 = load float, float* %9, align 4
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %179 = load float*, float** %178, align 8
  %180 = load i32, i32* %5, align 4
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %183, 1
  %185 = load i32, i32* %6, align 4
  %186 = sub nsw i32 %184, %185
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %186, %190
  %192 = mul nsw i32 %182, %191
  %193 = add nsw i32 %180, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %179, i64 %194
  store float %177, float* %195, align 4
  br label %196

196:                                              ; preds = %46
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %39

199:                                              ; preds = %39
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %5, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %5, align 4
  br label %33

203:                                              ; preds = %33
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %27

207:                                              ; preds = %27
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %22

211:                                              ; preds = %22
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
