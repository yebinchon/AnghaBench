; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_base64.c_Curl_base64_decode.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_base64.c_Curl_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_BAD_CONTENT_ENCODING = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_base64_decode(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %13, align 8
  %17 = load i8**, i8*** %6, align 8
  store i8* null, i8** %17, align 8
  %18 = load i64*, i64** %7, align 8
  store i64 0, i64* %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strlen(i8* %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = urem i64 %24, 4
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %3
  %28 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %28, i32* %4, align 4
  br label %124

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 61
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %37, %30
  %45 = phi i1 [ false, %30 ], [ %43, %37 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %30

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 61
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 61
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %69

69:                                               ; preds = %66, %56
  br label %70

70:                                               ; preds = %69, %49
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %77, i32* %4, align 4
  br label %124

78:                                               ; preds = %70
  %79 = load i64, i64* %8, align 8
  %80 = udiv i64 %79, 4
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = mul i64 %81, 3
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 %82, %83
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, 1
  %87 = call i8* @malloc(i64 %86)
  store i8* %87, i8** %15, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %78
  %91 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %91, i32* %4, align 4
  br label %124

92:                                               ; preds = %78
  %93 = load i8*, i8** %15, align 8
  store i8* %93, i8** %14, align 8
  store i64 0, i64* %11, align 8
  br label %94

94:                                               ; preds = %114, %92
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @decodeQuantum(i8* %99, i8* %100)
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* @CURLE_BAD_CONTENT_ENCODING, align 4
  store i32 %107, i32* %4, align 4
  br label %124

108:                                              ; preds = %98
  %109 = load i64, i64* %16, align 8
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 %109
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  store i8* %113, i8** %5, align 8
  br label %114

114:                                              ; preds = %108
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %94

117:                                              ; preds = %94
  %118 = load i8*, i8** %14, align 8
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %15, align 8
  %120 = load i8**, i8*** %6, align 8
  store i8* %119, i8** %120, align 8
  %121 = load i64, i64* %13, align 8
  %122 = load i64*, i64** %7, align 8
  store i64 %121, i64* %122, align 8
  %123 = load i32, i32* @CURLE_OK, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %117, %104, %90, %76, %27
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @decodeQuantum(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
