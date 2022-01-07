; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_new.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i64 (%struct.httpd_data.0*, i32)* }
%struct.httpd_data.0 = type opaque

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fd = %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"session already exists with fd = %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@httpd_default_send = common dso_local global i32 0, align 4
@httpd_default_recv = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"open_fn failed for fd = %d\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"unable to launch session for fd = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_sess_new(%struct.httpd_data* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.httpd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.httpd_data* %0, %struct.httpd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @LOG_FMT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ESP_LOGD(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @httpd_sess_get(%struct.httpd_data* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @LOG_FMT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ESP_LOGE(i32 %17, i32 %18, i32 %19)
  %21 = load i64, i64* @ESP_FAIL, align 8
  store i64 %21, i64* %3, align 8
  br label %134

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %125, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %26 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %128

30:                                               ; preds = %23
  %31 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %32 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %124

40:                                               ; preds = %30
  %41 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %42 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = call i32 @memset(%struct.TYPE_4__* %46, i32 0, i32 24)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %50 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %57 = ptrtoint %struct.httpd_data* %56 to i64
  %58 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %59 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i64 %57, i64* %64, align 8
  %65 = load i32, i32* @httpd_default_send, align 4
  %66 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %67 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  store i32 %65, i32* %72, align 8
  %73 = load i32, i32* @httpd_default_recv, align 4
  %74 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %75 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i32 %73, i32* %80, align 4
  %81 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %82 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64 (%struct.httpd_data.0*, i32)*, i64 (%struct.httpd_data.0*, i32)** %83, align 8
  %85 = icmp ne i64 (%struct.httpd_data.0*, i32)* %84, null
  br i1 %85, label %86, label %122

86:                                               ; preds = %40
  %87 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %88 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64 (%struct.httpd_data.0*, i32)*, i64 (%struct.httpd_data.0*, i32)** %89, align 8
  %91 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %92 = bitcast %struct.httpd_data* %91 to %struct.httpd_data.0*
  %93 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %94 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 %90(%struct.httpd_data.0* %92, i32 %100)
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %7, align 8
  %103 = load i64, i64* @ESP_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %86
  %106 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %107 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %108 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @httpd_sess_delete(%struct.httpd_data* %106, i32 %114)
  %116 = load i32, i32* @TAG, align 4
  %117 = call i32 @LOG_FMT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @ESP_LOGD(i32 %116, i32 %117, i32 %118)
  %120 = load i64, i64* %7, align 8
  store i64 %120, i64* %3, align 8
  br label %134

121:                                              ; preds = %86
  br label %122

122:                                              ; preds = %121, %40
  %123 = load i64, i64* @ESP_OK, align 8
  store i64 %123, i64* %3, align 8
  br label %134

124:                                              ; preds = %30
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %23

128:                                              ; preds = %23
  %129 = load i32, i32* @TAG, align 4
  %130 = call i32 @LOG_FMT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @ESP_LOGD(i32 %129, i32 %130, i32 %131)
  %133 = load i64, i64* @ESP_FAIL, align 8
  store i64 %133, i64* %3, align 8
  br label %134

134:                                              ; preds = %128, %122, %105, %16
  %135 = load i64, i64* %3, align 8
  ret i64 %135
}

declare dso_local i32 @ESP_LOGD(i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @httpd_sess_get(%struct.httpd_data*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @httpd_sess_delete(%struct.httpd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
