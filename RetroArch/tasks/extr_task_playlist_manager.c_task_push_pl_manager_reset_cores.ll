; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_playlist_manager.c_task_push_pl_manager_reset_cores.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_playlist_manager.c_task_push_pl_manager_reset_cores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32*, i8*, i8*, i64, i8*, %struct.TYPE_9__*, i32 }

@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@task_pl_manager_reset_cores_finder = common dso_local global i32 0, align 4
@MSG_PLAYLIST_MANAGER_RESETTING_CORES = common dso_local global i32 0, align 4
@task_pl_manager_reset_cores_handler = common dso_local global i32 0, align 4
@PL_MANAGER_BEGIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_push_pl_manager_reset_cores(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %18 = call %struct.TYPE_9__* (...) @task_init()
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  %19 = call i64 @calloc(i32 1, i32 80)
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  %21 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 0, i8* %21, align 16
  %22 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %22, align 16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %1
  br label %87

29:                                               ; preds = %25
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @string_is_empty(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %87

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = trunc i64 %12 to i32
  %37 = call i32 @fill_pathname_base_noext(i8* %14, i8* %35, i32 %36)
  %38 = call i64 @string_is_empty(i8* %14)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %87

41:                                               ; preds = %34
  %42 = load i32, i32* @task_pl_manager_reset_cores_finder, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = call i64 @task_queue_find(%struct.TYPE_8__* %4)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %87

49:                                               ; preds = %41
  %50 = load i32, i32* @MSG_PLAYLIST_MANAGER_RESETTING_CORES, align 4
  %51 = call i32 @msg_hash_to_str(i32 %50)
  %52 = trunc i64 %16 to i32
  %53 = call i32 @strlcpy(i8* %17, i32 %51, i32 %52)
  %54 = trunc i64 %16 to i32
  %55 = call i32 @strlcat(i8* %17, i8* %14, i32 %54)
  %56 = load i32, i32* @task_pl_manager_reset_cores_handler, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 9
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = call i8* @strdup(i8* %17)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 7
  store i64 0, i64* %68, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = call i8* @strdup(i8* %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = call i8* @strdup(i8* %14)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @PL_MANAGER_BEGIN, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = call i32 @task_queue_push(%struct.TYPE_9__* %85)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %100

87:                                               ; preds = %48, %40, %33, %28
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = call i32 @free(%struct.TYPE_9__* %91)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %95 = icmp ne %struct.TYPE_9__* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = call i32 @free(%struct.TYPE_9__* %97)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  br label %99

99:                                               ; preds = %96, %93
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %49
  %101 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_9__* @task_init(...) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i64 @string_is_empty(i8*) #2

declare dso_local i32 @fill_pathname_base_noext(i8*, i8*, i32) #2

declare dso_local i64 @task_queue_find(%struct.TYPE_8__*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @task_queue_push(%struct.TYPE_9__*) #2

declare dso_local i32 @free(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
