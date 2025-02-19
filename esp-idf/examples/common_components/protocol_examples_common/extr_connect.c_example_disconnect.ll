; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/common_components/protocol_examples_common/extr_connect.c_example_disconnect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/common_components/protocol_examples_common/extr_connect.c_example_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_connect_event_group = common dso_local global i32* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Disconnected from %s\00", align 1
@s_connection_name = common dso_local global i32* null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @example_disconnect() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @s_connect_event_group, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %5, i32* %1, align 4
  br label %14

6:                                                ; preds = %0
  %7 = load i32*, i32** @s_connect_event_group, align 8
  %8 = call i32 @vEventGroupDelete(i32* %7)
  store i32* null, i32** @s_connect_event_group, align 8
  %9 = call i32 (...) @stop()
  %10 = load i32, i32* @TAG, align 4
  %11 = load i32*, i32** @s_connection_name, align 8
  %12 = call i32 @ESP_LOGI(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32* null, i32** @s_connection_name, align 8
  %13 = load i32, i32* @ESP_OK, align 4
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %6, %4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @vEventGroupDelete(i32*) #1

declare dso_local i32 @stop(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
