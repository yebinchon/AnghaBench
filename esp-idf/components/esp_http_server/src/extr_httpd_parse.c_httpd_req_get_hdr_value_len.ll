; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_get_hdr_value_len.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_get_hdr_value_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_req_get_hdr_value_len(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.httpd_req_aux*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i64 0, i64* %3, align 8
  br label %96

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @httpd_valid_req(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %96

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %23, align 8
  store %struct.httpd_req_aux* %24, %struct.httpd_req_aux** %6, align 8
  %25 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %26 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %29 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %73, %21
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %95

35:                                               ; preds = %31
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 58)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %95

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %57, label %50

50:                                               ; preds = %41
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strlen(i8* %53)
  %55 = call i64 @strncasecmp(i8* %51, i8* %52, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %50, %41
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 0)
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %69, %60
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  br label %64

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %57
  br label %31

74:                                               ; preds = %50
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %89, %74
  %78 = load i8*, i8** %9, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 32
  br label %87

87:                                               ; preds = %82, %77
  %88 = phi i1 [ false, %77 ], [ %86, %82 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  br label %77

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @strlen(i8* %93)
  store i64 %94, i64* %3, align 8
  br label %96

95:                                               ; preds = %40, %31
  store i64 0, i64* %3, align 8
  br label %96

96:                                               ; preds = %95, %92, %20, %15
  %97 = load i64, i64* %3, align 8
  ret i64 %97
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_4__*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
