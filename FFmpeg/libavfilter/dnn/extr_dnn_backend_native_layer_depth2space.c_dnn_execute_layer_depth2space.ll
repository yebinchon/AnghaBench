; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_depth2space.c_dnn_execute_layer_depth2space.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/dnn/extr_dnn_backend_native_layer_depth2space.c_dnn_execute_layer_depth2space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, float*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnn_execute_layer_depth2space(%struct.TYPE_5__* %0, i64* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca float*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %11, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %15, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = load i64, i64* %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %16, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %17, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load float*, float** %68, align 8
  store float* %69, float** %18, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sdiv i32 %70, %73
  store i32 %74, i32* %24, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = mul nsw i32 %75, %76
  store i32 %77, i32* %25, align 4
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %12, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %26, align 4
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  store i32 %83, i32* %27, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %28, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %12, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  %101 = mul nsw i32 %99, %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %24, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %119 = call i32 @calculate_operand_data_length(%struct.TYPE_5__* %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load float*, float** %123, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call float* @av_realloc(float* %124, i32 %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  store float* %128, float** %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load float*, float** %132, align 8
  %134 = icmp ne float* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %214

136:                                              ; preds = %4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load float*, float** %138, align 8
  store float* %139, float** %10, align 8
  store i32 0, i32* %19, align 4
  br label %140

140:                                              ; preds = %210, %136
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %213

144:                                              ; preds = %140
  store i32 0, i32* %20, align 4
  br label %145

145:                                              ; preds = %202, %144
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %16, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %205

149:                                              ; preds = %145
  store i32 0, i32* %21, align 4
  br label %150

150:                                              ; preds = %198, %149
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %201

154:                                              ; preds = %150
  store i32 0, i32* %22, align 4
  br label %155

155:                                              ; preds = %194, %154
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %197

159:                                              ; preds = %155
  store i32 0, i32* %23, align 4
  br label %160

160:                                              ; preds = %186, %159
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %24, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %189

164:                                              ; preds = %160
  %165 = load float*, float** %18, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = load float, float* %168, align 4
  %170 = load float*, float** %10, align 8
  %171 = load i32, i32* %21, align 4
  %172 = load i32, i32* %26, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %27, align 4
  %176 = mul nsw i32 %174, %175
  %177 = add nsw i32 %173, %176
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* %24, align 4
  %180 = mul nsw i32 %178, %179
  %181 = add nsw i32 %177, %180
  %182 = load i32, i32* %23, align 4
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %170, i64 %184
  store float %169, float* %185, align 4
  br label %186

186:                                              ; preds = %164
  %187 = load i32, i32* %23, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %23, align 4
  br label %160

189:                                              ; preds = %160
  %190 = load i32, i32* %24, align 4
  %191 = load float*, float** %18, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds float, float* %191, i64 %192
  store float* %193, float** %18, align 8
  br label %194

194:                                              ; preds = %189
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %22, align 4
  br label %155

197:                                              ; preds = %155
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %21, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %21, align 4
  br label %150

201:                                              ; preds = %150
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %145

205:                                              ; preds = %145
  %206 = load i32, i32* %25, align 4
  %207 = load float*, float** %10, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds float, float* %207, i64 %208
  store float* %209, float** %10, align 8
  br label %210

210:                                              ; preds = %205
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %19, align 4
  br label %140

213:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %214

214:                                              ; preds = %213, %135
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i32 @calculate_operand_data_length(%struct.TYPE_5__*) #1

declare dso_local float* @av_realloc(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
