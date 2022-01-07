; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c_ccv_cnnp_model_tensors_init.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model.c_ccv_cnnp_model_tensors_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i32**, i32** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_cnnp_model_tensors_init(i32* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_14__, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32**, i32*** %16, align 8
  %18 = icmp ne i32** %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ccv_max(i32 %29, i32 1)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @ccv_nnc_tensor_symbol_count(i32* %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 31
  %46 = ashr i32 %45, 5
  %47 = call i32 @cccalloc(i32 %46, i32 4)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 8, %52
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = add i64 %53, %56
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i64 @ccmalloc(i32 %61)
  %63 = inttoptr i64 %62 to i32**
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  store i32** %63, i32*** %66, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %70, i64 %74
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32** %75, i32*** %78, align 8
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %140, %2
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %143

83:                                               ; preds = %79
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @ccv_array_get(%struct.TYPE_11__* %86, i32 %87)
  %89 = inttoptr i64 %88 to %struct.TYPE_14__*
  %90 = bitcast %struct.TYPE_14__* %10 to i8*
  %91 = bitcast %struct.TYPE_14__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ccv_nnc_tensor_symbol_params(i32 %93, i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @CCV_TENSOR_SET_DEVICE_ID(i32 %99, i32 0)
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @ccv_nnc_tensor_new(i32 0, i32 %102, i32 0)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  store i32* %104, i32** %111, align 8
  store i32 1, i32* %9, align 4
  br label %112

112:                                              ; preds = %136, %83
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @CCV_TENSOR_SET_DEVICE_ID(i32 %118, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @ccv_nnc_tensor_new(i32 0, i32 %122, i32 0)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %5, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %128, i64 %134
  store i32* %124, i32** %135, align 8
  br label %136

136:                                              ; preds = %116
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %112

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  br label %79

143:                                              ; preds = %79
  store i32 0, i32* %8, align 4
  br label %144

144:                                              ; preds = %205, %143
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %208

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i64 @ccv_array_get(%struct.TYPE_11__* %151, i32 %152)
  %154 = inttoptr i64 %153 to %struct.TYPE_14__*
  %155 = bitcast %struct.TYPE_14__* %12 to i8*
  %156 = bitcast %struct.TYPE_14__* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 4, i1 false)
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ccv_nnc_tensor_symbol_params(i32 %158, i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %161, i32* %162, align 4
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @CCV_TENSOR_SET_DEVICE_ID(i32 %164, i32 0)
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @ccv_nnc_tensor_new(i32 0, i32 %167, i32 0)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  store i32* %169, i32** %176, align 8
  store i32 1, i32* %9, align 4
  br label %177

177:                                              ; preds = %201, %148
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @CCV_TENSOR_SET_DEVICE_ID(i32 %183, i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i8* @ccv_nnc_tensor_new(i32 0, i32 %187, i32 0)
  %189 = bitcast i8* %188 to i32*
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32**, i32*** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %7, align 4
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %193, i64 %199
  store i32* %189, i32** %200, align 8
  br label %201

201:                                              ; preds = %181
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %177

204:                                              ; preds = %177
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %144

208:                                              ; preds = %144
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_symbol_count(i32*) #1

declare dso_local i32 @cccalloc(i32, i32) #1

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ccv_nnc_tensor_symbol_params(i32, i32) #1

declare dso_local i32 @CCV_TENSOR_SET_DEVICE_ID(i32, i32) #1

declare dso_local i8* @ccv_nnc_tensor_new(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
