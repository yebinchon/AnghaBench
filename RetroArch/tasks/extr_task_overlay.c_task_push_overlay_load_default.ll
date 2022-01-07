; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_push_overlay_load_default.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_overlay.c_task_push_overlay_load_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8*, i32, %struct.overlay*, i32, i32 }
%struct.overlay = type { i32, i32, i32, float, float, i32, i32, %struct.overlay*, i32, i32, i32* }

@task_overlay_finder = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"overlays\00", align 1
@OVERLAY_STATUS_DEFERRED_LOAD = common dso_local global i32 0, align 4
@task_overlay_handler = common dso_local global i32 0, align 4
@task_overlay_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_overlay_load_default(i32 %0, i8* %1, i32 %2, i32 %3, float %4, float %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.overlay*, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float %4, float* %13, align 4
  store float %5, float* %14, align 4
  store i8* %6, i8** %15, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  store i32* null, i32** %18, align 8
  store %struct.overlay* null, %struct.overlay** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i64 @string_is_empty(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %141

24:                                               ; preds = %7
  %25 = load i32, i32* @task_overlay_finder, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = call i64 @task_queue_find(%struct.TYPE_6__* %16)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %141

32:                                               ; preds = %24
  %33 = call i64 @calloc(i32 1, i32 56)
  %34 = inttoptr i64 %33 to %struct.overlay*
  store %struct.overlay* %34, %struct.overlay** %19, align 8
  %35 = load %struct.overlay*, %struct.overlay** %19, align 8
  %36 = icmp ne %struct.overlay* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %141

38:                                               ; preds = %32
  %39 = load i8*, i8** %10, align 8
  %40 = call i32* @config_file_new_from_path_to_string(i8* %39)
  store i32* %40, i32** %18, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load %struct.overlay*, %struct.overlay** %19, align 8
  %44 = call i32 @free(%struct.overlay* %43)
  store i32 0, i32* %8, align 4
  br label %141

45:                                               ; preds = %38
  %46 = load i32*, i32** %18, align 8
  %47 = load %struct.overlay*, %struct.overlay** %19, align 8
  %48 = getelementptr inbounds %struct.overlay, %struct.overlay* %47, i32 0, i32 0
  %49 = call i32 @config_get_uint(i32* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load i32*, i32** %18, align 8
  %53 = call i32 @config_file_free(i32* %52)
  %54 = load %struct.overlay*, %struct.overlay** %19, align 8
  %55 = call i32 @free(%struct.overlay* %54)
  store i32 0, i32* %8, align 4
  br label %141

56:                                               ; preds = %45
  %57 = load %struct.overlay*, %struct.overlay** %19, align 8
  %58 = getelementptr inbounds %struct.overlay, %struct.overlay* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @calloc(i32 %59, i32 56)
  %61 = inttoptr i64 %60 to %struct.overlay*
  %62 = load %struct.overlay*, %struct.overlay** %19, align 8
  %63 = getelementptr inbounds %struct.overlay, %struct.overlay* %62, i32 0, i32 7
  store %struct.overlay* %61, %struct.overlay** %63, align 8
  %64 = load %struct.overlay*, %struct.overlay** %19, align 8
  %65 = getelementptr inbounds %struct.overlay, %struct.overlay* %64, i32 0, i32 7
  %66 = load %struct.overlay*, %struct.overlay** %65, align 8
  %67 = icmp ne %struct.overlay* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %56
  %69 = load i32*, i32** %18, align 8
  %70 = call i32 @config_file_free(i32* %69)
  %71 = load %struct.overlay*, %struct.overlay** %19, align 8
  %72 = call i32 @free(%struct.overlay* %71)
  store i32 0, i32* %8, align 4
  br label %141

73:                                               ; preds = %56
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.overlay*, %struct.overlay** %19, align 8
  %76 = getelementptr inbounds %struct.overlay, %struct.overlay* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.overlay*, %struct.overlay** %19, align 8
  %79 = getelementptr inbounds %struct.overlay, %struct.overlay* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load float, float* %13, align 4
  %81 = load %struct.overlay*, %struct.overlay** %19, align 8
  %82 = getelementptr inbounds %struct.overlay, %struct.overlay* %81, i32 0, i32 3
  store float %80, float* %82, align 4
  %83 = load float, float* %14, align 4
  %84 = load %struct.overlay*, %struct.overlay** %19, align 8
  %85 = getelementptr inbounds %struct.overlay, %struct.overlay* %84, i32 0, i32 4
  store float %83, float* %85, align 8
  %86 = load i32*, i32** %18, align 8
  %87 = load %struct.overlay*, %struct.overlay** %19, align 8
  %88 = getelementptr inbounds %struct.overlay, %struct.overlay* %87, i32 0, i32 10
  store i32* %86, i32** %88, align 8
  %89 = load i32, i32* @OVERLAY_STATUS_DEFERRED_LOAD, align 4
  %90 = load %struct.overlay*, %struct.overlay** %19, align 8
  %91 = getelementptr inbounds %struct.overlay, %struct.overlay* %90, i32 0, i32 9
  store i32 %89, i32* %91, align 4
  %92 = load %struct.overlay*, %struct.overlay** %19, align 8
  %93 = getelementptr inbounds %struct.overlay, %struct.overlay* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %73
  %98 = load %struct.overlay*, %struct.overlay** %19, align 8
  %99 = getelementptr inbounds %struct.overlay, %struct.overlay* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sdiv i32 %100, 4
  br label %103

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102, %97
  %104 = phi i32 [ %101, %97 ], [ 4, %102 ]
  %105 = load %struct.overlay*, %struct.overlay** %19, align 8
  %106 = getelementptr inbounds %struct.overlay, %struct.overlay* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = call %struct.TYPE_7__* (...) @task_init()
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %17, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %119, label %110

110:                                              ; preds = %103
  %111 = load i32*, i32** %18, align 8
  %112 = call i32 @config_file_free(i32* %111)
  %113 = load %struct.overlay*, %struct.overlay** %19, align 8
  %114 = getelementptr inbounds %struct.overlay, %struct.overlay* %113, i32 0, i32 7
  %115 = load %struct.overlay*, %struct.overlay** %114, align 8
  %116 = call i32 @free(%struct.overlay* %115)
  %117 = load %struct.overlay*, %struct.overlay** %19, align 8
  %118 = call i32 @free(%struct.overlay* %117)
  store i32 0, i32* %8, align 4
  br label %141

119:                                              ; preds = %103
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @strdup(i8* %120)
  %122 = load %struct.overlay*, %struct.overlay** %19, align 8
  %123 = getelementptr inbounds %struct.overlay, %struct.overlay* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @task_overlay_handler, align 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @task_overlay_free, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 8
  %130 = load %struct.overlay*, %struct.overlay** %19, align 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  store %struct.overlay* %130, %struct.overlay** %132, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %140 = call i32 @task_queue_push(%struct.TYPE_7__* %139)
  store i32 1, i32* %8, align 4
  br label %141

141:                                              ; preds = %119, %110, %68, %51, %42, %37, %31, %23
  %142 = load i32, i32* %8, align 4
  ret i32 %142
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local i64 @task_queue_find(%struct.TYPE_6__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32* @config_file_new_from_path_to_string(i8*) #1

declare dso_local i32 @free(%struct.overlay*) #1

declare dso_local i32 @config_get_uint(i32*, i8*, i32*) #1

declare dso_local i32 @config_file_free(i32*) #1

declare dso_local %struct.TYPE_7__* @task_init(...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @task_queue_push(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
