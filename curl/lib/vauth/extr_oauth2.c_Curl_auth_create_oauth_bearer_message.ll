; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_oauth2.c_Curl_auth_create_oauth_bearer_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_oauth2.c_Curl_auth_create_oauth_bearer_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"n,a=%s,\01host=%s\01auth=Bearer %s\01\01\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"n,a=%s,\01host=%s\01port=%ld\01auth=Bearer %s\01\01\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_create_oauth_bearer_message(%struct.Curl_easy* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load i32, i32* @CURLE_OK, align 4
  store i32 %18, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 80
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %7
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = call i8* (i8*, i8*, i8*, ...) @aprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i8* %27)
  store i8* %28, i8** %17, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i8* (i8*, i8*, i8*, ...) @aprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31, i64 %32, i8* %33)
  store i8* %34, i8** %17, align 8
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i8*, i8** %17, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %35
  %41 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = load i8**, i8*** %14, align 8
  %46 = load i64*, i64** %15, align 8
  %47 = call i32 @Curl_base64_encode(%struct.Curl_easy* %41, i8* %42, i32 %44, i8** %45, i64* %46)
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @free(i8* %48)
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %40, %38
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i8* @aprintf(i8*, i8*, i8*, ...) #1

declare dso_local i32 @Curl_base64_encode(%struct.Curl_easy*, i8*, i32, i8**, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
