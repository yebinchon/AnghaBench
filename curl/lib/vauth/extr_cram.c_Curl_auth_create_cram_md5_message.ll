; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_cram.c_Curl_auth_create_cram_md5_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_cram.c_Curl_auth_create_cram_md5_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@MD5_DIGEST_LEN = common dso_local global i32 0, align 4
@Curl_HMAC_MD5 = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"%s %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_create_cram_md5_message(%struct.Curl_easy* %0, i8* %1, i8* %2, i8* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = load i32, i32* @CURLE_OK, align 4
  store i32 %21, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %22 = load i32, i32* @MD5_DIGEST_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %17, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %18, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = load i8*, i8** %9, align 8
  %30 = call i64 @strlen(i8* %29)
  store i64 %30, i64* %15, align 8
  br label %31

31:                                               ; preds = %28, %6
  %32 = load i32, i32* @Curl_HMAC_MD5, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = call i32 @curlx_uztoui(i64 %35)
  %37 = call i32* @Curl_HMAC_init(i32 %32, i8* %33, i32 %36)
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %41, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %101

42:                                               ; preds = %31
  %43 = load i64, i64* %15, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32*, i32** %16, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32 @curlx_uztoui(i64 %48)
  %50 = call i32 @Curl_HMAC_update(i32* %46, i8* %47, i32 %49)
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @Curl_HMAC_final(i32* %52, i8* %25)
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %25, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = getelementptr inbounds i8, i8* %25, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = getelementptr inbounds i8, i8* %25, i64 2
  %60 = load i8, i8* %59, align 2
  %61 = getelementptr inbounds i8, i8* %25, i64 3
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds i8, i8* %25, i64 4
  %64 = load i8, i8* %63, align 4
  %65 = getelementptr inbounds i8, i8* %25, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = getelementptr inbounds i8, i8* %25, i64 6
  %68 = load i8, i8* %67, align 2
  %69 = getelementptr inbounds i8, i8* %25, i64 7
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds i8, i8* %25, i64 8
  %72 = load i8, i8* %71, align 8
  %73 = getelementptr inbounds i8, i8* %25, i64 9
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds i8, i8* %25, i64 10
  %76 = load i8, i8* %75, align 2
  %77 = getelementptr inbounds i8, i8* %25, i64 11
  %78 = load i8, i8* %77, align 1
  %79 = getelementptr inbounds i8, i8* %25, i64 12
  %80 = load i8, i8* %79, align 4
  %81 = getelementptr inbounds i8, i8* %25, i64 13
  %82 = load i8, i8* %81, align 1
  %83 = getelementptr inbounds i8, i8* %25, i64 14
  %84 = load i8, i8* %83, align 2
  %85 = getelementptr inbounds i8, i8* %25, i64 15
  %86 = load i8, i8* %85, align 1
  %87 = call i8* @aprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %54, i8 zeroext %56, i8 zeroext %58, i8 zeroext %60, i8 zeroext %62, i8 zeroext %64, i8 zeroext %66, i8 zeroext %68, i8 zeroext %70, i8 zeroext %72, i8 zeroext %74, i8 zeroext %76, i8 zeroext %78, i8 zeroext %80, i8 zeroext %82, i8 zeroext %84, i8 zeroext %86)
  store i8* %87, i8** %19, align 8
  %88 = load i8*, i8** %19, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %51
  %91 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %91, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %101

92:                                               ; preds = %51
  %93 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = load i8**, i8*** %12, align 8
  %96 = load i64*, i64** %13, align 8
  %97 = call i32 @Curl_base64_encode(%struct.Curl_easy* %93, i8* %94, i32 0, i8** %95, i64* %96)
  store i32 %97, i32* %14, align 4
  %98 = load i8*, i8** %19, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %101

101:                                              ; preds = %92, %90, %40
  %102 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32* @Curl_HMAC_init(i32, i8*, i32) #2

declare dso_local i32 @curlx_uztoui(i64) #2

declare dso_local i32 @Curl_HMAC_update(i32*, i8*, i32) #2

declare dso_local i32 @Curl_HMAC_final(i32*, i8*) #2

declare dso_local i8* @aprintf(i8*, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #2

declare dso_local i32 @Curl_base64_encode(%struct.Curl_easy*, i8*, i32, i8**, i64*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
