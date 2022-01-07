; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_set_ctx.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_sess.c_httpd_sess_set_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_db = type { i8*, i8* }
%struct.httpd_data = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { %struct.sock_db* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @httpd_sess_set_ctx(i64 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sock_db*, align 8
  %10 = alloca %struct.httpd_data*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.sock_db* @httpd_sess_get(i64 %11, i32 %12)
  store %struct.sock_db* %13, %struct.sock_db** %9, align 8
  %14 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %15 = icmp eq %struct.sock_db* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %83

17:                                               ; preds = %4
  %18 = load i64, i64* %5, align 8
  %19 = inttoptr i64 %18 to %struct.httpd_data*
  store %struct.httpd_data* %19, %struct.httpd_data** %10, align 8
  %20 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %21 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.sock_db*, %struct.sock_db** %22, align 8
  %24 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %25 = icmp eq %struct.sock_db* %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %17
  %27 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %28 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %35 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %38 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %36, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %44 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %48 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @httpd_sess_free_ctx(i8* %46, i8* %50)
  br label %52

52:                                               ; preds = %42, %33
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %55 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %57

57:                                               ; preds = %52, %26
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.httpd_data*, %struct.httpd_data** %10, align 8
  %60 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  br label %83

62:                                               ; preds = %17
  %63 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %64 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = icmp ne i8* %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %70 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %73 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @httpd_sess_free_ctx(i8* %71, i8* %74)
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %78 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %62
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.sock_db*, %struct.sock_db** %9, align 8
  %82 = getelementptr inbounds %struct.sock_db, %struct.sock_db* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %57, %16
  ret void
}

declare dso_local %struct.sock_db* @httpd_sess_get(i64, i32) #1

declare dso_local i32 @httpd_sess_free_ctx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
