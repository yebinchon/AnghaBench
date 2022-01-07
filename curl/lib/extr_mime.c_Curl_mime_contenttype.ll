; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_contenttype.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_Curl_mime_contenttype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ContentType = type { i8*, i8* }

@Curl_mime_contenttype.ctts = internal constant [10 x %struct.ContentType] [%struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.ContentType { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [5 x i8] c".gif\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".jpg\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"image/jpeg\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c".jpeg\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".png\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".svg\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"image/svg+xml\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".htm\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c".html\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".pdf\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"application/pdf\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c".xml\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"application/xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_mime_contenttype(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %49, %10
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %18, 10
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [10 x %struct.ContentType], [10 x %struct.ContentType]* @Curl_mime_contenttype.ctts, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.ContentType, %struct.ContentType* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 16
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %20
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [10 x %struct.ContentType], [10 x %struct.ContentType]* @Curl_mime_contenttype.ctts, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.ContentType, %struct.ContentType* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 16
  %40 = call i64 @strcasecompare(i8* %34, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [10 x %struct.ContentType], [10 x %struct.ContentType]* @Curl_mime_contenttype.ctts, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.ContentType, %struct.ContentType* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %2, align 8
  br label %54

48:                                               ; preds = %30, %20
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %16

52:                                               ; preds = %16
  br label %53

53:                                               ; preds = %52, %1
  store i8* null, i8** %2, align 8
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcasecompare(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
