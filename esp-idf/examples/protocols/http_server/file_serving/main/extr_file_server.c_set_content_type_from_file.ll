; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_set_content_type_from_file.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_set_content_type_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".ico\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"image/x-icon\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @set_content_type_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_content_type_from_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @IS_FILE_EXT(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @httpd_resp_set_type(i32* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 %11, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @IS_FILE_EXT(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @httpd_resp_set_type(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @IS_FILE_EXT(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @httpd_resp_set_type(i32* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %39

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @IS_FILE_EXT(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @httpd_resp_set_type(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @httpd_resp_set_type(i32* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %30, %23, %16, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @IS_FILE_EXT(i8*, i8*) #1

declare dso_local i32 @httpd_resp_set_type(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
