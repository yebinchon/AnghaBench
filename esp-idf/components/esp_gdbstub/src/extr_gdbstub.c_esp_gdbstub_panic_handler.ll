; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_gdbstub.c_esp_gdbstub_panic_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_gdbstub/src/extr_gdbstub.c_esp_gdbstub_panic_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i32 }

@s_scratch = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GDBSTUB_ST_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"E01\00", align 1
@GDBSTUB_CUR_TASK_INDEX_UNKNOWN = common dso_local global i64 0, align 8
@GDBSTUB_NOT_STARTED = common dso_local global i64 0, align 8
@GDBSTUB_STARTED = common dso_local global i64 0, align 8
@GDBSTUB_TASK_SUPPORT_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esp_gdbstub_panic_handler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @esp_gdbstub_frame_to_regfile(i32* %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_scratch, i32 0, i32 4))
  %8 = call i32 (...) @esp_gdbstub_target_init()
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @esp_gdbstub_get_signal(i32* %9)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_scratch, i32 0, i32 2), align 8
  %11 = call i32 (...) @send_reason()
  br label %12

12:                                               ; preds = %1, %16, %21, %32
  %13 = call i32 @esp_gdbstub_read_command(i8** %3, i64* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %12

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @GDBSTUB_ST_ERR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @esp_gdbstub_send_str_packet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %12

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @esp_gdbstub_handle_command(i8* %24, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @GDBSTUB_ST_ERR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @esp_gdbstub_send_str_packet(i8* null)
  br label %32

32:                                               ; preds = %30, %23
  br label %12
}

declare dso_local i32 @esp_gdbstub_frame_to_regfile(i32*, i32*) #1

declare dso_local i32 @esp_gdbstub_target_init(...) #1

declare dso_local i32 @esp_gdbstub_get_signal(i32*) #1

declare dso_local i32 @send_reason(...) #1

declare dso_local i32 @esp_gdbstub_read_command(i8**, i64*) #1

declare dso_local i32 @esp_gdbstub_send_str_packet(i8*) #1

declare dso_local i32 @esp_gdbstub_handle_command(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
