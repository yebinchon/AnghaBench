; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_do_http2_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_do_http2_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32 }

@callback_send = common dso_local global i32 0, align 4
@callback_recv = common dso_local global i32 0, align 4
@callback_on_frame_send = common dso_local global i32 0, align 4
@callback_on_frame_recv = common dso_local global i32 0, align 4
@callback_on_stream_close = common dso_local global i32 0, align 4
@callback_on_data_chunk_recv = common dso_local global i32 0, align 4
@callback_on_header = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"[sh2-connect] New http2 session failed\00", align 1
@NGHTTP2_FLAG_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"[sh2-connect] Submit settings failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh2lib_handle*)* @do_http2_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_http2_connect(%struct.sh2lib_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh2lib_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.sh2lib_handle* %0, %struct.sh2lib_handle** %3, align 8
  %6 = call i32 @nghttp2_session_callbacks_new(i32** %5)
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* @callback_send, align 4
  %9 = call i32 @nghttp2_session_callbacks_set_send_callback(i32* %7, i32 %8)
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @callback_recv, align 4
  %12 = call i32 @nghttp2_session_callbacks_set_recv_callback(i32* %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @callback_on_frame_send, align 4
  %15 = call i32 @nghttp2_session_callbacks_set_on_frame_send_callback(i32* %13, i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @callback_on_frame_recv, align 4
  %18 = call i32 @nghttp2_session_callbacks_set_on_frame_recv_callback(i32* %16, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @callback_on_stream_close, align 4
  %21 = call i32 @nghttp2_session_callbacks_set_on_stream_close_callback(i32* %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @callback_on_data_chunk_recv, align 4
  %24 = call i32 @nghttp2_session_callbacks_set_on_data_chunk_recv_callback(i32* %22, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @callback_on_header, align 4
  %27 = call i32 @nghttp2_session_callbacks_set_on_header_callback(i32* %25, i32 %26)
  %28 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %3, align 8
  %29 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %28, i32 0, i32 0
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %3, align 8
  %32 = call i32 @nghttp2_session_client_new(i32* %29, i32* %30, %struct.sh2lib_handle* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @ESP_LOGE(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @nghttp2_session_callbacks_del(i32* %38)
  store i32 -1, i32* %2, align 4
  br label %54

40:                                               ; preds = %1
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @nghttp2_session_callbacks_del(i32* %41)
  %43 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %3, align 8
  %44 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NGHTTP2_FLAG_NONE, align 4
  %47 = call i32 @nghttp2_submit_settings(i32 %45, i32 %46, i32* null, i32 0)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %35
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @nghttp2_session_callbacks_new(i32**) #1

declare dso_local i32 @nghttp2_session_callbacks_set_send_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_callbacks_set_recv_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_callbacks_set_on_frame_send_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_callbacks_set_on_frame_recv_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_callbacks_set_on_stream_close_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_callbacks_set_on_data_chunk_recv_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_callbacks_set_on_header_callback(i32*, i32) #1

declare dso_local i32 @nghttp2_session_client_new(i32*, i32*, %struct.sh2lib_handle*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @nghttp2_session_callbacks_del(i32*) #1

declare dso_local i32 @nghttp2_submit_settings(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
