; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_content_save_state.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_content_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@save_state_in_background = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s: \22%s\22.\0A\00", align 1
@MSG_SAVING_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@MSG_FAILED_TO_SAVE_STATE_TO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%s: %d %s.\0A\00", align 1
@MSG_STATE_SIZE = common dso_local global i32 0, align 4
@MSG_BYTES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"%s ...\0A\00", align 1
@MSG_FILE_ALREADY_EXISTS_SAVING_TO_BACKUP_BUFFER = common dso_local global i32 0, align 4
@undo_load_buf = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @content_save_state(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %10 = call i32 @core_serialize_size(%struct.TYPE_4__* %8)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

15:                                               ; preds = %3
  %16 = load i32, i32* @save_state_in_background, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @MSG_SAVING_STATE, align 4
  %20 = call i32 @msg_hash_to_str(i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @get_serialized_data(i8* %23, i64 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @MSG_FAILED_TO_SAVE_STATE_TO, align 4
  %31 = call i32 @msg_hash_to_str(i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  store i32 0, i32* %4, align 4
  br label %116

34:                                               ; preds = %18
  %35 = load i32, i32* @MSG_STATE_SIZE, align 4
  %36 = call i32 @msg_hash_to_str(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @MSG_BYTES, align 4
  %41 = call i32 @msg_hash_to_str(i32 %40)
  %42 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %34, %15
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %43
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @path_is_valid(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @MSG_FILE_ALREADY_EXISTS_SAVING_TO_BACKUP_BUFFER, align 4
  %55 = call i32 @msg_hash_to_str(i32 %54)
  %56 = call i32 (i8*, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @task_push_load_and_save_state(i8* %57, i8* %58, i64 %60, i32 1, i32 %61)
  br label %70

63:                                               ; preds = %50, %46
  %64 = load i8*, i8** %5, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @task_push_save_state(i8* %64, i8* %65, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %53
  br label %115

71:                                               ; preds = %43
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @get_serialized_data(i8* %75, i64 %77)
  store i8* %78, i8** %9, align 8
  br label %79

79:                                               ; preds = %74, %71
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @MSG_FAILED_TO_SAVE_STATE_TO, align 4
  %84 = call i32 @msg_hash_to_str(i32 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %84, i8* %85)
  store i32 0, i32* %4, align 4
  br label %116

87:                                               ; preds = %79
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 0), align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 0), align 8
  %92 = call i32 @free(i8* %91)
  store i8* null, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 0), align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i8* @malloc(i64 %95)
  store i8* %96, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 0), align 8
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 0), align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @free(i8* %100)
  store i32 0, i32* %4, align 4
  br label %116

102:                                              ; preds = %93
  %103 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 0), align 8
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @memcpy(i8* %103, i8* %104, i64 %106)
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @free(i8* %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 1), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @undo_load_buf, i32 0, i32 2), align 8
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 @strlcpy(i32 %112, i8* %113, i32 4)
  br label %115

115:                                              ; preds = %102, %70
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %99, %82, %29, %14
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @core_serialize_size(%struct.TYPE_4__*) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, ...) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i8* @get_serialized_data(i8*, i64) #1

declare dso_local i32 @RARCH_ERR(i8*, i32, i8*) #1

declare dso_local i64 @path_is_valid(i8*) #1

declare dso_local i32 @task_push_load_and_save_state(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @task_push_save_state(i8*, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
