; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_cleartext.c_Curl_auth_create_login_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_cleartext.c_Curl_auth_create_login_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_create_login_message(%struct.Curl_easy* %0, i8* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i8**, i8*** %8, align 8
  store i8* %16, i8** %17, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64*, i64** %9, align 8
  store i64 1, i64* %22, align 8
  %23 = load i32, i32* @CURLE_OK, align 4
  store i32 %23, i32* %5, align 4
  br label %34

24:                                               ; preds = %15
  %25 = load i64*, i64** %9, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %26, i32* %5, align 4
  br label %34

27:                                               ; preds = %4
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i8**, i8*** %8, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = call i32 @Curl_base64_encode(%struct.Curl_easy* %28, i8* %29, i64 %30, i8** %31, i64* %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %27, %24, %21
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @Curl_base64_encode(%struct.Curl_easy*, i8*, i64, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
