; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_set_content_type_from_file.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/restful_server/main/extr_rest_server.c_set_content_type_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c".js\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"application/javascript\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".css\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ico\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"image/x-icon\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".svg\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @set_content_type_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_content_type_from_file(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @CHECK_FILE_EXTENSION(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %40

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @CHECK_FILE_EXTENSION(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %39

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @CHECK_FILE_EXTENSION(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %38

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @CHECK_FILE_EXTENSION(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %37

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @CHECK_FILE_EXTENSION(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %36

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @CHECK_FILE_EXTENSION(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %5, align 8
  br label %35

35:                                               ; preds = %34, %30
  br label %36

36:                                               ; preds = %35, %29
  br label %37

37:                                               ; preds = %36, %24
  br label %38

38:                                               ; preds = %37, %19
  br label %39

39:                                               ; preds = %38, %14
  br label %40

40:                                               ; preds = %39, %9
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @httpd_resp_set_type(i32* %41, i8* %42)
  ret i32 %43
}

declare dso_local i64 @CHECK_FILE_EXTENSION(i8*, i8*) #1

declare dso_local i32 @httpd_resp_set_type(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
