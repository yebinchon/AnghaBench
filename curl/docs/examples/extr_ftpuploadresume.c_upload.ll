; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftpuploadresume.c_upload.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftpuploadresume.c_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_GOT_NOTHING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_FTP_RESPONSE_TIMEOUT = common dso_local global i32 0, align 4
@CURLOPT_HEADERFUNCTION = common dso_local global i32 0, align 4
@getcontentlengthfunc = common dso_local global i64 0, align 8
@CURLOPT_HEADERDATA = common dso_local global i32 0, align 4
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@discardfunc = common dso_local global i64 0, align 8
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@readfunc = common dso_local global i64 0, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_FTPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@CURLOPT_FTP_CREATE_MISSING_DIRS = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@CURLOPT_NOBODY = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@CURLOPT_APPEND = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i64, i64)* @upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upload(i32* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  %16 = load i64, i64* @CURLE_GOT_NOTHING, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = call i32 @perror(i32* null)
  store i32 0, i32* %6, align 4
  br label %130

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %26 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %24, i32 %25, i64 1)
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @CURLOPT_FTP_RESPONSE_TIMEOUT, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %34, i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @CURLOPT_HEADERFUNCTION, align 4
  %41 = load i64, i64* @getcontentlengthfunc, align 8
  %42 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %39, i32 %40, i64 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* @CURLOPT_HEADERDATA, align 4
  %45 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %43, i32 %44, i64* %13)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %48 = load i64, i64* @discardfunc, align 8
  %49 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %46, i32 %47, i64 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %52 = load i64, i64* @readfunc, align 8
  %53 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %50, i32 %51, i64 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @CURLOPT_READDATA, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %54, i32 %55, i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* @CURLOPT_FTPPORT, align 4
  %60 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %58, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @CURLOPT_FTP_CREATE_MISSING_DIRS, align 4
  %63 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %61, i32 %62, i64 1)
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %66 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %64, i32 %65, i64 1)
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %115, %38
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @CURLE_OK, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %11, align 8
  %75 = icmp slt i64 %73, %74
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i1 [ false, %67 ], [ %75, %71 ]
  br i1 %77, label %78, label %118

78:                                               ; preds = %76
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* @CURLOPT_NOBODY, align 4
  %84 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %82, i32 %83, i64 1)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* @CURLOPT_HEADER, align 4
  %87 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %85, i32 %86, i64 1)
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @curl_easy_perform(i32* %88)
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* @CURLE_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %115

94:                                               ; preds = %81
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @CURLOPT_NOBODY, align 4
  %97 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %95, i32 %96, i64 0)
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @CURLOPT_HEADER, align 4
  %100 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %98, i32 %99, i64 0)
  %101 = load i32*, i32** %12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i32, i32* @SEEK_SET, align 4
  %104 = call i32 @fseek(i32* %101, i64 %102, i32 %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* @CURLOPT_APPEND, align 4
  %107 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %105, i32 %106, i64 1)
  br label %112

108:                                              ; preds = %78
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* @CURLOPT_APPEND, align 4
  %111 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %109, i32 %110, i64 0)
  br label %112

112:                                              ; preds = %108, %94
  %113 = load i32*, i32** %7, align 8
  %114 = call i64 @curl_easy_perform(i32* %113)
  store i64 %114, i64* %14, align 8
  br label %115

115:                                              ; preds = %112, %93
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %67

118:                                              ; preds = %76
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* @CURLE_OK, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1, i32* %6, align 4
  br label %130

125:                                              ; preds = %118
  %126 = load i32, i32* @stderr, align 4
  %127 = load i64, i64* %14, align 8
  %128 = call i8* @curl_easy_strerror(i64 %127)
  %129 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %125, %124, %21
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i32*) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i64 @curl_easy_perform(i32*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
