; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_validate_classifier_full.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_validate_classifier_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%d: top 1: %f, top %d: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_classifier_full(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_20__, align 4
  %26 = alloca { i64, i32 }, align 8
  %27 = alloca %struct.TYPE_20__, align 4
  %28 = alloca { i64, i32 }, align 4
  %29 = alloca { i64, i32 }, align 8
  %30 = alloca float*, align 8
  %31 = alloca { i64, i32 }, align 4
  %32 = alloca { i64, i32 }, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call %struct.TYPE_18__* @load_network(i8* %33, i8* %34, i32 0)
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %9, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = call i32 @set_batch_network(%struct.TYPE_18__* %36, i32 1)
  %38 = call i32 @time(i32 0)
  %39 = call i32 @srand(i32 %38)
  %40 = load i8*, i8** %4, align 8
  %41 = call %struct.TYPE_19__* @read_data_cfg(i8* %40)
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %10, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %43 = call i8* @option_find_str(%struct.TYPE_19__* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %11, align 8
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %45 = call i8* @option_find_str(%struct.TYPE_19__* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %45, i8** %12, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %47 = call i32 @option_find_int(%struct.TYPE_19__* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %49 = call i32 @option_find_int(%struct.TYPE_19__* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %49, i32* %14, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i8** @get_labels(i8* %50)
  store i8** %51, i8*** %15, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call %struct.TYPE_19__* @get_paths(i8* %52)
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %16, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %55 = call i64 @list_to_array(%struct.TYPE_19__* %54)
  %56 = inttoptr i64 %55 to i8**
  store i8** %56, i8*** %17, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %18, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %61 = call i32 @free_list(%struct.TYPE_19__* %60)
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32* @calloc(i32 %62, i32 4)
  store i32* %63, i32** %21, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %22, align 4
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %200, %3
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %203

71:                                               ; preds = %67
  store i32 -1, i32* %23, align 4
  %72 = load i8**, i8*** %17, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %24, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %93, %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load i8*, i8** %24, align 8
  %83 = load i8**, i8*** %15, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @strstr(i8* %82, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %23, align 4
  br label %96

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %77

96:                                               ; preds = %90, %77
  %97 = load i8**, i8*** %17, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call { i64, i32 } @load_image_color(i8* %101, i32 0, i32 0)
  store { i64, i32 } %102, { i64, i32 }* %26, align 8
  %103 = bitcast { i64, i32 }* %26 to i8*
  %104 = bitcast %struct.TYPE_20__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 8 %103, i64 12, i1 false)
  %105 = load i32, i32* %22, align 4
  %106 = bitcast { i64, i32 }* %28 to i8*
  %107 = bitcast %struct.TYPE_20__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 12, i1 false)
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %109 = load i64, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call { i64, i32 } @resize_min(i64 %109, i32 %111, i32 %105)
  store { i64, i32 } %112, { i64, i32 }* %29, align 8
  %113 = bitcast { i64, i32 }* %29 to i8*
  %114 = bitcast %struct.TYPE_20__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 8 %113, i64 12, i1 false)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @resize_network(%struct.TYPE_18__* %115, i32 %117, i32 %119)
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call float* @network_predict(%struct.TYPE_18__* %121, i32 %123)
  store float* %124, float** %30, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %96
  %130 = load float*, float** %30, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @hierarchy_predictions(float* %130, i32 %133, i32 %136, i32 1, i32 1)
  br label %138

138:                                              ; preds = %129, %96
  %139 = bitcast { i64, i32 }* %31 to i8*
  %140 = bitcast %struct.TYPE_20__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 12, i1 false)
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %142 = load i64, i64* %141, align 4
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @free_image(i64 %142, i32 %144)
  %146 = bitcast { i64, i32 }* %32 to i8*
  %147 = bitcast %struct.TYPE_20__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 12, i1 false)
  %148 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 0
  %149 = load i64, i64* %148, align 4
  %150 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %32, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @free_image(i64 %149, i32 %151)
  %153 = load float*, float** %30, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load i32*, i32** %21, align 8
  %157 = call i32 @top_k(float* %153, i32 %154, i32 %155, i32* %156)
  %158 = load i32*, i32** %21, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %23, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %138
  %164 = load float, float* %19, align 4
  %165 = fadd float %164, 1.000000e+00
  store float %165, float* %19, align 4
  br label %166

166:                                              ; preds = %163, %138
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %183, %166
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %186

171:                                              ; preds = %167
  %172 = load i32*, i32** %21, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %23, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load float, float* %20, align 4
  %181 = fadd float %180, 1.000000e+00
  store float %181, float* %20, align 4
  br label %182

182:                                              ; preds = %179, %171
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %167

186:                                              ; preds = %167
  %187 = load i32, i32* %7, align 4
  %188 = load float, float* %19, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  %191 = sitofp i32 %190 to float
  %192 = fdiv float %188, %191
  %193 = load i32, i32* %14, align 4
  %194 = load float, float* %20, align 4
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  %197 = sitofp i32 %196 to float
  %198 = fdiv float %194, %197
  %199 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %187, float %192, i32 %193, float %198)
  br label %200

200:                                              ; preds = %186
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %67

203:                                              ; preds = %67
  ret void
}

declare dso_local %struct.TYPE_18__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_19__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_19__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_19__*) #1

declare dso_local i32 @free_list(%struct.TYPE_19__*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local { i64, i32 } @load_image_color(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i32 } @resize_min(i64, i32, i32) #1

declare dso_local i32 @resize_network(%struct.TYPE_18__*, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i32) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, float, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
