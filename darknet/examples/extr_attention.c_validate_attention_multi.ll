; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_attention.c_validate_attention_multi.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_attention.c_validate_attention_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@__const.validate_attention_multi.scales = private unnamed_addr constant [5 x i32] [i32 224, i32 288, i32 320, i32 352, i32 384], align 16
@.str.6 = private unnamed_addr constant [27 x i8] c"%d: top 1: %f, top %d: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_attention_multi(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca [5 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i8**, align 8
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca float*, align 8
  %27 = alloca %struct.TYPE_21__, align 8
  %28 = alloca %struct.TYPE_21__, align 8
  %29 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.TYPE_19__* @load_network(i8* %30, i8* %31, i32 0)
  store %struct.TYPE_19__* %32, %struct.TYPE_19__** %9, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = call i32 @set_batch_network(%struct.TYPE_19__* %33, i32 1)
  %35 = call i32 @time(i32 0)
  %36 = call i32 @srand(i32 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = call %struct.TYPE_20__* @read_data_cfg(i8* %37)
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %10, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %40 = call i8* @option_find_str(%struct.TYPE_20__* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %11, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %42 = call i8* @option_find_str(%struct.TYPE_20__* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** %12, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %44 = call i32 @option_find_int(%struct.TYPE_20__* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = call i32 @option_find_int(%struct.TYPE_20__* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %46, i32* %14, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call i8** @get_labels(i8* %47)
  store i8** %48, i8*** %15, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = call %struct.TYPE_20__* @get_paths(i8* %49)
  store %struct.TYPE_20__* %50, %struct.TYPE_20__** %16, align 8
  %51 = bitcast [5 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %51, i8* align 16 bitcast ([5 x i32]* @__const.validate_attention_multi.scales to i8*), i64 20, i1 false)
  store i32 5, i32* %18, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %53 = call i64 @list_to_array(%struct.TYPE_20__* %52)
  %54 = inttoptr i64 %53 to i8**
  store i8** %54, i8*** %19, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %20, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %59 = call i32 @free_list(%struct.TYPE_20__* %58)
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i8* @calloc(i32 %60, i32 4)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %23, align 8
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %241, %3
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %244

67:                                               ; preds = %63
  store i32 -1, i32* %24, align 4
  %68 = load i8**, i8*** %19, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %25, align 8
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %89, %67
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load i8*, i8** %25, align 8
  %79 = load i8**, i8*** %15, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strstr(i8* %78, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %24, align 4
  br label %92

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %73

92:                                               ; preds = %86, %73
  %93 = load i32, i32* %13, align 4
  %94 = call i8* @calloc(i32 %93, i32 4)
  %95 = bitcast i8* %94 to float*
  store float* %95, float** %26, align 8
  %96 = load i8**, i8*** %19, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call { i64, i64 } @load_image_color(i8* %100, i32 0, i32 0)
  %102 = bitcast %struct.TYPE_21__* %27 to { i64, i64 }*
  %103 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 0
  %104 = extractvalue { i64, i64 } %101, 0
  store i64 %104, i64* %103, align 8
  %105 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %102, i32 0, i32 1
  %106 = extractvalue { i64, i64 } %101, 1
  store i64 %106, i64* %105, align 8
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %182, %92
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %185

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = bitcast %struct.TYPE_21__* %27 to { i64, i64 }*
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %116, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call { i64, i64 } @resize_min(i64 %118, i64 %120, i32 %115)
  %122 = bitcast %struct.TYPE_21__* %28 to { i64, i64 }*
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 0
  %124 = extractvalue { i64, i64 } %121, 0
  store i64 %124, i64* %123, align 8
  %125 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %122, i32 0, i32 1
  %126 = extractvalue { i64, i64 } %121, 1
  store i64 %126, i64* %125, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @resize_network(%struct.TYPE_19__* %127, i32 %129, i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call float* @network_predict(%struct.TYPE_19__* %133, i64 %135)
  store float* %136, float** %29, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %111
  %142 = load float*, float** %29, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @hierarchy_predictions(float* %142, i32 %145, i32 %148, i32 1, i32 1)
  br label %150

150:                                              ; preds = %141, %111
  %151 = load i32, i32* %13, align 4
  %152 = load float*, float** %29, align 8
  %153 = load float*, float** %26, align 8
  %154 = call i32 @axpy_cpu(i32 %151, i32 1, float* %152, i32 1, float* %153, i32 1)
  %155 = bitcast %struct.TYPE_21__* %28 to { i64, i64 }*
  %156 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %155, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @flip_image(i64 %157, i64 %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call float* @network_predict(%struct.TYPE_19__* %161, i64 %163)
  store float* %164, float** %29, align 8
  %165 = load i32, i32* %13, align 4
  %166 = load float*, float** %29, align 8
  %167 = load float*, float** %26, align 8
  %168 = call i32 @axpy_cpu(i32 %165, i32 1, float* %166, i32 1, float* %167, i32 1)
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %170, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %150
  %175 = bitcast %struct.TYPE_21__* %28 to { i64, i64 }*
  %176 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %175, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @free_image(i64 %177, i64 %179)
  br label %181

181:                                              ; preds = %174, %150
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %107

185:                                              ; preds = %107
  %186 = bitcast %struct.TYPE_21__* %27 to { i64, i64 }*
  %187 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %186, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @free_image(i64 %188, i64 %190)
  %192 = load float*, float** %26, align 8
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32*, i32** %23, align 8
  %196 = call i32 @top_k(float* %192, i32 %193, i32 %194, i32* %195)
  %197 = load float*, float** %26, align 8
  %198 = call i32 @free(float* %197)
  %199 = load i32*, i32** %23, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %24, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %185
  %205 = load float, float* %21, align 4
  %206 = fadd float %205, 1.000000e+00
  store float %206, float* %21, align 4
  br label %207

207:                                              ; preds = %204, %185
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %224, %207
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %227

212:                                              ; preds = %208
  %213 = load i32*, i32** %23, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %24, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %212
  %221 = load float, float* %22, align 4
  %222 = fadd float %221, 1.000000e+00
  store float %222, float* %22, align 4
  br label %223

223:                                              ; preds = %220, %212
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %208

227:                                              ; preds = %208
  %228 = load i32, i32* %7, align 4
  %229 = load float, float* %21, align 4
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  %232 = sitofp i32 %231 to float
  %233 = fdiv float %229, %232
  %234 = load i32, i32* %14, align 4
  %235 = load float, float* %22, align 4
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  %238 = sitofp i32 %237 to float
  %239 = fdiv float %235, %238
  %240 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %228, float %233, i32 %234, float %239)
  br label %241

241:                                              ; preds = %227
  %242 = load i32, i32* %7, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %7, align 4
  br label %63

244:                                              ; preds = %63
  ret void
}

declare dso_local %struct.TYPE_19__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_20__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_20__* @get_paths(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @list_to_array(%struct.TYPE_20__*) #1

declare dso_local i32 @free_list(%struct.TYPE_20__*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local { i64, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i64 } @resize_min(i64, i64, i32) #1

declare dso_local i32 @resize_network(%struct.TYPE_19__*, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @flip_image(i64, i64) #1

declare dso_local i32 @free_image(i64, i64) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @free(float*) #1

declare dso_local i32 @printf(i8*, i32, float, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
