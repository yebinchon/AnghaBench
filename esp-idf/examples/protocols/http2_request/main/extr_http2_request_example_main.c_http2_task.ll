; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/main/extr_http2_request_example_main.c_http2_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/main/extr_http2_request_example_main.c_http2_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Connecting to server\0A\00", align 1
@HTTP2_SERVER_URI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to connect\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Connection done\0A\00", align 1
@HTTP2_STREAMING_GET_PATH = common dso_local global i32 0, align 4
@handle_get_response = common dso_local global i32 0, align 4
@HTTP2_PUT_PATH = common dso_local global i32 0, align 4
@send_put_data = common dso_local global i32 0, align 4
@handle_echo_response = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Error in send/receive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http2_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http2_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sh2lib_handle, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (...) @set_time()
  %5 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @HTTP2_SERVER_URI, align 4
  %7 = call i64 @sh2lib_connect(%struct.sh2lib_handle* %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @vTaskDelete(i32* null)
  br label %31

12:                                               ; preds = %1
  %13 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @HTTP2_STREAMING_GET_PATH, align 4
  %15 = load i32, i32* @handle_get_response, align 4
  %16 = call i32 @sh2lib_do_get(%struct.sh2lib_handle* %3, i32 %14, i32 %15)
  %17 = load i32, i32* @HTTP2_PUT_PATH, align 4
  %18 = load i32, i32* @send_put_data, align 4
  %19 = load i32, i32* @handle_echo_response, align 4
  %20 = call i32 @sh2lib_do_put(%struct.sh2lib_handle* %3, i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %12, %26
  %22 = call i64 @sh2lib_execute(%struct.sh2lib_handle* %3)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %28

26:                                               ; preds = %21
  %27 = call i32 @vTaskDelay(i32 2)
  br label %21

28:                                               ; preds = %24
  %29 = call i32 @sh2lib_free(%struct.sh2lib_handle* %3)
  %30 = call i32 @vTaskDelete(i32* null)
  br label %31

31:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @set_time(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @sh2lib_connect(%struct.sh2lib_handle*, i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

declare dso_local i32 @sh2lib_do_get(%struct.sh2lib_handle*, i32, i32) #1

declare dso_local i32 @sh2lib_do_put(%struct.sh2lib_handle*, i32, i32, i32) #1

declare dso_local i64 @sh2lib_execute(%struct.sh2lib_handle*) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @sh2lib_free(%struct.sh2lib_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
