; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_disconnect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_autodetect.c_input_autoconfigure_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [13 x i8] c"%s #%u (%s).\00", align 1
@MSG_DEVICE_DISCONNECTED_FROM_PORT = common dso_local global i32 0, align 4
@input_autoconfigure_disconnect_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_autoconfigure_disconnect(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [255 x i8], align 16
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = call %struct.TYPE_8__* (...) @task_init()
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %7, align 8
  %10 = call i64 @calloc(i32 1, i32 32)
  %11 = inttoptr i64 %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %8, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  br label %57

18:                                               ; preds = %14
  %19 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %19, align 16
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %24 = load i32, i32* @MSG_DEVICE_DISCONNECTED_FROM_PORT, align 4
  %25 = call i8* @msg_hash_to_str(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @snprintf(i8* %23, i32 255, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26, i8* %27)
  %29 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %30 = call %struct.TYPE_8__* @strdup(i8* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @input_config_clear_device_name(i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @input_config_clear_device_display_name(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @input_config_clear_device_config_name(i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @input_config_clear_device_config_path(i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %51, align 8
  %52 = load i32, i32* @input_autoconfigure_disconnect_handler, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = call i32 @task_queue_push(%struct.TYPE_8__* %55)
  store i32 1, i32* %3, align 4
  br label %81

57:                                               ; preds = %17
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call i32 @string_is_empty(%struct.TYPE_8__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = call i32 @free(%struct.TYPE_8__* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = call i32 @free(%struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %71, %57
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = icmp ne %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = call i32 @free(%struct.TYPE_8__* %78)
  br label %80

80:                                               ; preds = %77, %74
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %18
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_8__* @task_init(...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local %struct.TYPE_8__* @strdup(i8*) #1

declare dso_local i32 @input_config_clear_device_name(i32) #1

declare dso_local i32 @input_config_clear_device_display_name(i32) #1

declare dso_local i32 @input_config_clear_device_config_name(i32) #1

declare dso_local i32 @input_config_clear_device_config_path(i32) #1

declare dso_local i32 @task_queue_push(%struct.TYPE_8__*) #1

declare dso_local i32 @string_is_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
