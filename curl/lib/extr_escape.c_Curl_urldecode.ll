; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_escape.c_Curl_urldecode.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_escape.c_Curl_urldecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_urldecode(%struct.Curl_easy* %0, i8* %1, i64 %2, i8** %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca [3 x i8], align 1
  %21 = alloca i8*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* %10, align 8
  br label %29

26:                                               ; preds = %6
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @strlen(i8* %27)
  br label %29

29:                                               ; preds = %26, %24
  %30 = phi i64 [ %25, %24 ], [ %28, %26 ]
  %31 = add i64 %30, 1
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i8* @malloc(i64 %32)
  store i8* %33, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %34 = load i32, i32* @CURLE_OK, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %38, i32* %7, align 4
  br label %128

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %107, %39
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %14, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %115

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %19, align 1
  %47 = load i8, i8* %19, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 37, %48
  br i1 %49, label %50, label %96

50:                                               ; preds = %44
  %51 = load i64, i64* %14, align 8
  %52 = icmp ugt i64 %51, 2
  br i1 %52, label %53, label %96

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @ISXDIGIT(i8 signext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %53
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @ISXDIGIT(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %59
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  store i8 %68, i8* %69, align 1
  %70 = load i8*, i8** %9, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  %72 = load i8, i8* %71, align 1
  %73 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 1
  store i8 %72, i8* %73, align 1
  %74 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 2
  store i8 0, i8* %74, align 1
  %75 = getelementptr inbounds [3 x i8], [3 x i8]* %20, i64 0, i64 0
  %76 = call i64 @strtoul(i8* %75, i8** %21, i32 16)
  store i64 %76, i64* %17, align 8
  %77 = load i64, i64* %17, align 8
  %78 = call zeroext i8 @curlx_ultouc(i64 %77)
  store i8 %78, i8* %19, align 1
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %80 = icmp ne %struct.Curl_easy* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %65
  %82 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %83 = call i32 @Curl_convert_from_network(%struct.Curl_easy* %82, i8* %19, i32 1)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %7, align 4
  br label %128

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  store i8* %93, i8** %9, align 8
  %94 = load i64, i64* %14, align 8
  %95 = sub i64 %94, 2
  store i64 %95, i64* %14, align 8
  br label %96

96:                                               ; preds = %91, %59, %53, %50, %44
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i8, i8* %19, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp slt i32 %101, 32
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %15, align 8
  %105 = call i32 @free(i8* %104)
  %106 = load i32, i32* @CURLE_URL_MALFORMAT, align 4
  store i32 %106, i32* %7, align 4
  br label %128

107:                                              ; preds = %99, %96
  %108 = load i8, i8* %19, align 1
  %109 = load i8*, i8** %15, align 8
  %110 = load i64, i64* %16, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %16, align 8
  %112 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8 %108, i8* %112, align 1
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  br label %40

115:                                              ; preds = %40
  %116 = load i8*, i8** %15, align 8
  %117 = load i64, i64* %16, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8 0, i8* %118, align 1
  %119 = load i64*, i64** %12, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i64, i64* %16, align 8
  %123 = load i64*, i64** %12, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %115
  %125 = load i8*, i8** %15, align 8
  %126 = load i8**, i8*** %11, align 8
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* @CURLE_OK, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %124, %103, %86, %37
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @ISXDIGIT(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local zeroext i8 @curlx_ultouc(i64) #1

declare dso_local i32 @Curl_convert_from_network(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
