; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_cleartext.c_Curl_auth_create_plain_message.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_cleartext.c_Curl_auth_create_plain_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@SIZE_T_MAX = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_create_plain_message(%struct.Curl_easy* %0, i8* %1, i8* %2, i8* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load i64*, i64** %13, align 8
  store i64 0, i64* %20, align 8
  %21 = load i8**, i8*** %12, align 8
  store i8* null, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  br label %28

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = call i64 @strlen(i8* %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i64 [ 0, %24 ], [ %27, %25 ]
  store i64 %29, i64* %16, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %17, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %18, align 8
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = add i64 %34, %35
  %37 = load i32, i32* @SIZE_T_MAX, align 4
  %38 = sdiv i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %28
  %42 = load i64, i64* %18, align 8
  %43 = load i32, i32* @SIZE_T_MAX, align 4
  %44 = sdiv i32 %43, 2
  %45 = sub nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41, %28
  %49 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %49, i32* %7, align 4
  br label %106

50:                                               ; preds = %41
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %17, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %18, align 8
  %55 = add i64 %53, %54
  %56 = add i64 %55, 2
  store i64 %56, i64* %19, align 8
  %57 = load i64, i64* %19, align 8
  %58 = call i8* @malloc(i64 %57)
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %62, i32* %7, align 4
  br label %106

63:                                               ; preds = %50
  %64 = load i64, i64* %16, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i8*, i8** %15, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %16, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i8*, i8** %15, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %15, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8*, i8** %10, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @memcpy(i8* %78, i8* %79, i64 %80)
  %82 = load i8*, i8** %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %83, %84
  %86 = add i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %82, i64 %86
  store i8 0, i8* %87, align 1
  %88 = load i8*, i8** %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %18, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %98 = load i8*, i8** %15, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i8**, i8*** %12, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = call i32 @Curl_base64_encode(%struct.Curl_easy* %97, i8* %98, i64 %99, i8** %100, i64* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %71, %61, %48
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @Curl_base64_encode(%struct.Curl_easy*, i8*, i64, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
