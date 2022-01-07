; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_validate_classifier_single.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_validate_classifier_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"labels\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"leaves\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"valid\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%s, %d, %f, %f, \0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%d: top 1: %f, top %d: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_classifier_single(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_19__, align 4
  %26 = alloca %struct.TYPE_19__, align 4
  %27 = alloca float*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call %struct.TYPE_17__* @load_network(i8* %28, i8* %29, i32 0)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %9, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = call i32 @set_batch_network(%struct.TYPE_17__* %31, i32 1)
  %33 = call i32 @time(i32 0)
  %34 = call i32 @srand(i32 %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.TYPE_18__* @read_data_cfg(i8* %35)
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %10, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %38 = call i8* @option_find_str(%struct.TYPE_18__* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %11, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %40 = call i8* @option_find_str(%struct.TYPE_18__* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %3
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @change_leaves(i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %43, %3
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = call i8* @option_find_str(%struct.TYPE_18__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i8* %51, i8** %13, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = call i32 @option_find_int(%struct.TYPE_18__* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 2)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %55 = call i32 @option_find_int(%struct.TYPE_18__* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %55, i32* %15, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = call i8** @get_labels(i8* %56)
  store i8** %57, i8*** %16, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call %struct.TYPE_18__* @get_paths(i8* %58)
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %17, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %61 = call i64 @list_to_array(%struct.TYPE_18__* %60)
  %62 = inttoptr i64 %61 to i8**
  store i8** %62, i8*** %18, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %19, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %67 = call i32 @free_list(%struct.TYPE_18__* %66)
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32* @calloc(i32 %68, i32 4)
  store i32* %69, i32** %22, align 8
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %205, %49
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %208

74:                                               ; preds = %70
  store i32 -1, i32* %23, align 4
  %75 = load i8**, i8*** %18, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %24, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %96, %74
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i8*, i8** %24, align 8
  %86 = load i8**, i8*** %16, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strstr(i8* %85, i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %23, align 4
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %80

99:                                               ; preds = %93, %80
  %100 = load i8**, i8*** %18, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @load_image_color(i8* %104, i32 0, i32 0)
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @center_crop_image(i32 %114, i32 %109, i32 %112)
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call float* @network_predict(%struct.TYPE_17__* %117, i32 %119)
  store float* %120, float** %27, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %99
  %126 = load float*, float** %27, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @hierarchy_predictions(float* %126, i32 %129, i32 %132, i32 1, i32 1)
  br label %134

134:                                              ; preds = %125, %99
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @free_image(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @free_image(i32 %139)
  %141 = load float*, float** %27, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32*, i32** %22, align 8
  %145 = call i32 @top_k(float* %141, i32 %142, i32 %143, i32* %144)
  %146 = load i32*, i32** %22, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %23, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %134
  %152 = load float, float* %20, align 4
  %153 = fadd float %152, 1.000000e+00
  store float %153, float* %20, align 4
  br label %154

154:                                              ; preds = %151, %134
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %171, %154
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load i32*, i32** %22, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %23, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load float, float* %21, align 4
  %169 = fadd float %168, 1.000000e+00
  store float %169, float* %21, align 4
  br label %170

170:                                              ; preds = %167, %159
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %155

174:                                              ; preds = %155
  %175 = load i8**, i8*** %18, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %23, align 4
  %181 = load float*, float** %27, align 8
  %182 = getelementptr inbounds float, float* %181, i64 0
  %183 = load float, float* %182, align 4
  %184 = fpext float %183 to double
  %185 = load float*, float** %27, align 8
  %186 = getelementptr inbounds float, float* %185, i64 1
  %187 = load float, float* %186, align 4
  %188 = fpext float %187 to double
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %179, i32 %180, double %184, double %188)
  %190 = load i32, i32* %7, align 4
  %191 = load float, float* %20, align 4
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  %194 = sitofp i32 %193 to float
  %195 = fdiv float %191, %194
  %196 = fpext float %195 to double
  %197 = load i32, i32* %15, align 4
  %198 = load float, float* %21, align 4
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  %201 = sitofp i32 %200 to float
  %202 = fdiv float %198, %201
  %203 = fpext float %202 to double
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %190, double %196, i32 %197, double %203)
  br label %205

205:                                              ; preds = %174
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %70

208:                                              ; preds = %70
  ret void
}

declare dso_local %struct.TYPE_17__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_18__* @read_data_cfg(i8*) #1

declare dso_local i8* @option_find_str(%struct.TYPE_18__*, i8*, i8*) #1

declare dso_local i32 @change_leaves(i32, i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i8** @get_labels(i8*) #1

declare dso_local %struct.TYPE_18__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_18__*) #1

declare dso_local i32 @free_list(%struct.TYPE_18__*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @load_image_color(i8*, i32, i32) #1

declare dso_local i32 @center_crop_image(i32, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @free_image(i32) #1

declare dso_local i32 @top_k(float*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
