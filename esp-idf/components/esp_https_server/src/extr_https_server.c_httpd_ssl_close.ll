; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_server/src/extr_https_server.c_httpd_ssl_close.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_server/src/extr_https_server.c_httpd_ssl_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Secure socket closed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @httpd_ssl_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpd_ssl_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @esp_tls_server_session_delete(i8* %7)
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 @ESP_LOGD(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @esp_tls_server_session_delete(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
