; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_server.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_main.c_httpd_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"doing select maxfd+1 = %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"error in select (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"processing ctrl message\00", align 1
@THREAD_STOPPING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"stopping thread\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"processing socket %d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"closing socket %d\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"processing listen socket %d\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"error accepting new connection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.httpd_data*)* @httpd_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @httpd_server(%struct.httpd_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  %9 = call i32 @FD_ZERO(i32* %4)
  %10 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %11 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %17 = call i64 @httpd_is_sess_available(%struct.httpd_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15, %1
  %20 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %21 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @FD_SET(i32 %22, i32* %4)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %26 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FD_SET(i32 %27, i32* %4)
  %29 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %30 = call i32 @httpd_sess_set_descriptors(%struct.httpd_data* %29, i32* %4, i32* %5)
  %31 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %32 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MAX(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %38 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @MAX(i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @TAG, align 4
  %43 = call i32 @LOG_FMT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %42, i32 %43, i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @select(i32 %48, i32* %4, i32* null, i32* null, i32* null)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %24
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @ESP_LOGE(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %58 = call i32 @httpd_sess_delete_invalid(%struct.httpd_data* %57)
  %59 = load i64, i64* @ESP_OK, align 8
  store i64 %59, i64* %2, align 8
  br label %148

60:                                               ; preds = %24
  %61 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %62 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @FD_ISSET(i32 %63, i32* %4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load i32, i32* @TAG, align 4
  %68 = call i32 @LOG_FMT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %67, i32 %68)
  %70 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %71 = call i32 @httpd_process_ctrl_msg(%struct.httpd_data* %70)
  %72 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %73 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @THREAD_STOPPING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load i32, i32* @TAG, align 4
  %80 = call i32 @LOG_FMT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %81 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %79, i32 %80)
  %82 = load i64, i64* @ESP_FAIL, align 8
  store i64 %82, i64* %2, align 8
  br label %148

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %60
  store i32 -1, i32* %8, align 4
  br label %85

85:                                               ; preds = %120, %84
  %86 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @httpd_sess_iterate(%struct.httpd_data* %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %121

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @FD_ISSET(i32 %91, i32* %4)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i64 @httpd_sess_pending(%struct.httpd_data* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %94, %90
  %100 = load i32, i32* @TAG, align 4
  %101 = call i32 @LOG_FMT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @httpd_sess_process(%struct.httpd_data* %104, i32 %105)
  %107 = load i64, i64* @ESP_OK, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %99
  %110 = load i32, i32* @TAG, align 4
  %111 = call i32 @LOG_FMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @close(i32 %114)
  %116 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @httpd_sess_delete(%struct.httpd_data* %116, i32 %117)
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %109, %99
  br label %120

120:                                              ; preds = %119, %94
  br label %85

121:                                              ; preds = %85
  %122 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %123 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i64 @FD_ISSET(i32 %124, i32* %4)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load i32, i32* @TAG, align 4
  %129 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %131 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %128, i32 %129, i32 %132)
  %134 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %135 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %136 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @httpd_accept_conn(%struct.httpd_data* %134, i32 %137)
  %139 = load i64, i64* @ESP_OK, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %127
  %142 = load i32, i32* @TAG, align 4
  %143 = call i32 @LOG_FMT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %144 = call i32 @ESP_LOGW(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %127
  br label %146

146:                                              ; preds = %145, %121
  %147 = load i64, i64* @ESP_OK, align 8
  store i64 %147, i64* %2, align 8
  br label %148

148:                                              ; preds = %146, %78, %52
  %149 = load i64, i64* %2, align 8
  ret i64 %149
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @httpd_is_sess_available(%struct.httpd_data*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @httpd_sess_set_descriptors(%struct.httpd_data*, i32*, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i32, i32) #1

declare dso_local i32 @httpd_sess_delete_invalid(%struct.httpd_data*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @httpd_process_ctrl_msg(%struct.httpd_data*) #1

declare dso_local i32 @httpd_sess_iterate(%struct.httpd_data*, i32) #1

declare dso_local i64 @httpd_sess_pending(%struct.httpd_data*, i32) #1

declare dso_local i64 @httpd_sess_process(%struct.httpd_data*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @httpd_sess_delete(%struct.httpd_data*, i32) #1

declare dso_local i64 @httpd_accept_conn(%struct.httpd_data*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
