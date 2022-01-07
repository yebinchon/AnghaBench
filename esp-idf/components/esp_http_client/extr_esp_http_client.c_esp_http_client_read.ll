; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_client/extr_esp_http_client.c_esp_http_client_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i8*, i32 }

@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"is_data_remain=%d, is_chunked=%d, content_length=%d\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"need_read=%d, byte_to_read=%d, rlen=%d, ridx=%d\00", align 1
@ESP_LOG_WARN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i64 0, align 8
@ESP_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"esp_transport_read returned:%d and errno:%d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_http_client_read(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load i32, i32* @ESP_FAIL, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @memcpy(i8* %40, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %39, %3
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %182, %57
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i1 [ false, %61 ], [ %66, %64 ]
  br i1 %68, label %69, label %214

69:                                               ; preds = %67
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %13, align 4
  br label %96

83:                                               ; preds = %69
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %88, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %83, %76
  %97 = load i32, i32* @TAG, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, i32, i32, i32, ...) @ESP_LOGD(i32 %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %103, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %96
  br label %214

113:                                              ; preds = %96
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %113
  store i64 0, i64* @errno, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @esp_transport_read(i32 %127, i32 %130, i32 %131, i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* @TAG, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 (i32, i8*, i32, i32, i32, ...) @ESP_LOGD(i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = icmp sle i32 %142, 0
  br i1 %143, label %144, label %182

144:                                              ; preds = %124
  %145 = load i64, i64* @errno, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %144
  %148 = load i32, i32* @ESP_LOG_WARN, align 4
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %174

151:                                              ; preds = %147
  %152 = load i64, i64* @errno, align 8
  %153 = load i64, i64* @ENOTCONN, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %151
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %155
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @http_parser_execute(i32 %165, i32 %168, i32 %171, i32 0)
  %173 = load i32, i32* @ESP_LOG_DEBUG, align 4
  store i32 %173, i32* %15, align 4
  br label %174

174:                                              ; preds = %162, %155, %151, %147
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @TAG, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i64, i64* @errno, align 8
  %179 = call i32 @ESP_LOG_LEVEL(i32 %175, i32 %176, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %177, i64 %178)
  br label %180

180:                                              ; preds = %174, %144
  %181 = load i32, i32* %10, align 4
  store i32 %181, i32* %4, align 4
  br label %216

182:                                              ; preds = %124
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @http_parser_execute(i32 %191, i32 %194, i32 %197, i32 %198)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %10, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sub nsw i32 %208, %207
  store i32 %209, i32* %12, align 4
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  store i8* null, i8** %213, align 8
  br label %61

214:                                              ; preds = %112, %67
  %215 = load i32, i32* %10, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %214, %180
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @esp_transport_read(i32, i32, i32, i32) #1

declare dso_local i32 @http_parser_execute(i32, i32, i32, i32) #1

declare dso_local i32 @ESP_LOG_LEVEL(i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
