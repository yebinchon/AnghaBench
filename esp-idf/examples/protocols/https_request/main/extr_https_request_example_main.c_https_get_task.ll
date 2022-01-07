; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/https_request/main/extr_https_request_example_main.c_https_get_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/https_request/main/extr_https_request_example_main.c_https_get_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.esp_tls = type { i32 }

@server_root_cert_pem_end = common dso_local global i64 0, align 8
@server_root_cert_pem_start = common dso_local global i64 0, align 8
@WEB_URL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Connection established...\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Connection failed...\00", align 1
@REQUEST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"%d bytes written\00", align 1
@ESP_TLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@ESP_TLS_ERR_SSL_WANT_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"esp_tls_conn_write  returned 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Reading HTTP response...\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"esp_tls_conn_read  returned -0x%x\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"%d bytes read\00", align 1
@https_get_task.request_count = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Completed %d requests\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%d...\00", align 1
@portTICK_PERIOD_MS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"Starting again!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @https_get_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @https_get_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca %struct.esp_tls*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %11

11:                                               ; preds = %1, %142
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %13 = load i64, i64* @server_root_cert_pem_end, align 8
  %14 = load i64, i64* @server_root_cert_pem_start, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %17 = load i64, i64* @server_root_cert_pem_start, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32, i32* @WEB_URL, align 4
  %19 = call %struct.esp_tls* @esp_tls_conn_http_new(i32 %18, %struct.TYPE_3__* %6)
  store %struct.esp_tls* %19, %struct.esp_tls** %7, align 8
  %20 = load %struct.esp_tls*, %struct.esp_tls** %7, align 8
  %21 = icmp ne %struct.esp_tls* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %28

25:                                               ; preds = %11
  %26 = load i32, i32* @TAG, align 4
  %27 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %121

28:                                               ; preds = %22
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %63, %28
  %30 = load %struct.esp_tls*, %struct.esp_tls** %7, align 8
  %31 = load i64, i64* @REQUEST, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* @REQUEST, align 8
  %35 = call i64 @strlen(i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  %38 = call i32 @esp_tls_conn_write(%struct.esp_tls* %30, i64 %33, i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load i32, i32* @TAG, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %62

49:                                               ; preds = %29
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_READ, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_WRITE, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @TAG, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %121

61:                                               ; preds = %53, %49
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @REQUEST, align 8
  %66 = call i64 @strlen(i64 %65)
  %67 = icmp ult i64 %64, %66
  br i1 %67, label %29, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %119, %68
  store i32 511, i32* %5, align 4
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %73 = call i32 @bzero(i8* %72, i32 512)
  %74 = load %struct.esp_tls*, %struct.esp_tls** %7, align 8
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @esp_tls_conn_read(%struct.esp_tls* %74, i8* %75, i32 %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_WRITE, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @ESP_TLS_ERR_SSL_WANT_READ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %71
  br label %119

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @TAG, align 4
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 0, %91
  %93 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %120

94:                                               ; preds = %86
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @TAG, align 4
  %99 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %120

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @TAG, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ESP_LOGD(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %115, %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @putchar(i8 signext %113)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %105

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %85
  br i1 true, label %71, label %120

120:                                              ; preds = %119, %97, %89
  br label %121

121:                                              ; preds = %120, %57, %25
  %122 = load %struct.esp_tls*, %struct.esp_tls** %7, align 8
  %123 = call i32 @esp_tls_conn_delete(%struct.esp_tls* %122)
  %124 = call i32 @putchar(i8 signext 10)
  %125 = load i32, i32* @TAG, align 4
  %126 = load i32, i32* @https_get_task.request_count, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @https_get_task.request_count, align 4
  %128 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %127)
  store i32 10, i32* %10, align 4
  br label %129

129:                                              ; preds = %139, %121
  %130 = load i32, i32* %10, align 4
  %131 = icmp sge i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, i32* @TAG, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @portTICK_PERIOD_MS, align 4
  %137 = sdiv i32 1000, %136
  %138 = call i32 @vTaskDelay(i32 %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %10, align 4
  br label %129

142:                                              ; preds = %129
  %143 = load i32, i32* @TAG, align 4
  %144 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  br label %11
}

declare dso_local %struct.esp_tls* @esp_tls_conn_http_new(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_tls_conn_write(%struct.esp_tls*, i64, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @esp_tls_conn_read(%struct.esp_tls*, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @esp_tls_conn_delete(%struct.esp_tls*) #1

declare dso_local i32 @vTaskDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
