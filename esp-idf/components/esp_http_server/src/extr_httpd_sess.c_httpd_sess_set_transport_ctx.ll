; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_set_transport_ctx.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_set_transport_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_db = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpd_sess_set_transport_ctx(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock_db*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.sock_db* @httpd_sess_get(i32 %10, i32 %11)
  store %struct.sock_db* %12, %struct.sock_db** %9, align 8
  %13 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %14 = icmp eq %struct.sock_db* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %37

16:                                               ; preds = %4
  %17 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %18 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %24 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %27 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @httpd_sess_free_ctx(i8* %25, i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %32 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %22, %16
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %36 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %15
  ret void
}

declare dso_local %struct.sock_db* @httpd_sess_get(i32, i32) #1

declare dso_local i32 @httpd_sess_free_ctx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
