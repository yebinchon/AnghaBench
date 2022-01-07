; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_darknet.c_average.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_darknet.c_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@gpu_index = common dso_local global i32 0, align 4
@CONVOLUTIONAL = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @average(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_7__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %5, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 3
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  store i32 -1, i32* @gpu_index, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call %struct.TYPE_6__* @parse_network_cfg(i8* %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call %struct.TYPE_6__* @parse_network_cfg(i8* %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 4
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @load_weights(%struct.TYPE_6__* %31, i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 5
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %156, %2
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %159

40:                                               ; preds = %36
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @load_weights(%struct.TYPE_6__* %47, i8* %48)
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %152, %40
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %155

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = bitcast %struct.TYPE_7__* %13 to i8*
  %64 = bitcast %struct.TYPE_7__* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 56, i1 false)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = bitcast %struct.TYPE_7__* %14 to i8*
  %72 = bitcast %struct.TYPE_7__* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 56, i1 false)
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CONVOLUTIONAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %128

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %79, %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %82, %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %85, %87
  store i32 %88, i32* %15, align 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @axpy_cpu(i32 %90, i32 1, i32 %92, i32 1, i32 %94, i32 1)
  %96 = load i32, i32* %15, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @axpy_cpu(i32 %96, i32 1, i32 %98, i32 1, i32 %100, i32 1)
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 11
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %77
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @axpy_cpu(i32 %107, i32 1, i32 %109, i32 1, i32 %111, i32 1)
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 9
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @axpy_cpu(i32 %114, i32 1, i32 %116, i32 1, i32 %118, i32 1)
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @axpy_cpu(i32 %121, i32 1, i32 %123, i32 1, i32 %125, i32 1)
  br label %127

127:                                              ; preds = %105, %77
  br label %128

128:                                              ; preds = %127, %56
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CONNECTED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @axpy_cpu(i32 %135, i32 1, i32 %137, i32 1, i32 %139, i32 1)
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %142, %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @axpy_cpu(i32 %145, i32 1, i32 %147, i32 1, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %133, %128
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %50

155:                                              ; preds = %50
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %36

159:                                              ; preds = %36
  %160 = load i32, i32* %12, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %162

162:                                              ; preds = %270, %159
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %273

168:                                              ; preds = %162
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i64 %173
  %175 = bitcast %struct.TYPE_7__* %16 to i8*
  %176 = bitcast %struct.TYPE_7__* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %175, i8* align 8 %176, i64 56, i1 false)
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @CONVOLUTIONAL, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %242

181:                                              ; preds = %168
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = mul nsw i32 %183, %185
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %186, %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %189, %191
  store i32 %192, i32* %17, align 4
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = sitofp i32 %195 to double
  %197 = fdiv double 1.000000e+00, %196
  %198 = fptosi double %197 to i32
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @scal_cpu(i32 %194, i32 %198, i32 %200, i32 1)
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %12, align 4
  %204 = sitofp i32 %203 to double
  %205 = fdiv double 1.000000e+00, %204
  %206 = fptosi double %205 to i32
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @scal_cpu(i32 %202, i32 %206, i32 %208, i32 1)
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 11
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %241

213:                                              ; preds = %181
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sitofp i32 %216 to double
  %218 = fdiv double 1.000000e+00, %217
  %219 = fptosi double %218 to i32
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 10
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @scal_cpu(i32 %215, i32 %219, i32 %221, i32 1)
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sitofp i32 %225 to double
  %227 = fdiv double 1.000000e+00, %226
  %228 = fptosi double %227 to i32
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 9
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @scal_cpu(i32 %224, i32 %228, i32 %230, i32 1)
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sitofp i32 %234 to double
  %236 = fdiv double 1.000000e+00, %235
  %237 = fptosi double %236 to i32
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @scal_cpu(i32 %233, i32 %237, i32 %239, i32 1)
  br label %241

241:                                              ; preds = %213, %181
  br label %242

242:                                              ; preds = %241, %168
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @CONNECTED, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %269

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %12, align 4
  %251 = sitofp i32 %250 to double
  %252 = fdiv double 1.000000e+00, %251
  %253 = fptosi double %252 to i32
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 7
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @scal_cpu(i32 %249, i32 %253, i32 %255, i32 1)
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = mul nsw i32 %258, %260
  %262 = load i32, i32* %12, align 4
  %263 = sitofp i32 %262 to double
  %264 = fdiv double 1.000000e+00, %263
  %265 = fptosi double %264 to i32
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @scal_cpu(i32 %261, i32 %265, i32 %267, i32 1)
  br label %269

269:                                              ; preds = %247, %242
  br label %270

270:                                              ; preds = %269
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  br label %162

273:                                              ; preds = %162
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @save_weights(%struct.TYPE_6__* %274, i8* %275)
  ret void
}

declare dso_local %struct.TYPE_6__* @parse_network_cfg(i8*) #1

declare dso_local i32 @load_weights(%struct.TYPE_6__*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @axpy_cpu(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @scal_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @save_weights(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
