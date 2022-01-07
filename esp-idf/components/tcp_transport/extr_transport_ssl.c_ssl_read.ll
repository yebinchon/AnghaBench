; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ssl.c_ssl_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ssl.c_ssl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"esp_tls_conn_read error, errno=%s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ssl_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_read(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_5__* @esp_transport_get_context_data(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %12, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i64 @esp_tls_get_bytes_avail(%struct.TYPE_6__* %17)
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @esp_transport_poll_read(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @esp_tls_conn_read(%struct.TYPE_6__* %31, i8* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %28
  %38 = load i32, i32* @TAG, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 @ESP_LOGE(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @esp_transport_set_errors(i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %37, %28
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 -1, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %25
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_5__* @esp_transport_get_context_data(i32) #1

declare dso_local i64 @esp_tls_get_bytes_avail(%struct.TYPE_6__*) #1

declare dso_local i32 @esp_transport_poll_read(i32, i32) #1

declare dso_local i32 @esp_tls_conn_read(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @esp_transport_set_errors(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
