; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_file_output_classifier.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_file_output_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\09%g\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_output_classifier(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_20__, align 8
  %19 = alloca %struct.TYPE_20__, align 8
  %20 = alloca float*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.TYPE_18__* @load_network(i8* %21, i8* %22, i32 0)
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %11, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %25 = call i32 @set_batch_network(%struct.TYPE_18__* %24, i32 1)
  %26 = call i32 @time(i32 0)
  %27 = call i32 @srand(i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = call %struct.TYPE_19__* @read_data_cfg(i8* %28)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %12, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %31 = call i32 @option_find_int(%struct.TYPE_19__* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call %struct.TYPE_19__* @get_paths(i8* %32)
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %14, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %35 = call i64 @list_to_array(%struct.TYPE_19__* %34)
  %36 = inttoptr i64 %35 to i8**
  store i8** %36, i8*** %15, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %41 = call i32 @free_list(%struct.TYPE_19__* %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %169, %4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %172

46:                                               ; preds = %42
  %47 = load i8**, i8*** %15, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call { i64, i64 } @load_image_color(i8* %51, i32 0, i32 0)
  %53 = bitcast %struct.TYPE_20__* %17 to { i64, i64 }*
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i64, i64 } %52, 0
  store i64 %55, i64* %54, align 8
  %56 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i64, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = bitcast %struct.TYPE_20__* %17 to { i64, i64 }*
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call { i64, i64 } @resize_min(i64 %63, i64 %65, i32 %60)
  %67 = bitcast %struct.TYPE_20__* %18 to { i64, i64 }*
  %68 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 0
  %69 = extractvalue { i64, i64 } %66, 0
  store i64 %69, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %67, i32 0, i32 1
  %71 = extractvalue { i64, i64 } %66, 1
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = sdiv i32 %77, 2
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = sdiv i32 %84, 2
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = bitcast %struct.TYPE_20__* %18 to { i64, i64 }*
  %93 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %92, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call { i64, i64 } @crop_image(i64 %94, i64 %96, i32 %78, i32 %85, i32 %88, i32 %91)
  %98 = bitcast %struct.TYPE_20__* %19 to { i64, i64 }*
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 0
  %100 = extractvalue { i64, i64 } %97, 0
  store i64 %100, i64* %99, align 8
  %101 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %98, i32 0, i32 1
  %102 = extractvalue { i64, i64 } %97, 1
  store i64 %102, i64* %101, align 8
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call float* @network_predict(%struct.TYPE_18__* %103, i64 %105)
  store float* %106, float** %20, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %46
  %112 = load float*, float** %20, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hierarchy_predictions(float* %112, i32 %115, i32 %118, i32 0, i32 1)
  br label %120

120:                                              ; preds = %111, %46
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = bitcast %struct.TYPE_20__* %18 to { i64, i64 }*
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @free_image(i64 %129, i64 %131)
  br label %133

133:                                              ; preds = %126, %120
  %134 = bitcast %struct.TYPE_20__* %17 to { i64, i64 }*
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %134, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @free_image(i64 %136, i64 %138)
  %140 = bitcast %struct.TYPE_20__* %19 to { i64, i64 }*
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @free_image(i64 %142, i64 %144)
  %146 = load i8**, i8*** %15, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %150)
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %164, %133
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load float*, float** %20, align 8
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds float, float* %157, i64 %159
  %161 = load float, float* %160, align 4
  %162 = fpext float %161 to double
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %162)
  br label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %152

167:                                              ; preds = %152
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %9, align 4
  br label %42

172:                                              ; preds = %42
  ret void
}

declare dso_local %struct.TYPE_18__* @load_network(i8*, i8*, i32) #1

declare dso_local i32 @set_batch_network(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local %struct.TYPE_19__* @read_data_cfg(i8*) #1

declare dso_local i32 @option_find_int(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @get_paths(i8*) #1

declare dso_local i64 @list_to_array(%struct.TYPE_19__*) #1

declare dso_local i32 @free_list(%struct.TYPE_19__*) #1

declare dso_local { i64, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i64 } @resize_min(i64, i64, i32) #1

declare dso_local { i64, i64 } @crop_image(i64, i64, i32, i32, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @hierarchy_predictions(float*, i32, i32, i32, i32) #1

declare dso_local i32 @free_image(i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
