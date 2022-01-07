; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_oauth2.c_Curl_auth_create_xoauth_bearer_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_oauth2.c_Curl_auth_create_xoauth_bearer_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"user=%s\01auth=Bearer %s\01\01\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_create_xoauth_bearer_message(%struct.Curl_easy* %0, i8* %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i32, i32* @CURLE_OK, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i8* @aprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %21, i32* %6, align 4
  br label %33

22:                                               ; preds = %5
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i8**, i8*** %10, align 8
  %28 = load i64*, i64** %11, align 8
  %29 = call i32 @Curl_base64_encode(%struct.Curl_easy* %23, i8* %24, i32 %26, i8** %27, i64* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %22, %20
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i8* @aprintf(i8*, i8*, i8*) #1

declare dso_local i32 @Curl_base64_encode(%struct.Curl_easy*, i8*, i32, i8**, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
