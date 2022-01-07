; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_collide.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_collide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @collide(i32 %0, float* %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 0, i32* %10, align 4
  %23 = load float*, float** %7, align 8
  %24 = load float, float* %23, align 4
  %25 = call i32 @chunked(float %24)
  store i32 %25, i32* %11, align 4
  %26 = load float*, float** %9, align 8
  %27 = load float, float* %26, align 4
  %28 = call i32 @chunked(float %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.TYPE_3__* @find_chunk(i32 %29, i32 %30)
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %13, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %202

36:                                               ; preds = %4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32* %38, i32** %14, align 8
  %39 = load float*, float** %7, align 8
  %40 = load float, float* %39, align 4
  %41 = call i32 @roundf(float %40)
  store i32 %41, i32* %15, align 4
  %42 = load float*, float** %8, align 8
  %43 = load float, float* %42, align 4
  %44 = call i32 @roundf(float %43)
  store i32 %44, i32* %16, align 4
  %45 = load float*, float** %9, align 8
  %46 = load float, float* %45, align 4
  %47 = call i32 @roundf(float %46)
  store i32 %47, i32* %17, align 4
  %48 = load float*, float** %7, align 8
  %49 = load float, float* %48, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sitofp i32 %50 to float
  %52 = fsub float %49, %51
  store float %52, float* %18, align 4
  %53 = load float*, float** %8, align 8
  %54 = load float, float* %53, align 4
  %55 = load i32, i32* %16, align 4
  %56 = sitofp i32 %55 to float
  %57 = fsub float %54, %56
  store float %57, float* %19, align 4
  %58 = load float*, float** %9, align 8
  %59 = load float, float* %58, align 4
  %60 = load i32, i32* %17, align 4
  %61 = sitofp i32 %60 to float
  %62 = fsub float %59, %61
  store float %62, float* %20, align 4
  store float 2.500000e-01, float* %21, align 4
  store i32 0, i32* %22, align 4
  br label %63

63:                                               ; preds = %197, %36
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %200

67:                                               ; preds = %63
  %68 = load float, float* %18, align 4
  %69 = load float, float* %21, align 4
  %70 = fneg float %69
  %71 = fcmp olt float %68, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %22, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @map_get(i32* %73, i32 %75, i32 %78, i32 %79)
  %81 = call i64 @is_obstacle(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %72
  %84 = load i32, i32* %15, align 4
  %85 = sitofp i32 %84 to float
  %86 = load float, float* %21, align 4
  %87 = fsub float %85, %86
  %88 = load float*, float** %7, align 8
  store float %87, float* %88, align 4
  br label %89

89:                                               ; preds = %83, %72, %67
  %90 = load float, float* %18, align 4
  %91 = load float, float* %21, align 4
  %92 = fcmp ogt float %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %89
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %22, align 4
  %99 = sub nsw i32 %97, %98
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @map_get(i32* %94, i32 %96, i32 %99, i32 %100)
  %102 = call i64 @is_obstacle(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load i32, i32* %15, align 4
  %106 = sitofp i32 %105 to float
  %107 = load float, float* %21, align 4
  %108 = fadd float %106, %107
  %109 = load float*, float** %7, align 8
  store float %108, float* %109, align 4
  br label %110

110:                                              ; preds = %104, %93, %89
  %111 = load float, float* %19, align 4
  %112 = load float, float* %21, align 4
  %113 = fneg float %112
  %114 = fcmp olt float %111, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %110
  %116 = load i32*, i32** %14, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %22, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %17, align 4
  %123 = call i32 @map_get(i32* %116, i32 %117, i32 %121, i32 %122)
  %124 = call i64 @is_obstacle(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %115
  %127 = load i32, i32* %16, align 4
  %128 = sitofp i32 %127 to float
  %129 = load float, float* %21, align 4
  %130 = fsub float %128, %129
  %131 = load float*, float** %8, align 8
  store float %130, float* %131, align 4
  store i32 1, i32* %10, align 4
  br label %132

132:                                              ; preds = %126, %115, %110
  %133 = load float, float* %19, align 4
  %134 = load float, float* %21, align 4
  %135 = fcmp ogt float %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %132
  %137 = load i32*, i32** %14, align 8
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %22, align 4
  %141 = sub nsw i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @map_get(i32* %137, i32 %138, i32 %142, i32 %143)
  %145 = call i64 @is_obstacle(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %136
  %148 = load i32, i32* %16, align 4
  %149 = sitofp i32 %148 to float
  %150 = load float, float* %21, align 4
  %151 = fadd float %149, %150
  %152 = load float*, float** %8, align 8
  store float %151, float* %152, align 4
  store i32 1, i32* %10, align 4
  br label %153

153:                                              ; preds = %147, %136, %132
  %154 = load float, float* %20, align 4
  %155 = load float, float* %21, align 4
  %156 = fneg float %155
  %157 = fcmp olt float %154, %156
  br i1 %157, label %158, label %175

158:                                              ; preds = %153
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %22, align 4
  %163 = sub nsw i32 %161, %162
  %164 = load i32, i32* %17, align 4
  %165 = sub nsw i32 %164, 1
  %166 = call i32 @map_get(i32* %159, i32 %160, i32 %163, i32 %165)
  %167 = call i64 @is_obstacle(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %158
  %170 = load i32, i32* %17, align 4
  %171 = sitofp i32 %170 to float
  %172 = load float, float* %21, align 4
  %173 = fsub float %171, %172
  %174 = load float*, float** %9, align 8
  store float %173, float* %174, align 4
  br label %175

175:                                              ; preds = %169, %158, %153
  %176 = load float, float* %20, align 4
  %177 = load float, float* %21, align 4
  %178 = fcmp ogt float %176, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %175
  %180 = load i32*, i32** %14, align 8
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load i32, i32* %22, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %185, 1
  %187 = call i32 @map_get(i32* %180, i32 %181, i32 %184, i32 %186)
  %188 = call i64 @is_obstacle(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %179
  %191 = load i32, i32* %17, align 4
  %192 = sitofp i32 %191 to float
  %193 = load float, float* %21, align 4
  %194 = fadd float %192, %193
  %195 = load float*, float** %9, align 8
  store float %194, float* %195, align 4
  br label %196

196:                                              ; preds = %190, %179, %175
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %22, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %22, align 4
  br label %63

200:                                              ; preds = %63
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %200, %34
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @chunked(float) #1

declare dso_local %struct.TYPE_3__* @find_chunk(i32, i32) #1

declare dso_local i32 @roundf(float) #1

declare dso_local i64 @is_obstacle(i32) #1

declare dso_local i32 @map_get(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
