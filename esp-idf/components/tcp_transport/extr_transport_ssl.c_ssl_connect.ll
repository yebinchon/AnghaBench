; ModuleID = '/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ssl.c_ssl_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/tcp_transport/extr_transport_ssl.c_ssl_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to open a new connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @ssl_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_connect(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.TYPE_7__* @esp_transport_get_context_data(i32 %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = call %struct.TYPE_8__* (...) @esp_tls_init()
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i64 @esp_tls_conn_new_sync(i8* %22, i32 %24, i32 %25, %struct.TYPE_9__* %27, %struct.TYPE_8__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %4
  %34 = load i32, i32* @TAG, align 4
  %35 = call i32 @ESP_LOGE(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @esp_transport_set_errors(i32 %36, i32 %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = call i32 @esp_tls_conn_delete(%struct.TYPE_8__* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %48, align 8
  store i32 -1, i32* %5, align 4
  br label %50

49:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_7__* @esp_transport_get_context_data(i32) #1

declare dso_local %struct.TYPE_8__* @esp_tls_init(...) #1

declare dso_local i64 @esp_tls_conn_new_sync(i8*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_transport_set_errors(i32, i32) #1

declare dso_local i32 @esp_tls_conn_delete(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
