; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_callback_send_inner.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_callback_send_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32 }

@ESP_TLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@ESP_TLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@NGHTTP2_ERR_WOULDBLOCK = common dso_local global i32 0, align 4
@NGHTTP2_ERR_CALLBACK_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh2lib_handle*, i32*, i64)* @callback_send_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback_send_inner(%struct.sh2lib_handle* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.sh2lib_handle*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sh2lib_handle* %0, %struct.sh2lib_handle** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %4, align 8
  %9 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @esp_tls_conn_write(i32 %10, i32* %11, i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_READ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_WRITE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16
  %25 = load i32, i32* @NGHTTP2_ERR_WOULDBLOCK, align 4
  store i32 %25, i32* %7, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @NGHTTP2_ERR_CALLBACK_FAILURE, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %26, %24
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @esp_tls_conn_write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
