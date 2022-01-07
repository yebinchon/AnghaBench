; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_parse_connect_to_host_port.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_parse_connect_to_host_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Use of IPv6 in *_CONNECT_TO without IPv6 support built-in!\00", align 1
@CURLE_NOT_BUILT_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"No valid port number in connect to host string (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i8*, i8**, i32*)* @parse_connect_to_host_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_connect_to_host_port(%struct.Curl_easy* %0, i8* %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %14, align 4
  %17 = load i8**, i8*** %8, align 8
  store i8* null, i8** %17, align 8
  %18 = load i32*, i32** %9, align 8
  store i32 -1, i32* %18, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21, %4
  %26 = load i32, i32* @CURLE_OK, align 4
  store i32 %26, i32* %5, align 4
  br label %105

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %33, i32* %5, align 4
  br label %105

34:                                               ; preds = %27
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 91
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %43 = call i32 @failf(%struct.Curl_easy* %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* @CURLE_NOT_BUILT_IN, align 4
  store i32 %46, i32* %5, align 4
  br label %105

47:                                               ; preds = %34
  %48 = load i8*, i8** %13, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 58)
  store i8* %49, i8** %12, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %84

52:                                               ; preds = %47
  store i8* null, i8** %15, align 8
  %53 = load i8*, i8** %12, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %52
  %60 = load i8*, i8** %12, align 8
  %61 = call i64 @strtol(i8* %60, i8** %15, i32 10)
  store i64 %61, i64* %16, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %15, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64, %59
  %70 = load i64, i64* %16, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %16, align 8
  %74 = icmp sgt i64 %73, 65535
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %69, %64
  %76 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %76, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  store i8* null, i8** %11, align 8
  store i32 -1, i32* %14, align 4
  br label %82

79:                                               ; preds = %72
  %80 = load i64, i64* %16, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %52
  br label %84

84:                                               ; preds = %83, %47
  %85 = load i8*, i8** %11, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i8*, i8** %11, align 8
  %89 = call i8* @strdup(i8* %88)
  %90 = load i8**, i8*** %8, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i8**, i8*** %8, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %87
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %97, i32* %5, align 4
  br label %105

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i32, i32* %14, align 4
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i32, i32* @CURLE_OK, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %94, %41, %32, %25
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
