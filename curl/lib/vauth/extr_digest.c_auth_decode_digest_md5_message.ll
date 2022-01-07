; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_auth_decode_digest_md5_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_auth_decode_digest_md5_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_BAD_CONTENT_ENCODING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"nonce=\22\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"realm=\22\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"algorithm=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"qop=\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64, i8*, i64, i8*, i64)* @auth_decode_digest_md5_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @auth_decode_digest_md5_message(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64 %2, i64* %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %24 = load i64, i64* @CURLE_OK, align 8
  store i64 %24, i64* %20, align 8
  store i8* null, i8** %21, align 8
  store i64 0, i64* %22, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %23, align 8
  %27 = load i64, i64* %23, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %9
  %30 = load i8*, i8** %11, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 61
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @Curl_base64_decode(i8* %35, i8** %21, i64* %22)
  store i64 %36, i64* %20, align 8
  %37 = load i64, i64* %20, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %20, align 8
  store i64 %40, i64* %10, align 8
  br label %90

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %29, %9
  %43 = load i8*, i8** %21, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @CURLE_BAD_CONTENT_ENCODING, align 8
  store i64 %46, i64* %10, align 8
  br label %90

47:                                               ; preds = %42
  %48 = load i8*, i8** %21, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @auth_digest_get_key_value(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %49, i64 %50, i8 signext 34)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %21, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i64, i64* @CURLE_BAD_CONTENT_ENCODING, align 8
  store i64 %56, i64* %10, align 8
  br label %90

57:                                               ; preds = %47
  %58 = load i8*, i8** %21, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @auth_digest_get_key_value(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %59, i64 %60, i8 signext 34)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @strcpy(i8* %64, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i8*, i8** %21, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = call i32 @auth_digest_get_key_value(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %68, i64 %69, i8 signext 44)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i8*, i8** %21, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i64, i64* @CURLE_BAD_CONTENT_ENCODING, align 8
  store i64 %75, i64* %10, align 8
  br label %90

76:                                               ; preds = %66
  %77 = load i8*, i8** %21, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load i64, i64* %19, align 8
  %80 = call i32 @auth_digest_get_key_value(i8* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %78, i64 %79, i8 signext 34)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** %21, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i64, i64* @CURLE_BAD_CONTENT_ENCODING, align 8
  store i64 %85, i64* %10, align 8
  br label %90

86:                                               ; preds = %76
  %87 = load i8*, i8** %21, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i64, i64* @CURLE_OK, align 8
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %86, %82, %72, %53, %45, %39
  %91 = load i64, i64* %10, align 8
  ret i64 %91
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @Curl_base64_decode(i8*, i8**, i64*) #1

declare dso_local i32 @auth_digest_get_key_value(i8*, i8*, i8*, i64, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
