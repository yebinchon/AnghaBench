; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_perform.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_perform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_HTTP_CONNECTING = common dso_local global i32 0, align 4
@ESP_ERR_HTTP_EAGAIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ESP_ERR_HTTP_FETCH_HEADER = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Error response\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Read finish or server requests close\00", align 1
@HTTP_EVENT_ON_FINISH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Close connection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_http_client_perform(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  br label %5

5:                                                ; preds = %199, %1
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = call i32 @esp_http_client_prepare(%struct.TYPE_14__* %11)
  br label %13

13:                                               ; preds = %10, %5
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %197 [
    i32 131, label %17
    i32 132, label %36
    i32 129, label %58
    i32 130, label %77
    i32 128, label %95
  ]

17:                                               ; preds = %13
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = call i32 @esp_http_client_connect(%struct.TYPE_14__* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @ESP_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ESP_ERR_HTTP_CONNECTING, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @ESP_ERR_HTTP_EAGAIN, align 4
  store i32 %32, i32* %2, align 4
  br label %206

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %206

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %13, %35
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @esp_http_client_request_send(%struct.TYPE_14__* %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @ESP_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @ESP_ERR_HTTP_EAGAIN, align 4
  store i32 %54, i32* %2, align 4
  br label %206

55:                                               ; preds = %49, %44
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %206

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %13, %57
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = call i32 @esp_http_client_send_post_data(%struct.TYPE_14__* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @ESP_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32, i32* @errno, align 4
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @ESP_ERR_HTTP_EAGAIN, align 4
  store i32 %73, i32* %2, align 4
  br label %206

74:                                               ; preds = %68, %63
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %206

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %13, %76
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = call i32 @esp_http_client_fetch_headers(%struct.TYPE_14__* %78)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load i32, i32* @errno, align 4
  %88 = load i32, i32* @EAGAIN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* @ESP_ERR_HTTP_EAGAIN, align 4
  store i32 %91, i32* %2, align 4
  br label %206

92:                                               ; preds = %86, %81
  %93 = load i32, i32* @ESP_ERR_HTTP_FETCH_HEADER, align 4
  store i32 %93, i32* %2, align 4
  br label %206

94:                                               ; preds = %77
  br label %95

95:                                               ; preds = %13, %94
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = call i32 @esp_http_check_response(%struct.TYPE_14__* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @ESP_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @TAG, align 4
  %102 = call i32 @ESP_LOGE(i32 %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %2, align 4
  br label %206

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %138, %104
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br label %118

118:                                              ; preds = %112, %105
  %119 = phi i1 [ false, %105 ], [ %117, %112 ]
  br i1 %119, label %120, label %139

120:                                              ; preds = %118
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = call i32 @esp_http_client_get_data(%struct.TYPE_14__* %121)
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %120
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @errno, align 4
  %131 = load i32, i32* @EAGAIN, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @ESP_ERR_HTTP_EAGAIN, align 4
  store i32 %134, i32* %2, align 4
  br label %206

135:                                              ; preds = %129, %124
  %136 = load i32, i32* @TAG, align 4
  %137 = call i32 @ESP_LOGD(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %139

138:                                              ; preds = %120
  br label %105

139:                                              ; preds = %135, %118
  br label %140

140:                                              ; preds = %170, %139
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %140
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = call i32 @esp_http_client_get_data(%struct.TYPE_14__* %153)
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @errno, align 4
  %163 = load i32, i32* @EAGAIN, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @ESP_ERR_HTTP_EAGAIN, align 4
  store i32 %166, i32* %2, align 4
  br label %206

167:                                              ; preds = %161, %156
  %168 = load i32, i32* @TAG, align 4
  %169 = call i32 @ESP_LOGD(i32 %168, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %171

170:                                              ; preds = %152
  br label %140

171:                                              ; preds = %167, %140
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %173 = load i32, i32* @HTTP_EVENT_ON_FINISH, align 4
  %174 = call i32 @http_dispatch_event(%struct.TYPE_14__* %172, i32 %173, i32* null, i32 0)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @http_should_keep_alive(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %171
  %181 = load i32, i32* @TAG, align 4
  %182 = call i32 @ESP_LOGD(i32 %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = call i32 @esp_http_client_close(%struct.TYPE_14__* %183)
  br label %196

185:                                              ; preds = %171
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %188, 132
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  store i32 132, i32* %192, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %190, %185
  br label %196

196:                                              ; preds = %195, %180
  br label %198

197:                                              ; preds = %13
  br label %198

198:                                              ; preds = %197, %196
  br label %199

199:                                              ; preds = %198
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %5, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* @ESP_OK, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %204, %165, %133, %100, %92, %90, %74, %72, %55, %53, %33, %31
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @esp_http_client_prepare(%struct.TYPE_14__*) #1

declare dso_local i32 @esp_http_client_connect(%struct.TYPE_14__*) #1

declare dso_local i32 @esp_http_client_request_send(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @esp_http_client_send_post_data(%struct.TYPE_14__*) #1

declare dso_local i32 @esp_http_client_fetch_headers(%struct.TYPE_14__*) #1

declare dso_local i32 @esp_http_check_response(%struct.TYPE_14__*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_http_client_get_data(%struct.TYPE_14__*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*) #1

declare dso_local i32 @http_dispatch_event(%struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i32 @http_should_keep_alive(i32) #1

declare dso_local i32 @esp_http_client_close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
