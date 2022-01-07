; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_print_http_error.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_print_http_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.SingleRequest }
%struct.SingleRequest = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"The requested URL returned error: %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"The requested URL returned error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Curl_easy*)* @print_http_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_http_error(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.SingleRequest*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %8 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %7, i32 0, i32 0
  store %struct.SingleRequest* %8, %struct.SingleRequest** %3, align 8
  %9 = load %struct.SingleRequest*, %struct.SingleRequest** %3, align 8
  %10 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 32)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  store i8 13, i8* %5, align 1
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i8* @strchr(i8* %27, i8 signext %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  store i8 10, i8* %5, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %5, align 1
  %35 = call i8* @strchr(i8* %33, i8 signext %34)
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  store i8 0, i8* %40, align 1
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @failf(%struct.Curl_easy* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8, i8* %5, align 1
  %45 = load i8*, i8** %6, align 8
  store i8 %44, i8* %45, align 1
  br label %54

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %20, %15
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %50 = load %struct.SingleRequest*, %struct.SingleRequest** %3, align 8
  %51 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @failf(%struct.Curl_easy* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %48, %39
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
