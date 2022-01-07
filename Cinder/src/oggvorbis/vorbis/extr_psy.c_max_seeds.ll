; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_max_seeds.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c_max_seeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float }

@NEGINF = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, float*)* @max_seeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max_seeds(%struct.TYPE_5__* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %20 = load float*, float** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @seed_chase(float* %20, i32 %21, i64 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 1
  %35 = sub nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %155, %3
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %156

44:                                               ; preds = %37
  %45 = load float*, float** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds float, float* %45, i64 %46
  %48 = load float, float* %47, align 4
  store float %48, float* %11, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %54, %61
  %63 = ashr i32 %62, 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %12, align 8
  %69 = load float, float* %11, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load float, float* %73, align 4
  %75 = fcmp ogt float %69, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %44
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  store float %81, float* %11, align 4
  br label %82

82:                                               ; preds = %76, %44
  br label %83

83:                                               ; preds = %113, %82
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %84, 1
  %86 = load i64, i64* %12, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load i64, i64* %10, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %10, align 8
  %91 = load float*, float** %5, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds float, float* %91, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load float, float* @NEGINF, align 4
  %96 = fcmp ogt float %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load float*, float** %5, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds float, float* %98, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float, float* %11, align 4
  %103 = fcmp olt float %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %97, %88
  %105 = load float, float* %11, align 4
  %106 = load float, float* @NEGINF, align 4
  %107 = fcmp oeq float %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %104, %97
  %109 = load float*, float** %5, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds float, float* %109, i64 %110
  %112 = load float, float* %111, align 4
  store float %112, float* %11, align 4
  br label %113

113:                                              ; preds = %108, %104
  br label %83

114:                                              ; preds = %83
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  store i64 %120, i64* %12, align 8
  br label %121

121:                                              ; preds = %152, %114
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %12, align 8
  %136 = icmp sle i64 %134, %135
  br label %137

137:                                              ; preds = %127, %121
  %138 = phi i1 [ false, %121 ], [ %136, %127 ]
  br i1 %138, label %139, label %155

139:                                              ; preds = %137
  %140 = load float*, float** %6, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds float, float* %140, i64 %141
  %143 = load float, float* %142, align 4
  %144 = load float, float* %11, align 4
  %145 = fcmp olt float %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load float, float* %11, align 4
  %148 = load float*, float** %6, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds float, float* %148, i64 %149
  store float %147, float* %150, align 4
  br label %151

151:                                              ; preds = %146, %139
  br label %152

152:                                              ; preds = %151
  %153 = load i64, i64* %9, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %9, align 8
  br label %121

155:                                              ; preds = %137
  br label %37

156:                                              ; preds = %37
  %157 = load float*, float** %5, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %160, 1
  %162 = getelementptr inbounds float, float* %157, i64 %161
  %163 = load float, float* %162, align 4
  store float %163, float* %13, align 4
  br label %164

164:                                              ; preds = %183, %156
  %165 = load i64, i64* %9, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = icmp slt i64 %165, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %164
  %171 = load float*, float** %6, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds float, float* %171, i64 %172
  %174 = load float, float* %173, align 4
  %175 = load float, float* %13, align 4
  %176 = fcmp olt float %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load float, float* %13, align 4
  %179 = load float*, float** %6, align 8
  %180 = load i64, i64* %9, align 8
  %181 = getelementptr inbounds float, float* %179, i64 %180
  store float %178, float* %181, align 4
  br label %182

182:                                              ; preds = %177, %170
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %9, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %9, align 8
  br label %164

186:                                              ; preds = %164
  ret void
}

declare dso_local i32 @seed_chase(float*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
