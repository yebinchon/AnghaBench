; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_process_ctrl_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_process_ctrl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.httpd_ctrl_data = type { i32, i32, i32 (i32)* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"error in recv (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"incomplete msg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"work\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@THREAD_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.httpd_data*)* @httpd_process_ctrl_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpd_process_ctrl_msg(%struct.httpd_data* %0) #0 {
  %2 = alloca %struct.httpd_data*, align 8
  %3 = alloca %struct.httpd_ctrl_data, align 8
  %4 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %2, align 8
  %5 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %6 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @recv(i32 %7, %struct.httpd_ctrl_data* %3, i32 16, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 @LOG_FMT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %12, i32 %13, i32 %14)
  br label %50

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 16
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @TAG, align 4
  %22 = call i32 @LOG_FMT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %21, i32 %22)
  br label %50

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %49 [
    i32 128, label %27
    i32 129, label %41
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %3, i32 0, i32 2
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @LOG_FMT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @ESP_LOGD(i32 %32, i32 %33)
  %35 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %3, i32 0, i32 2
  %36 = load i32 (i32)*, i32 (i32)** %35, align 8
  %37 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %36(i32 %38)
  br label %40

40:                                               ; preds = %31, %27
  br label %50

41:                                               ; preds = %24
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 @LOG_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @ESP_LOGD(i32 %42, i32 %43)
  %45 = load i32, i32* @THREAD_STOPPING, align 4
  %46 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %47 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  br label %50

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %11, %20, %49, %41, %40
  ret void
}

declare dso_local i32 @recv(i32, %struct.httpd_ctrl_data*, i32, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
