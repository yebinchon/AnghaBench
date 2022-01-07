; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_classifier.c_label_classifier.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_classifier.c_label_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"data/labels.list\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"data/train.list\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"classes\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @label_classifier(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_19__* @load_network(i8* %22, i8* %23, i32 0)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = call i32 @set_batch_network(%struct.TYPE_19__* %25, i32 1)
  %27 = call i32 @time(i32 0)
  %28 = call i32 @srand(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.TYPE_20__* @read_data_cfg(i8* %29)
  store %struct.TYPE_20__* %30, %struct.TYPE_20__** %9, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = call i8* @option_find_str(%struct.TYPE_20__* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i8* %32, i8** %10, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %34 = call i8* @option_find_str(%struct.TYPE_20__* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i8* %34, i8** %11, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = call i32 @option_find_int(%struct.TYPE_20__* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 2)
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i8** @get_labels(i8* %37)
  store i8** %38, i8*** %13, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call %struct.TYPE_20__* @get_paths(i8* %39)
  store %struct.TYPE_20__* %40, %struct.TYPE_20__** %14, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %42 = call i64 @list_to_array(%struct.TYPE_20__* %41)
  %43 = inttoptr i64 %42 to i8**
  store i8** %43, i8*** %15, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %48 = call i32 @free_list(%struct.TYPE_20__* %47)
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %148, %3
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %151

53:                                               ; preds = %49
  %54 = load i8**, i8*** %15, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call { i64, i64 } @load_image_color(i8* %58, i32 0, i32 0)
  %60 = bitcast %struct.TYPE_21__* %17 to { i64, i64 }*
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 0
  %62 = extractvalue { i64, i64 } %59, 0
  store i64 %62, i64* %61, align 8
  %63 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %60, i32 0, i32 1
  %64 = extractvalue { i64, i64 } %59, 1
  store i64 %64, i64* %63, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = bitcast %struct.TYPE_21__* %17 to { i64, i64 }*
  %69 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %68, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call { i64, i64 } @resize_min(i64 %70, i64 %72, i32 %67)
  %74 = bitcast %struct.TYPE_21__* %18 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { i64, i64 } %73, 0
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { i64, i64 } %73, 1
  store i64 %78, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = sdiv i32 %84, 2
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  %92 = sdiv i32 %91, 2
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = bitcast %struct.TYPE_21__* %18 to { i64, i64 }*
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %99, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call { i64, i64 } @crop_image(i64 %101, i64 %103, i32 %85, i32 %92, i32 %95, i32 %98)
  %105 = bitcast %struct.TYPE_21__* %19 to { i64, i64 }*
  %106 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 0
  %107 = extractvalue { i64, i64 } %104, 0
  store i64 %107, i64* %106, align 8
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %105, i32 0, i32 1
  %109 = extractvalue { i64, i64 } %104, 1
  store i64 %109, i64* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call float* @network_predict(%struct.TYPE_19__* %110, i64 %112)
  store float* %113, float** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %53
  %120 = bitcast %struct.TYPE_21__* %18 to { i64, i64 }*
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %120, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @free_image(i64 %122, i64 %124)
  br label %126

126:                                              ; preds = %119, %53
  %127 = bitcast %struct.TYPE_21__* %17 to { i64, i64 }*
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %127, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @free_image(i64 %129, i64 %131)
  %133 = bitcast %struct.TYPE_21__* %19 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @free_image(i64 %135, i64 %137)
  %139 = load float*, float** %20, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @max_index(float* %139, i32 %140)
  store i32 %141, i32* %21, align 4
  %142 = load i8**, i8*** %13, align 8
  %143 = load i32, i32* %21, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %146)
  br label %148

148:                                              ; preds = %126
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %49

151:                                              ; preds = %49
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

declare dso_local i64 @list_to_array(%struct.TYPE_20__*) #1

declare dso_local i32 @free_list(%struct.TYPE_20__*) #1

declare dso_local { i64, i64 } @load_image_color(i8*, i32, i32) #1

declare dso_local { i64, i64 } @resize_min(i64, i64, i32) #1

declare dso_local { i64, i64 } @crop_image(i64, i64, i32, i32, i32, i32) #1

declare dso_local float* @network_predict(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @free_image(i64, i64) #1

declare dso_local i32 @max_index(float*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
