; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_dynamic_graph.c_ccv_nnc_tensor_from_variable.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_dynamic_graph.c_ccv_nnc_tensor_from_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64*, i64*, %struct.TYPE_16__*, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_19__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@CCV_NNC_MAX_DIM_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ccv_nnc_tensor_from_variable(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %62

23:                                               ; preds = %18
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @ccv_array_get(i32 %34, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_17__**
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %7, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %8, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %43 = call i32 @CCV_NNC_IS_EXTERN_TENSOR_VIEW(%struct.TYPE_16__* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = call %struct.TYPE_13__* @CCV_NNC_TENSOR_VIEW(%struct.TYPE_16__* %50)
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %23, %18
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = call %struct.TYPE_13__* @CCV_NNC_TENSOR_VIEW(%struct.TYPE_16__* %65)
  %67 = bitcast %struct.TYPE_13__* %66 to i32*
  store i32* %67, i32** %3, align 8
  br label %242

68:                                               ; preds = %2
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = call i64 @ccv_nnc_tensor_new(i64 0, i64* %77, i32 0)
  %79 = inttoptr i64 %78 to %struct.TYPE_16__*
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 3
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %81, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = bitcast %struct.TYPE_16__* %84 to i32*
  store i32* %85, i32** %3, align 8
  br label %242

86:                                               ; preds = %68
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @ccv_array_get(i32 %97, i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_17__**
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %10, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = icmp ne %struct.TYPE_16__* %111, null
  br i1 %112, label %122, label %113

113:                                              ; preds = %86
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = call i64 @ccv_nnc_tensor_new(i64 0, i64* %117, i32 0)
  %119 = inttoptr i64 %118 to %struct.TYPE_16__*
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  store %struct.TYPE_16__* %119, %struct.TYPE_16__** %121, align 8
  br label %122

122:                                              ; preds = %113, %86
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %142, %122
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %129 = icmp slt i32 %127, %128
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i1 [ false, %123 ], [ %129, %126 ]
  br i1 %131, label %132, label %145

132:                                              ; preds = %130
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %123

145:                                              ; preds = %130
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %165, %145
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %152 = icmp slt i32 %150, %151
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi i1 [ false, %146 ], [ %152, %149 ]
  br i1 %154, label %155, label %168

155:                                              ; preds = %153
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %146

168:                                              ; preds = %153
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %186, label %171

171:                                              ; preds = %168
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i64*, i64** %173, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* @CCV_NNC_MAX_DIM_ALLOC, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 4, %180
  %182 = trunc i64 %181 to i32
  %183 = call i64 @memcmp(i64* %174, i64* %178, i32 %182)
  %184 = icmp eq i64 %183, 0
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %13, align 4
  br label %186

186:                                              ; preds = %171, %168
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %189
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %194, align 8
  %196 = call %struct.TYPE_13__* @CCV_NNC_TENSOR_VIEW(%struct.TYPE_16__* %195)
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = call i64 @ccv_nnc_tensor_new(i64 %199, i64* %203, i32 0)
  %205 = inttoptr i64 %204 to %struct.TYPE_16__*
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 3
  store %struct.TYPE_16__* %205, %struct.TYPE_16__** %207, align 8
  br label %237

208:                                              ; preds = %189, %186
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 3
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = call %struct.TYPE_13__* @CCV_NNC_TENSOR_VIEW(%struct.TYPE_16__* %211)
  %213 = bitcast %struct.TYPE_13__* %212 to i32*
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 1
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %208
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  br label %232

228:                                              ; preds = %208
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  %231 = load i64*, i64** %230, align 8
  br label %232

232:                                              ; preds = %228, %223
  %233 = phi i64* [ %227, %223 ], [ %231, %228 ]
  %234 = call %struct.TYPE_16__* @ccv_nnc_tensor_view_new(i32* %213, i64* %217, i64* %220, i64* %233)
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 3
  store %struct.TYPE_16__* %234, %struct.TYPE_16__** %236, align 8
  br label %237

237:                                              ; preds = %232, %192
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 3
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %239, align 8
  %241 = bitcast %struct.TYPE_16__* %240 to i32*
  store i32* %241, i32** %3, align 8
  br label %242

242:                                              ; preds = %237, %73, %62
  %243 = load i32*, i32** %3, align 8
  ret i32* %243
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ccv_array_get(i32, i32) #1

declare dso_local i32 @CCV_NNC_IS_EXTERN_TENSOR_VIEW(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_13__* @CCV_NNC_TENSOR_VIEW(%struct.TYPE_16__*) #1

declare dso_local i64 @ccv_nnc_tensor_new(i64, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local %struct.TYPE_16__* @ccv_nnc_tensor_view_new(i32*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
