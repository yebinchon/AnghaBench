; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_delete_invalid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_delete_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Closing invalid socket %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpd_sess_delete_invalid(%struct.httpd_data* %0) #0 {
  %2 = alloca %struct.httpd_data*, align 8
  %3 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %55, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %7 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %4
  %12 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %13 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %54

21:                                               ; preds = %11
  %22 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %23 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fd_is_valid(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @TAG, align 4
  %34 = call i32 @LOG_FMT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %36 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ESP_LOGW(i32 %33, i32 %34, i32 %42)
  %44 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %45 = load %struct.httpd_data*, %struct.httpd_data** %2, align 8
  %46 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @httpd_sess_delete(%struct.httpd_data* %44, i32 %52)
  br label %54

54:                                               ; preds = %32, %21, %11
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %4

58:                                               ; preds = %4
  ret void
}

declare dso_local i32 @fd_is_valid(i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @httpd_sess_delete(%struct.httpd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
