; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_task_push_pl_thumbnail_download.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_pl_thumbnail_download.c_task_push_pl_thumbnail_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i64, i64, i32*, i32*, i32*, i8*, i8*, i8*, i64, i8*, %struct.TYPE_14__*, i32 }

@FILE_PATH_CONTENT_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_FAVORITES = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_MUSIC_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_VIDEO_HISTORY = common dso_local global i32 0, align 4
@FILE_PATH_CONTENT_IMAGE_HISTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"favorites\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"images_history\00", align 1
@task_pl_thumbnail_finder = common dso_local global i32 0, align 4
@task_pl_thumbnail_download_handler = common dso_local global i32 0, align 4
@PL_THUMB_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_pl_thumbnail_download(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call %struct.TYPE_13__* (...) @config_get_ptr()
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %7, align 8
  %12 = call %struct.TYPE_14__* (...) @task_init()
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %8, align 8
  %13 = call i64 @calloc(i32 1, i32 112)
  %14 = inttoptr i64 %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %9, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @path_basename(i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %2
  br label %146

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @string_is_empty(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @string_is_empty(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = call i64 @string_is_empty(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @string_is_empty(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %34, %30, %26
  br label %146

46:                                               ; preds = %38
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* @FILE_PATH_CONTENT_HISTORY, align 4
  %49 = call i8* @file_path_str(i32 %48)
  %50 = call i64 @string_is_equal(i8* %47, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %88, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @FILE_PATH_CONTENT_FAVORITES, align 4
  %55 = call i8* @file_path_str(i32 %54)
  %56 = call i64 @string_is_equal(i8* %53, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %88, label %58

58:                                               ; preds = %52
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @FILE_PATH_CONTENT_MUSIC_HISTORY, align 4
  %61 = call i8* @file_path_str(i32 %60)
  %62 = call i64 @string_is_equal(i8* %59, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* @FILE_PATH_CONTENT_VIDEO_HISTORY, align 4
  %67 = call i8* @file_path_str(i32 %66)
  %68 = call i64 @string_is_equal(i8* %65, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %64
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @FILE_PATH_CONTENT_IMAGE_HISTORY, align 4
  %73 = call i8* @file_path_str(i32 %72)
  %74 = call i64 @string_is_equal(i8* %71, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load i8*, i8** %4, align 8
  %78 = call i64 @string_is_equal(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @string_is_equal(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %4, align 8
  %86 = call i64 @string_is_equal(i8* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %80, %76, %70, %64, %58, %52, %46
  br label %146

89:                                               ; preds = %84
  %90 = load i32, i32* @task_pl_thumbnail_finder, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = call i64 @task_queue_find(%struct.TYPE_12__* %6)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %146

97:                                               ; preds = %89
  %98 = load i32, i32* @task_pl_thumbnail_download_handler, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 15
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 14
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %103, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = call i8* @strdup(i8* %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 13
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 12
  store i64 0, i64* %111, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = call i8* @strdup(i8* %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 11
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = call i8* @strdup(i8* %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 10
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i8* @strdup(i8* %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 9
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 8
  store i32* null, i32** %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 7
  store i32* null, i32** %130, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 6
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 4
  store i64 0, i64* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  store i32 0, i32* %140, align 8
  %141 = load i32, i32* @PL_THUMB_BEGIN, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %145 = call i32 @task_queue_push(%struct.TYPE_14__* %144)
  store i32 1, i32* %3, align 4
  br label %159

146:                                              ; preds = %96, %88, %45, %25
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = icmp ne %struct.TYPE_14__* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = call i32 @free(%struct.TYPE_14__* %150)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %154 = icmp ne %struct.TYPE_14__* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %157 = call i32 @free(%struct.TYPE_14__* %156)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %9, align 8
  br label %158

158:                                              ; preds = %155, %152
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %97
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_13__* @config_get_ptr(...) #1

declare dso_local %struct.TYPE_14__* @task_init(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i8* @path_basename(i8*) #1

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i8* @file_path_str(i32) #1

declare dso_local i64 @task_queue_find(%struct.TYPE_12__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @task_queue_push(%struct.TYPE_14__*) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
