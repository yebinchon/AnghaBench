; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_test_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_test_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Finish http example\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_test_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_test_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (...) @http_rest_with_url()
  %4 = call i32 (...) @http_rest_with_hostname_path()
  %5 = call i32 (...) @http_auth_basic()
  %6 = call i32 (...) @http_auth_basic_redirect()
  %7 = call i32 (...) @http_auth_digest()
  %8 = call i32 (...) @http_relative_redirect()
  %9 = call i32 (...) @http_absolute_redirect()
  %10 = call i32 (...) @https_with_url()
  %11 = call i32 (...) @https_with_hostname_path()
  %12 = call i32 (...) @http_redirect_to_https()
  %13 = call i32 (...) @http_download_chunk()
  %14 = call i32 (...) @http_perform_as_stream_reader()
  %15 = call i32 (...) @https_async()
  %16 = call i32 (...) @https_with_invalid_url()
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGI(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i32 @http_rest_with_url(...) #1

declare dso_local i32 @http_rest_with_hostname_path(...) #1

declare dso_local i32 @http_auth_basic(...) #1

declare dso_local i32 @http_auth_basic_redirect(...) #1

declare dso_local i32 @http_auth_digest(...) #1

declare dso_local i32 @http_relative_redirect(...) #1

declare dso_local i32 @http_absolute_redirect(...) #1

declare dso_local i32 @https_with_url(...) #1

declare dso_local i32 @https_with_hostname_path(...) #1

declare dso_local i32 @http_redirect_to_https(...) #1

declare dso_local i32 @http_download_chunk(...) #1

declare dso_local i32 @http_perform_as_stream_reader(...) #1

declare dso_local i32 @https_async(...) #1

declare dso_local i32 @https_with_invalid_url(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
