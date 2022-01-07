; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_update_gain_history.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_dynaudnorm.c_update_gain_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, double*, i32*, i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, double)* @update_gain_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gain_history(%struct.TYPE_4__* %0, i32 %1, double %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @cqueue_empty(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cqueue_empty(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %76

33:                                               ; preds = %23, %3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load double, double* %6, align 8
  br label %45

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi double [ %43, %42 ], [ 1.000000e+00, %44 ]
  store double %46, double* %8, align 8
  %47 = load double, double* %8, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load double*, double** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  store double %47, double* %53, align 8
  br label %54

54:                                               ; preds = %65, %45
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cqueue_size(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load double, double* %8, align 8
  %74 = call i32 @cqueue_enqueue(i32 %72, double %73)
  br label %54

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %23
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load double, double* %6, align 8
  %85 = call i32 @cqueue_enqueue(i32 %83, double %84)
  br label %86

86:                                               ; preds = %180, %76
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @cqueue_size(i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %206

99:                                               ; preds = %86
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @cqueue_size(i32 %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @av_assert0(i32 %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @cqueue_empty(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %180

123:                                              ; preds = %99
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sdiv i32 %126, 2
  store i32 %127, i32* %10, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call double @cqueue_peek(i32 %139, i32 0)
  br label %142

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %132
  %143 = phi double [ %140, %132 ], [ 1.000000e+00, %141 ]
  store double %143, double* %11, align 8
  %144 = load i32, i32* %10, align 4
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %156, %142
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @cqueue_size(i32 %152)
  %154 = load i32, i32* %10, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %145
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  %159 = load double, double* %11, align 8
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call double @cqueue_peek(i32 %166, i32 %167)
  %169 = call double @FFMIN(double %159, double %168)
  store double %169, double* %11, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load double, double* %11, align 8
  %178 = call i32 @cqueue_enqueue(i32 %176, double %177)
  br label %145

179:                                              ; preds = %145
  br label %180

180:                                              ; preds = %179, %99
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call double @minimum_filter(i32 %187)
  store double %188, double* %9, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load double, double* %9, align 8
  %197 = call i32 @cqueue_enqueue(i32 %195, double %196)
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cqueue_pop(i32 %204)
  br label %86

206:                                              ; preds = %86
  br label %207

207:                                              ; preds = %220, %206
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @cqueue_size(i32 %214)
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sge i32 %215, %218
  br i1 %219, label %220, label %261

220:                                              ; preds = %207
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @cqueue_size(i32 %227)
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %228, %231
  %233 = zext i1 %232 to i32
  %234 = call i32 @av_assert0(i32 %233)
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = call double @gaussian_filter(%struct.TYPE_4__* %235, i32 %242)
  store double %243, double* %13, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load double, double* %13, align 8
  %252 = call i32 @cqueue_enqueue(i32 %250, double %251)
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @cqueue_pop(i32 %259)
  br label %207

261:                                              ; preds = %207
  ret void
}

declare dso_local i64 @cqueue_empty(i32) #1

declare dso_local i32 @cqueue_size(i32) #1

declare dso_local i32 @cqueue_enqueue(i32, double) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local double @cqueue_peek(i32, i32) #1

declare dso_local double @FFMIN(double, double) #1

declare dso_local double @minimum_filter(i32) #1

declare dso_local i32 @cqueue_pop(i32) #1

declare dso_local double @gaussian_filter(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
