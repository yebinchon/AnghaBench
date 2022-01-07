; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_send.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i8*, i32, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_ERR_HTTPD_INVALID_REQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"HTTP/1.1 %s\0D\0AContent-Type: %s\0D\0AContent-Length: %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@HTTPD_RESP_USE_STRLEN = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_RESP_HDR = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_HTTPD_RESP_SEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_resp_send(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %16, i64* %4, align 8
  br label %173

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = call i32 @httpd_valid_req(%struct.TYPE_7__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @ESP_ERR_HTTPD_INVALID_REQ, align 8
  store i64 %22, i64* %4, align 8
  br label %173

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %25, align 8
  store %struct.httpd_req_aux* %26, %struct.httpd_req_aux** %8, align 8
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @HTTPD_RESP_USE_STRLEN, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %35 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %37 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %41 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %44 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @snprintf(i8* %38, i32 8, i8* %39, i32 %42, i32 %45, i32 %46)
  %48 = sext i32 %47 to i64
  %49 = icmp uge i64 %48, 8
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i64, i64* @ESP_ERR_HTTPD_RESP_HDR, align 8
  store i64 %51, i64* %4, align 8
  br label %173

52:                                               ; preds = %33
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %55 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %58 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = call i64 @httpd_send_all(%struct.TYPE_7__* %53, i8* %56, i32 %60)
  %62 = load i64, i64* @ESP_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %65, i64* %4, align 8
  br label %173

66:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %142, %66
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %70 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %145

73:                                               ; preds = %67
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %76 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %84 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i64 @httpd_send_all(%struct.TYPE_7__* %74, i8* %82, i32 %91)
  %93 = load i64, i64* @ESP_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %73
  %96 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %96, i64* %4, align 8
  br label %173

97:                                               ; preds = %73
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = call i64 @httpd_send_all(%struct.TYPE_7__* %98, i8* %99, i32 %101)
  %103 = load i64, i64* @ESP_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %106, i64* %4, align 8
  br label %173

107:                                              ; preds = %97
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %110 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %118 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %117, i32 0, i32 2
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = call i64 @httpd_send_all(%struct.TYPE_7__* %108, i8* %116, i32 %125)
  %127 = load i64, i64* @ESP_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %107
  %130 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %130, i64* %4, align 8
  br label %173

131:                                              ; preds = %107
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = call i64 @httpd_send_all(%struct.TYPE_7__* %132, i8* %133, i32 %135)
  %137 = load i64, i64* @ESP_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %131
  %140 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %140, i64* %4, align 8
  br label %173

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %12, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %67

145:                                              ; preds = %67
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 @strlen(i8* %148)
  %150 = call i64 @httpd_send_all(%struct.TYPE_7__* %146, i8* %147, i32 %149)
  %151 = load i64, i64* @ESP_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %154, i64* %4, align 8
  br label %173

155:                                              ; preds = %145
  %156 = load i8*, i8** %6, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i64 @httpd_send_all(%struct.TYPE_7__* %162, i8* %163, i32 %164)
  %166 = load i64, i64* @ESP_OK, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %169, i64* %4, align 8
  br label %173

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %158, %155
  %172 = load i64, i64* @ESP_OK, align 8
  store i64 %172, i64* %4, align 8
  br label %173

173:                                              ; preds = %171, %168, %153, %139, %129, %105, %95, %64, %50, %21, %15
  %174 = load i64, i64* %4, align 8
  ret i64 %174
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_7__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @httpd_send_all(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
