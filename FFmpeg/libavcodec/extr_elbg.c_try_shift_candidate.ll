; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elbg.c_try_shift_candidate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elbg.c_try_shift_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i32, %struct.TYPE_13__**, i64*, i64* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*)* @try_shift_candidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_shift_candidate(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32*], align 16
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = getelementptr inbounds i32*, i32** %13, i64 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  store i32* %25, i32** %17, align 8
  %26 = getelementptr inbounds i32*, i32** %17, i64 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %29, i64 %34
  store i32* %35, i32** %26, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %55, %2
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 5
  %42 = load i64*, i64** %41, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %42, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %36

58:                                               ; preds = %36
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %60 = load i32*, i32** %59, align 16
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32* %60, i32 0, i32 %66)
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %130, %58
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %71, label %133

71:                                               ; preds = %68
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %73, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = mul nsw i32 2, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %74, i64 %81
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %12, align 8
  br label %84

84:                                               ; preds = %125, %71
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %86 = icmp ne %struct.TYPE_13__* %85, null
  br i1 %86, label %87, label %129

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %121, %87
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %90
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %99, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %113 = load i32*, i32** %112, align 16
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %111
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  br label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %90

124:                                              ; preds = %90
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %12, align 8
  br label %84

129:                                              ; preds = %84
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %68

133:                                              ; preds = %68
  %134 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %135 = load i32*, i32** %134, align 16
  %136 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %137 = load i32*, i32** %136, align 16
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @vect_division(i32* %135, i32* %137, i32 %138, i32 %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %148 = load i32*, i32** %147, align 16
  %149 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @get_new_centroids(%struct.TYPE_12__* %143, i32 %146, i32* %148, i32* %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %153 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %154 = load i32*, i32** %153, align 16
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %156, align 8
  %158 = load i32*, i32** %4, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %157, i64 %161
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = call i32 @eval_error_cell(%struct.TYPE_12__* %152, i32* %154, %struct.TYPE_13__* %163)
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %164, i32* %165, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 2
  %168 = load i32*, i32** %167, align 16
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %170, align 8
  %172 = load i32*, i32** %4, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %171, i64 %175
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = call i32 @eval_error_cell(%struct.TYPE_12__* %166, i32* %168, %struct.TYPE_13__* %177)
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %178
  store i32 %181, i32* %179, align 4
  %182 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %8, align 4
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 4
  %192 = load i64*, i64** %191, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %194, align 8
  %196 = load i32*, i32** %4, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %195, i64 %199
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = call i64 @simple_lbg(%struct.TYPE_12__* %184, i32 %187, i32** %188, i32* %189, i64* %192, %struct.TYPE_13__* %201)
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %243

210:                                              ; preds = %133
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %212 = load i32*, i32** %4, align 8
  %213 = getelementptr inbounds [3 x i32*], [3 x i32*]* %11, i64 0, i64 0
  %214 = call i32 @shift_codebook(%struct.TYPE_12__* %211, i32* %212, i32** %213)
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %7, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %237, %210
  %223 = load i32, i32* %5, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %240

225:                                              ; preds = %222
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %227 = load i32*, i32** %4, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @update_utility_and_n_cb(%struct.TYPE_12__* %226, i32 %231, i32 %235)
  br label %237

237:                                              ; preds = %225
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %5, align 4
  br label %222

240:                                              ; preds = %222
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %242 = call i32 @evaluate_utility_inc(%struct.TYPE_12__* %241)
  br label %243

243:                                              ; preds = %240, %133
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vect_division(i32*, i32*, i32, i32) #1

declare dso_local i32 @get_new_centroids(%struct.TYPE_12__*, i32, i32*, i32*) #1

declare dso_local i32 @eval_error_cell(%struct.TYPE_12__*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @simple_lbg(%struct.TYPE_12__*, i32, i32**, i32*, i64*, %struct.TYPE_13__*) #1

declare dso_local i32 @shift_codebook(%struct.TYPE_12__*, i32*, i32**) #1

declare dso_local i32 @update_utility_and_n_cb(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @evaluate_utility_inc(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
