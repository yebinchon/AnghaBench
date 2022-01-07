; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_callback_recv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http2_request/components/sh2lib/extr_sh2lib.c_callback_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh2lib_handle = type { i32 }

@ESP_TLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@ESP_TLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@NGHTTP2_ERR_WOULDBLOCK = common dso_local global i32 0, align 4
@NGHTTP2_ERR_CALLBACK_FAILURE = common dso_local global i32 0, align 4
@NGHTTP2_ERR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32, i8*)* @callback_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @callback_recv(i32* %0, i32* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sh2lib_handle*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.sh2lib_handle*
  store %struct.sh2lib_handle* %14, %struct.sh2lib_handle** %11, align 8
  %15 = load %struct.sh2lib_handle*, %struct.sh2lib_handle** %11, align 8
  %16 = getelementptr inbounds %struct.sh2lib_handle, %struct.sh2lib_handle* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @esp_tls_conn_read(i32 %17, i8* %19, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_READ, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_WRITE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @NGHTTP2_ERR_WOULDBLOCK, align 4
  store i32 %34, i32* %12, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @NGHTTP2_ERR_CALLBACK_FAILURE, align 4
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %44

38:                                               ; preds = %5
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @NGHTTP2_ERR_EOF, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %38
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %12, align 4
  ret i32 %45
}

declare dso_local i32 @esp_tls_conn_read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
