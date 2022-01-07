; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_file_transfer.c_task_file_load_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_file_transfer.c_task_file_load_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.nbio_t*, i32 }
%struct.nbio_t = type { i32 }

@NBIO_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Task canceled.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_file_load_handler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.nbio_t*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = icmp ne %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %95

11:                                               ; preds = %1
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %71 [
    i32 141, label %15
    i32 138, label %46
    i32 140, label %59
    i32 139, label %70
  ]

15:                                               ; preds = %11
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @string_is_empty(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %45, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NBIO_READ, align 4
  %29 = call i64 @nbio_open(i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to %struct.nbio_t*
  store %struct.nbio_t* %30, %struct.nbio_t** %4, align 8
  %31 = load %struct.nbio_t*, %struct.nbio_t** %4, align 8
  %32 = icmp ne %struct.nbio_t* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.nbio_t*, %struct.nbio_t** %4, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  store %struct.nbio_t* %34, %struct.nbio_t** %36, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 140, i32* %38, align 8
  %39 = load %struct.nbio_t*, %struct.nbio_t** %4, align 8
  %40 = call i32 @nbio_begin_read(%struct.nbio_t* %39)
  br label %105

41:                                               ; preds = %24
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = call i32 @task_set_cancelled(%struct.TYPE_12__* %42, i32 1)
  br label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %18, %15
  br label %71

46:                                               ; preds = %11
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = call i32 @task_file_transfer_iterate_parse(%struct.TYPE_13__* %50)
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %46
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = call i32 @task_set_cancelled(%struct.TYPE_12__* %54, i32 1)
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  store i32 139, i32* %58, align 8
  br label %71

59:                                               ; preds = %11
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = icmp ne %struct.TYPE_13__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = call i32 @task_file_transfer_iterate_transfer(%struct.TYPE_13__* %63)
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %59
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  store i32 138, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %62
  br label %71

70:                                               ; preds = %11
  br label %71

71:                                               ; preds = %11, %70, %69, %56, %45
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %85 [
    i32 130, label %75
    i32 135, label %75
    i32 129, label %75
    i32 137, label %75
    i32 133, label %83
    i32 136, label %83
    i32 131, label %83
    i32 134, label %83
    i32 128, label %83
    i32 132, label %84
  ]

75:                                               ; preds = %71, %71, %71, %71
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = call i32 @task_image_load_handler(%struct.TYPE_12__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = call i32 @task_set_finished(%struct.TYPE_12__* %80, i32 1)
  br label %82

82:                                               ; preds = %79, %75
  br label %94

83:                                               ; preds = %71, %71, %71, %71, %71
  br label %94

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %71, %84
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = call i32 @task_set_finished(%struct.TYPE_12__* %91, i32 1)
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %83, %82
  br label %95

95:                                               ; preds = %94, %1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = call i64 @task_get_cancelled(%struct.TYPE_12__* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = call i32 @strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %102 = call i32 @task_set_error(%struct.TYPE_12__* %100, i32 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %104 = call i32 @task_set_finished(%struct.TYPE_12__* %103, i32 1)
  br label %105

105:                                              ; preds = %33, %99, %95
  ret void
}

declare dso_local i32 @string_is_empty(i32) #1

declare dso_local i64 @nbio_open(i32, i32) #1

declare dso_local i32 @nbio_begin_read(%struct.nbio_t*) #1

declare dso_local i32 @task_set_cancelled(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @task_file_transfer_iterate_parse(%struct.TYPE_13__*) #1

declare dso_local i32 @task_file_transfer_iterate_transfer(%struct.TYPE_13__*) #1

declare dso_local i32 @task_image_load_handler(%struct.TYPE_12__*) #1

declare dso_local i32 @task_set_finished(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @task_get_cancelled(%struct.TYPE_12__*) #1

declare dso_local i32 @task_set_error(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
