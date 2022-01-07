; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_close.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_db = type { i64, i32, i64 }
%struct.httpd_data = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Skipping session close for %d as it seems to be a race condition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @httpd_sess_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @httpd_sess_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sock_db*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.httpd_data*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.sock_db*
  store %struct.sock_db* %7, %struct.sock_db** %3, align 8
  %8 = load %struct.sock_db*, %struct.sock_db** %3, align 8
  %9 = icmp ne %struct.sock_db* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.sock_db*, %struct.sock_db** %3, align 8
  %12 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @TAG, align 4
  %17 = load %struct.sock_db*, %struct.sock_db** %3, align 8
  %18 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ESP_LOGD(i32 %16, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %34

21:                                               ; preds = %10
  %22 = load %struct.sock_db*, %struct.sock_db** %3, align 8
  %23 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %4, align 4
  %25 = load %struct.sock_db*, %struct.sock_db** %3, align 8
  %26 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.httpd_data*
  store %struct.httpd_data* %28, %struct.httpd_data** %5, align 8
  %29 = load %struct.httpd_data*, %struct.httpd_data** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @httpd_sess_delete(%struct.httpd_data* %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %15, %21, %1
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @httpd_sess_delete(%struct.httpd_data*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
