; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_get.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_db = type { i32 }
%struct.httpd_data = type { %struct.sock_db*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sock_db* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock_db* @httpd_sess_get(%struct.httpd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sock_db*, align 8
  %4 = alloca %struct.httpd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %8 = icmp eq %struct.httpd_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.sock_db* null, %struct.sock_db** %3, align 8
  br label %61

10:                                               ; preds = %2
  %11 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %12 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.sock_db*, %struct.sock_db** %13, align 8
  %15 = icmp ne %struct.sock_db* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %18 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sock_db*, %struct.sock_db** %19, align 8
  %21 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %27 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.sock_db*, %struct.sock_db** %28, align 8
  store %struct.sock_db* %29, %struct.sock_db** %3, align 8
  br label %61

30:                                               ; preds = %16, %10
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %34 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %31
  %39 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %40 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %39, i32 0, i32 0
  %41 = load %struct.sock_db*, %struct.sock_db** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %41, i64 %43
  %45 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %38
  %50 = load %struct.httpd_data*, %struct.httpd_data** %4, align 8
  %51 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %50, i32 0, i32 0
  %52 = load %struct.sock_db*, %struct.sock_db** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %52, i64 %54
  store %struct.sock_db* %55, %struct.sock_db** %3, align 8
  br label %61

56:                                               ; preds = %38
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %31

60:                                               ; preds = %31
  store %struct.sock_db* null, %struct.sock_db** %3, align 8
  br label %61

61:                                               ; preds = %60, %49, %25, %9
  %62 = load %struct.sock_db*, %struct.sock_db** %3, align 8
  ret %struct.sock_db* %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
