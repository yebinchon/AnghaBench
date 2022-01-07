; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i32 (i32*)*, i32*, i32 (i32*)*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.httpd_ctrl_data = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@HTTPD_CTRL_SHUTDOWN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sent control msg to stop server\00", align 1
@THREAD_STOPPED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"server stopped\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_stop(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.httpd_data*, align 8
  %5 = alloca %struct.httpd_ctrl_data, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to %struct.httpd_data*
  store %struct.httpd_data* %7, %struct.httpd_data** %4, align 8
  %8 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %9 = icmp eq %struct.httpd_data* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %11, i32* %2, align 4
  br label %107

12:                                               ; preds = %1
  %13 = call i32 @memset(%struct.httpd_ctrl_data* %5, i32 0, i32 4)
  %14 = load i32, i32* @HTTPD_CTRL_SHUTDOWN, align 4
  %15 = getelementptr inbounds %struct.httpd_ctrl_data, %struct.httpd_ctrl_data* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %17 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %20 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cs_send_to_ctrl_sock(i32 %18, i32 %22, %struct.httpd_ctrl_data* %5, i32 4)
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 @LOG_FMT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @ESP_LOGD(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %34, %12
  %28 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %29 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @THREAD_STOPPED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @httpd_os_thread_sleep(i32 100)
  br label %27

36:                                               ; preds = %27
  %37 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %38 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %44 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32 (i32*)*, i32 (i32*)** %45, align 8
  %47 = icmp ne i32 (i32*)* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %50 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32 (i32*)*, i32 (i32*)** %51, align 8
  %53 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %54 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 %52(i32* %56)
  br label %64

58:                                               ; preds = %42
  %59 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %60 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @free(i32* %62)
  br label %64

64:                                               ; preds = %58, %48
  %65 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %66 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %64, %36
  %69 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %70 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  %75 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %76 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32 (i32*)*, i32 (i32*)** %77, align 8
  %79 = icmp ne i32 (i32*)* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %82 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32 (i32*)*, i32 (i32*)** %83, align 8
  %85 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %86 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 %84(i32* %88)
  br label %96

90:                                               ; preds = %74
  %91 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %92 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @free(i32* %94)
  br label %96

96:                                               ; preds = %90, %80
  %97 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %98 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %68
  %101 = load i32, i32* @TAG, align 4
  %102 = call i32 @LOG_FMT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %103 = call i32 @ESP_LOGD(i32 %101, i32 %102)
  %104 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %105 = call i32 @httpd_delete(%struct.httpd_data* %104)
  %106 = load i32, i32* @ESP_OK, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %10
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @memset(%struct.httpd_ctrl_data*, i32, i32) #1

declare dso_local i32 @cs_send_to_ctrl_sock(i32, i32, %struct.httpd_ctrl_data*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @httpd_os_thread_sleep(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @httpd_delete(%struct.httpd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
