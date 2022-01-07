; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_uri.c_httpd_register_uri_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_uri.c_httpd_register_uri_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32 }
%struct.httpd_data = type { %struct.TYPE_8__**, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"handler %s with method %d already registered\00", align 1
@ESP_ERR_HTTPD_HANDLER_EXISTS = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_ALLOC_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"[%d] installed %s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"[%d] exists %s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"no slots left for registering handler\00", align 1
@ESP_ERR_HTTPD_HANDLERS_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_register_uri_handler(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.httpd_data*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = icmp eq %struct.TYPE_7__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %3, align 4
  br label %174

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.httpd_data*
  store %struct.httpd_data* %17, %struct.httpd_data** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @strlen(i32* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @httpd_find_uri_handler(i32* %18, i32* %21, i32 %25, i32 %28, i32* null)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %15
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @LOG_FMT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %32, i32 %33, i32* %36, i32 %39)
  %41 = load i32, i32* @ESP_ERR_HTTPD_HANDLER_EXISTS, align 4
  store i32 %41, i32* %3, align 4
  br label %174

42:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %166, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %46 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %169

50:                                               ; preds = %43
  %51 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %52 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %53, i64 %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = icmp eq %struct.TYPE_8__* %57, null
  br i1 %58, label %59, label %152

59:                                               ; preds = %50
  %60 = call %struct.TYPE_8__* @malloc(i32 24)
  %61 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %62 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %63, i64 %65
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %66, align 8
  %67 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %68 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %69, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = icmp eq %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @ESP_ERR_HTTPD_ALLOC_MEM, align 4
  store i32 %76, i32* %3, align 4
  br label %174

77:                                               ; preds = %59
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32* @strdup(i32* %80)
  %82 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %83 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32* %81, i32** %89, align 8
  %90 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %91 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i64 %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %77
  %101 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %102 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %103, i64 %105
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = call i32 @free(%struct.TYPE_8__* %107)
  %109 = load i32, i32* @ESP_ERR_HTTPD_ALLOC_MEM, align 4
  store i32 %109, i32* %3, align 4
  br label %174

110:                                              ; preds = %77
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %115 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  store i32 %113, i32* %121, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %126 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %127, i64 %129
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i32 %124, i32* %132, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %137 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %136, i32 0, i32 0
  %138 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %138, i64 %140
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  store i32 %135, i32* %143, align 8
  %144 = load i32, i32* @TAG, align 4
  %145 = call i32 @LOG_FMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @ESP_LOGD(i32 %144, i32 %145, i32 %146, i32* %149)
  %151 = load i32, i32* @ESP_OK, align 4
  store i32 %151, i32* %3, align 4
  br label %174

152:                                              ; preds = %50
  %153 = load i32, i32* @TAG, align 4
  %154 = call i32 @LOG_FMT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.httpd_data*, %struct.httpd_data** %6, align 8
  %157 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %156, i32 0, i32 0
  %158 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %158, i64 %160
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @ESP_LOGD(i32 %153, i32 %154, i32 %155, i32* %164)
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %43

169:                                              ; preds = %43
  %170 = load i32, i32* @TAG, align 4
  %171 = call i32 @LOG_FMT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %172 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %170, i32 %171)
  %173 = load i32, i32* @ESP_ERR_HTTPD_HANDLERS_FULL, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %169, %110, %100, %75, %31, %13
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32* @httpd_find_uri_handler(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @ESP_LOGD(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
