; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_content_save_ram_file.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_save.c_content_save_ram_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ram_type = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s #%u %s \22%s\22.\0A\00", align 1
@MSG_SAVING_RAM_TYPE = common dso_local global i32 0, align 4
@MSG_TO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s.\0A\00", align 1
@MSG_FAILED_TO_SAVE_SRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Attempting to recover ...\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed ... Cannot recover save file.\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s \22%s\22.\0A\00", align 1
@MSG_SAVED_SUCCESSFULLY_TO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @content_save_ram_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ram_type, align 4
  %5 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @content_get_memory(%struct.TYPE_3__* %5, %struct.ram_type* %4, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_SAVING_RAM_TYPE, align 4
  %12 = call i32 @msg_hash_to_str(i32 %11)
  %13 = getelementptr inbounds %struct.ram_type, %struct.ram_type* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MSG_TO, align 4
  %16 = call i32 @msg_hash_to_str(i32 %15)
  %17 = getelementptr inbounds %struct.ram_type, %struct.ram_type* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i32, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %18)
  %20 = getelementptr inbounds %struct.ram_type, %struct.ram_type* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @filestream_write_file(i32 %21, i32 %23, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %10
  %29 = load i32, i32* @MSG_FAILED_TO_SAVE_SRAM, align 4
  %30 = call i32 @msg_hash_to_str(i32 %29)
  %31 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ram_type, %struct.ram_type* %4, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dump_to_file_desperate(i32 %34, i32 %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %28
  %42 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %28
  store i32 0, i32* %2, align 4
  br label %50

44:                                               ; preds = %10
  %45 = load i32, i32* @MSG_SAVED_SUCCESSFULLY_TO, align 4
  %46 = call i32 @msg_hash_to_str(i32 %45)
  %47 = getelementptr inbounds %struct.ram_type, %struct.ram_type* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i32, i32, ...) @RARCH_LOG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %46, i32 %48)
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %44, %43, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @content_get_memory(%struct.TYPE_3__*, %struct.ram_type*, i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i32, i32, ...) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @filestream_write_file(i32, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @dump_to_file_desperate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
