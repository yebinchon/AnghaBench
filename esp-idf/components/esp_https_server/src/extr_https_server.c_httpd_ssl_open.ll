; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_server/src/extr_https_server.c_httpd_ssl_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_server/src/extr_https_server.c_httpd_ssl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"performing session handshake\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"esp_tls_create_server_session failed\00", align 1
@httpd_ssl_close = common dso_local global i32 0, align 4
@httpd_ssl_send = common dso_local global i32 0, align 4
@httpd_ssl_recv = common dso_local global i32 0, align 4
@httpd_ssl_pending = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Secure socket open\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @httpd_ssl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpd_ssl_open(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @httpd_get_global_transport_ctx(i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i64 @calloc(i32 1, i32 4)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 @ESP_LOGI(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @esp_tls_server_session_create(i32* %28, i32 %29, i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %58

37:                                               ; preds = %25
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @httpd_ssl_close, align 4
  %42 = call i32 @httpd_sess_set_transport_ctx(i32* %38, i32 %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @httpd_ssl_send, align 4
  %46 = call i32 @httpd_sess_set_send_override(i32* %43, i32 %44, i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @httpd_ssl_recv, align 4
  %50 = call i32 @httpd_sess_set_recv_override(i32* %47, i32 %48, i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @httpd_ssl_pending, align 4
  %54 = call i32 @httpd_sess_set_pending_override(i32* %51, i32 %52, i32 %53)
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 @ESP_LOGD(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ESP_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %34
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @esp_tls_server_session_delete(i32* %59)
  %61 = load i32, i32* @ESP_FAIL, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %37, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @httpd_get_global_transport_ctx(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @esp_tls_server_session_create(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @httpd_sess_set_transport_ctx(i32*, i32, i32*, i32) #1

declare dso_local i32 @httpd_sess_set_send_override(i32*, i32, i32) #1

declare dso_local i32 @httpd_sess_set_recv_override(i32*, i32, i32) #1

declare dso_local i32 @httpd_sess_set_pending_override(i32*, i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @esp_tls_server_session_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
