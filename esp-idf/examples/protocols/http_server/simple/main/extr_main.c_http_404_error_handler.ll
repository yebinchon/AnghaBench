; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_http_404_error_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/simple/main/extr_main.c_http_404_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"/hello\00", align 1
@HTTPD_404_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"/hello URI is not available\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"/echo\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"/echo URI is not available\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Some 404 error message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_404_error_handler(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %14 = call i32 @httpd_resp_send_err(%struct.TYPE_4__* %12, i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @ESP_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %25 = call i32 @httpd_resp_send_err(%struct.TYPE_4__* %23, i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %26 = load i32, i32* @ESP_FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = load i32, i32* @HTTPD_404_NOT_FOUND, align 4
  %31 = call i32 @httpd_resp_send_err(%struct.TYPE_4__* %29, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i32, i32* @ESP_FAIL, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %22, %11
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @httpd_resp_send_err(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
