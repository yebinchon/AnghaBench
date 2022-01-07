; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_httpd.c_common_post_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_httpd.c_common_post_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, i32)*, i64 (i32, i32)* }
%struct.TYPE_10__ = type { i64, i8* }

@session_id = common dso_local global i32 0, align 4
@PROTOCOMM_NO_SESSION_ID = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Closing session with ID: %d\00", align 1
@pc_httpd = common dso_local global %struct.TYPE_11__* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Error closing session with ID: %d\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to launch new session with ID: %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"New session with ID: %d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Content length not found\00", align 1
@MAX_REQ_BODY_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"Request content length should be less than 4kb\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"Unable to allocate for request length %d\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"Data handler failed\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"HTTP send failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*)* @common_post_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @common_post_handler(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = call i32 @httpd_req_to_sockfd(%struct.TYPE_10__* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @session_id, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %92

15:                                               ; preds = %1
  %16 = load i32, i32* @session_id, align 4
  %17 = load i32, i32* @PROTOCOMM_NO_SESSION_ID, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load i32, i32* @TAG, align 4
  %21 = load i32, i32* @session_id, align 4
  %22 = call i32 @ESP_LOGD(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64 (i32, i32)*, i64 (i32, i32)** %31, align 8
  %33 = icmp ne i64 (i32, i32)* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64 (i32, i32)*, i64 (i32, i32)** %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @session_id, align 4
  %44 = call i64 %39(i32 %42, i32 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @ESP_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load i32, i32* @TAG, align 4
  %50 = load i32, i32* @session_id, align 4
  %51 = call i32 @ESP_LOGW(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %34
  br label %53

53:                                               ; preds = %52, %27, %19
  %54 = load i32, i32* @PROTOCOMM_NO_SESSION_ID, align 4
  store i32 %54, i32* @session_id, align 4
  br label %55

55:                                               ; preds = %53, %15
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = icmp ne %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64 (i32, i32)*, i64 (i32, i32)** %64, align 8
  %66 = icmp ne i64 (i32, i32)* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %60
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64 (i32, i32)*, i64 (i32, i32)** %71, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 %72(i32 %75, i32 %76)
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @ESP_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load i32, i32* @TAG, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i64, i64* @ESP_FAIL, align 8
  store i64 %85, i64* %3, align 8
  br label %185

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %60, %55
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* @session_id, align 4
  %89 = load i32, i32* @TAG, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @ESP_LOGD(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sle i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @TAG, align 4
  %99 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i64, i64* @ESP_FAIL, align 8
  store i64 %100, i64* %3, align 8
  br label %185

101:                                              ; preds = %92
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MAX_REQ_BODY_LEN, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* @TAG, align 4
  %109 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i64, i64* @ESP_FAIL, align 8
  store i64 %110, i64* %3, align 8
  br label %185

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @malloc(i64 %115)
  %117 = inttoptr i64 %116 to i8*
  store i8* %117, i8** %5, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @TAG, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %126, i64* %3, align 8
  br label %185

127:                                              ; preds = %112
  store i64 0, i64* %9, align 8
  br label %128

128:                                              ; preds = %149, %127
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ult i64 %129, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %128
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %9, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = sub i64 %141, %142
  %144 = call i64 @httpd_req_recv(%struct.TYPE_10__* %135, i8* %138, i64 %143)
  store i64 %144, i64* %3, align 8
  %145 = load i64, i64* %3, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %134
  %148 = load i64, i64* @ESP_FAIL, align 8
  store i64 %148, i64* %3, align 8
  br label %185

149:                                              ; preds = %134
  %150 = load i64, i64* %3, align 8
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %9, align 8
  br label %128

153:                                              ; preds = %128
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8* %157, i8** %6, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pc_httpd, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load i32, i32* @session_id, align 4
  %161 = load i8*, i8** %5, align 8
  %162 = load i64, i64* %9, align 8
  %163 = call i64 @protocomm_req_handle(%struct.TYPE_11__* %158, i8* %159, i32 %160, i8* %161, i64 %162, i8** %4, i32* %7)
  store i64 %163, i64* %3, align 8
  %164 = load i64, i64* %3, align 8
  %165 = load i64, i64* @ESP_OK, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %153
  %168 = load i32, i32* @TAG, align 4
  %169 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %170 = load i64, i64* @ESP_FAIL, align 8
  store i64 %170, i64* %3, align 8
  br label %185

171:                                              ; preds = %153
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %173 = load i8*, i8** %4, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i64 @httpd_resp_send(%struct.TYPE_10__* %172, i8* %173, i32 %174)
  store i64 %175, i64* %3, align 8
  %176 = load i64, i64* %3, align 8
  %177 = load i64, i64* @ESP_OK, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i32, i32* @TAG, align 4
  %181 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %182 = load i64, i64* @ESP_FAIL, align 8
  store i64 %182, i64* %3, align 8
  br label %185

183:                                              ; preds = %171
  %184 = load i64, i64* @ESP_OK, align 8
  store i64 %184, i64* %3, align 8
  br label %185

185:                                              ; preds = %183, %179, %167, %147, %120, %107, %97, %81
  %186 = load i8*, i8** %5, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 @free(i8* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load i8*, i8** %4, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i8*, i8** %4, align 8
  %196 = call i32 @free(i8* %195)
  br label %197

197:                                              ; preds = %194, %191
  %198 = load i64, i64* %3, align 8
  ret i64 %198
}

declare dso_local i32 @httpd_req_to_sockfd(%struct.TYPE_10__*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @httpd_req_recv(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i64 @protocomm_req_handle(%struct.TYPE_11__*, i8*, i32, i8*, i64, i8**, i32*) #1

declare dso_local i64 @httpd_resp_send(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
