; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_send_chunk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_txrx.c_httpd_resp_send_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i32, i8*, i32, %struct.TYPE_6__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i8*, i8* }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_ERR_HTTPD_INVALID_REQ = common dso_local global i64 0, align 8
@HTTPD_RESP_USE_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"HTTP/1.1 %s\0D\0AContent-Type: %s\0D\0ATransfer-Encoding: chunked\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ESP_ERR_HTTPD_RESP_HDR = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_HTTPD_RESP_SEND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"%x\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_resp_send_chunk(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [10 x i8], align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %17, i64* %4, align 8
  br label %200

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = call i32 @httpd_valid_req(%struct.TYPE_7__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* @ESP_ERR_HTTPD_INVALID_REQ, align 8
  store i64 %23, i64* %4, align 8
  br label %200

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @HTTPD_RESP_USE_STRLEN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %34, align 8
  store %struct.httpd_req_aux* %35, %struct.httpd_req_aux** %8, align 8
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %36 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %37 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %39 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %164, label %42

42:                                               ; preds = %32
  %43 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %44 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %48 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %51 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %45, i32 8, i8* %46, i32 %49, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = icmp uge i64 %54, 8
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i64, i64* @ESP_ERR_HTTPD_RESP_HDR, align 8
  store i64 %57, i64* %4, align 8
  br label %200

58:                                               ; preds = %42
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %61 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %64 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strlen(i8* %65)
  %67 = call i64 @httpd_send_all(%struct.TYPE_7__* %59, i8* %62, i64 %66)
  %68 = load i64, i64* @ESP_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %71, i64* %4, align 8
  br label %200

72:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %148, %72
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %76 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %151

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %82 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %90 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strlen(i8* %96)
  %98 = call i64 @httpd_send_all(%struct.TYPE_7__* %80, i8* %88, i64 %97)
  %99 = load i64, i64* @ESP_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %102, i64* %4, align 8
  br label %200

103:                                              ; preds = %79
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i64 @strlen(i8* %106)
  %108 = call i64 @httpd_send_all(%struct.TYPE_7__* %104, i8* %105, i64 %107)
  %109 = load i64, i64* @ESP_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %112, i64* %4, align 8
  br label %200

113:                                              ; preds = %103
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %116 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %115, i32 0, i32 3
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %124 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = call i64 @httpd_send_all(%struct.TYPE_7__* %114, i8* %122, i64 %131)
  %133 = load i64, i64* @ESP_OK, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %113
  %136 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %136, i64* %4, align 8
  br label %200

137:                                              ; preds = %113
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = load i8*, i8** %11, align 8
  %141 = call i64 @strlen(i8* %140)
  %142 = call i64 @httpd_send_all(%struct.TYPE_7__* %138, i8* %139, i64 %141)
  %143 = load i64, i64* @ESP_OK, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %146, i64* %4, align 8
  br label %200

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %73

151:                                              ; preds = %73
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i64 @strlen(i8* %154)
  %156 = call i64 @httpd_send_all(%struct.TYPE_7__* %152, i8* %153, i64 %155)
  %157 = load i64, i64* @ESP_OK, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %151
  %160 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %160, i64* %4, align 8
  br label %200

161:                                              ; preds = %151
  %162 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %163 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %32
  %165 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %166 = load i32, i32* %7, align 4
  %167 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %165, i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %170 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %171 = call i64 @strlen(i8* %170)
  %172 = call i64 @httpd_send_all(%struct.TYPE_7__* %168, i8* %169, i64 %171)
  %173 = load i64, i64* @ESP_OK, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %176, i64* %4, align 8
  br label %200

177:                                              ; preds = %164
  %178 = load i8*, i8** %6, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = call i64 @httpd_send_all(%struct.TYPE_7__* %181, i8* %182, i64 %184)
  %186 = load i64, i64* @ESP_OK, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %189, i64* %4, align 8
  br label %200

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %177
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %193 = call i64 @httpd_send_all(%struct.TYPE_7__* %192, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2)
  %194 = load i64, i64* @ESP_OK, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  %197 = load i64, i64* @ESP_ERR_HTTPD_RESP_SEND, align 8
  store i64 %197, i64* %4, align 8
  br label %200

198:                                              ; preds = %191
  %199 = load i64, i64* @ESP_OK, align 8
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %198, %196, %188, %175, %159, %145, %135, %111, %101, %70, %56, %22, %16
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_7__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @httpd_send_all(%struct.TYPE_7__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
