; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_thread.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@THREAD_RUNNING = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"web server started\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"web server exiting\00", align 1
@THREAD_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @httpd_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpd_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.httpd_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.httpd_data*
  store %struct.httpd_data* %6, %struct.httpd_data** %4, align 8
  %7 = load i32, i32* @THREAD_RUNNING, align 4
  %8 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %9 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @LOG_FMT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @ESP_LOGD(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %1, %21
  %15 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %16 = call i32 @httpd_server(%struct.httpd_data* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ESP_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %22

21:                                               ; preds = %14
  br label %14

22:                                               ; preds = %20
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @LOG_FMT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @ESP_LOGD(i32 %23, i32 %24)
  %26 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %27 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %31 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cs_free_ctrl_sock(i32 %32)
  %34 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %35 = call i32 @httpd_close_all_sessions(%struct.httpd_data* %34)
  %36 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %37 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* @THREAD_STOPPED, align 4
  %41 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %42 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = call i32 (...) @httpd_os_thread_delete()
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @httpd_server(%struct.httpd_data*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @cs_free_ctrl_sock(i32) #1

declare dso_local i32 @httpd_close_all_sessions(%struct.httpd_data*) #1

declare dso_local i32 @httpd_os_thread_delete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
