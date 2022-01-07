; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_normalize_image2.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_normalize_image2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalize_image2(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call float* @calloc(i32 %8, i32 4)
  store float* %9, float** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call float* @calloc(i32 %11, i32 4)
  store float* %12, float** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %39, %1
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %20 = load float*, float** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %21, %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %20, i64 %28
  %30 = load float, float* %29, align 4
  %31 = load float*, float** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  store float %30, float* %34, align 4
  %35 = load float*, float** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  store float %30, float* %38, align 4
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %13

42:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %104, %42
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %107

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %100, %48
  %50 = load i32, i32* %4, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %52, %54
  %56 = icmp slt i32 %50, %55
  br i1 %56, label %57, label %103

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %59 = load float*, float** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %61, %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %64, %66
  %68 = add nsw i32 %60, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %59, i64 %69
  %71 = load float, float* %70, align 4
  store float %71, float* %6, align 4
  %72 = load float, float* %6, align 4
  %73 = load float*, float** %2, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fcmp olt float %72, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %57
  %80 = load float, float* %6, align 4
  %81 = load float*, float** %2, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  br label %85

85:                                               ; preds = %79, %57
  %86 = load float, float* %6, align 4
  %87 = load float*, float** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fcmp ogt float %86, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load float, float* %6, align 4
  %95 = load float*, float** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  store float %94, float* %98, align 4
  br label %99

99:                                               ; preds = %93, %85
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %49

103:                                              ; preds = %49
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %43

107:                                              ; preds = %43
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i32, i32* %4, align 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %108
  %114 = load float*, float** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %119, i64 %121
  %123 = load float, float* %122, align 4
  %124 = fsub float %118, %123
  %125 = fpext float %124 to double
  %126 = fcmp olt double %125, 1.000000e-09
  br i1 %126, label %127, label %136

127:                                              ; preds = %113
  %128 = load float*, float** %2, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  store float 0.000000e+00, float* %131, align 4
  %132 = load float*, float** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  store float 1.000000e+00, float* %135, align 4
  br label %136

136:                                              ; preds = %127, %113
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %108

140:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %205, %140
  %142 = load i32, i32* %5, align 4
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %208

146:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %201, %146
  %148 = load i32, i32* %4, align 4
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %150, %152
  %154 = icmp slt i32 %148, %153
  br i1 %154, label %155, label %204

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %157 = load float*, float** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %5, align 4
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %159, %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = mul nsw i32 %162, %164
  %166 = add nsw i32 %158, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %157, i64 %167
  %169 = load float, float* %168, align 4
  %170 = load float*, float** %2, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float, float* %173, align 4
  %175 = fsub float %169, %174
  %176 = load float*, float** %3, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds float, float* %176, i64 %178
  %180 = load float, float* %179, align 4
  %181 = load float*, float** %2, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = load float, float* %184, align 4
  %186 = fsub float %180, %185
  %187 = fdiv float %175, %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %189 = load float*, float** %188, align 8
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* %5, align 4
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %191, %193
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %194, %196
  %198 = add nsw i32 %190, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds float, float* %189, i64 %199
  store float %187, float* %200, align 4
  br label %201

201:                                              ; preds = %155
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %4, align 4
  br label %147

204:                                              ; preds = %147
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %5, align 4
  br label %141

208:                                              ; preds = %141
  %209 = load float*, float** %2, align 8
  %210 = call i32 @free(float* %209)
  %211 = load float*, float** %3, align 8
  %212 = call i32 @free(float* %211)
  ret void
}

declare dso_local float* @calloc(i32, i32) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
