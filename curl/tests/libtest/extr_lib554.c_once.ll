; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib554.c_once.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib554.c_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_httppost = type { i32 }
%struct.WriteThis = type { i8*, i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@data = common dso_local global i8* null, align 8
@CURLFORM_COPYNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sendfile\00", align 1
@CURLFORM_STREAM = common dso_local global i32 0, align 4
@CURLFORM_CONTENTSLENGTH = common dso_local global i32 0, align 4
@CURLFORM_FILENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"postit2.c\00", align 1
@CURLFORM_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"sendfile alternative\00", align 1
@CURLFORM_CONTENTLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"file name 2\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"curl_formadd(1) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"callbackdata\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"curl_formadd(2) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@CURLFORM_COPYCONTENTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"curl_formadd(3) = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@CURLFORM_CONTENTTYPE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"curl_formadd(4) = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"somename\00", align 1
@CURLFORM_BUFFER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"somefile.txt\00", align 1
@CURLFORM_BUFFERPTR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"blah blah\00", align 1
@CURLFORM_BUFFERLENGTH = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"curl_formadd(5) = %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POST = common dso_local global i32 0, align 4
@CURLOPT_POSTFIELDSIZE = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_HTTPPOST = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @once(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.curl_httppost*, align 8
  %10 = alloca %struct.curl_httppost*, align 8
  %11 = alloca %struct.WriteThis, align 8
  %12 = alloca %struct.WriteThis, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @CURLE_OK, align 4
  store i32 %13, i32* %7, align 4
  store %struct.curl_httppost* null, %struct.curl_httppost** %9, align 8
  store %struct.curl_httppost* null, %struct.curl_httppost** %10, align 8
  %14 = load i8*, i8** @data, align 8
  %15 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @data, align 8
  %17 = call i8* @strlen(i8* %16)
  %18 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %23 = load i32, i32* @CURLFORM_STREAM, align 4
  %24 = load i32, i32* @CURLFORM_CONTENTSLENGTH, align 4
  %25 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i32, i32* @CURLFORM_FILENAME, align 4
  %29 = load i32, i32* @CURLFORM_END, align 4
  %30 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23, %struct.WriteThis* %11, i32 %24, i64 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  store i64 %30, i64* %8, align 8
  br label %41

31:                                               ; preds = %2
  %32 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %33 = load i32, i32* @CURLFORM_STREAM, align 4
  %34 = load i32, i32* @CURLFORM_CONTENTLEN, align 4
  %35 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32, i32* @CURLFORM_FILENAME, align 4
  %39 = load i32, i32* @CURLFORM_END, align 4
  %40 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %33, %struct.WriteThis* %11, i32 %34, i32 %37, i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %31, %21
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i8*, i8** @data, align 8
  %50 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %12, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** @data, align 8
  %52 = call i8* @strlen(i8* %51)
  %53 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %12, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %55 = load i32, i32* @CURLFORM_STREAM, align 4
  %56 = load i32, i32* @CURLFORM_CONTENTSLENGTH, align 4
  %57 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %12, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load i32, i32* @CURLFORM_END, align 4
  %61 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %55, %struct.WriteThis* %12, i32 %56, i64 %59, i32 %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %48
  %69 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %70 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %71 = load i32, i32* @CURLFORM_END, align 4
  %72 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %81 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %82 = load i32, i32* @CURLFORM_CONTENTTYPE, align 4
  %83 = load i32, i32* @CURLFORM_END, align 4
  %84 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %79
  %92 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %93 = load i32, i32* @CURLFORM_BUFFER, align 4
  %94 = load i32, i32* @CURLFORM_BUFFERPTR, align 4
  %95 = load i32, i32* @CURLFORM_BUFFERLENGTH, align 4
  %96 = load i32, i32* @CURLFORM_END, align 4
  %97 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %95, i64 9, i32 %96)
  store i64 %97, i64* %8, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i64, i64* %8, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %91
  %105 = call i32* (...) @curl_easy_init()
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %111 = load %struct.curl_httppost*, %struct.curl_httppost** %9, align 8
  %112 = call i32 @curl_formfree(%struct.curl_httppost* %111)
  %113 = call i32 (...) @curl_global_cleanup()
  %114 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %114, i32* %3, align 4
  br label %151

115:                                              ; preds = %104
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* @CURLOPT_URL, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = call i32 (i32*, i32, ...) @test_setopt(i32* %116, i32 %117, i8* %118)
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* @CURLOPT_POST, align 4
  %122 = call i32 (i32*, i32, ...) @test_setopt(i32* %120, i32 %121, i64 1)
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* @CURLOPT_POSTFIELDSIZE, align 4
  %125 = getelementptr inbounds %struct.WriteThis, %struct.WriteThis* %11, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = call i32 (i32*, i32, ...) @test_setopt(i32* %123, i32 %124, i64 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %131 = load i64, i64* @read_callback, align 8
  %132 = call i32 (i32*, i32, ...) @test_setopt(i32* %129, i32 %130, i64 %131)
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* @CURLOPT_HTTPPOST, align 4
  %135 = load %struct.curl_httppost*, %struct.curl_httppost** %9, align 8
  %136 = call i32 (i32*, i32, ...) @test_setopt(i32* %133, i32 %134, %struct.curl_httppost* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %139 = call i32 (i32*, i32, ...) @test_setopt(i32* %137, i32 %138, i64 1)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @CURLOPT_HEADER, align 4
  %142 = call i32 (i32*, i32, ...) @test_setopt(i32* %140, i32 %141, i64 1)
  %143 = load i32*, i32** %6, align 8
  %144 = call i32 @curl_easy_perform(i32* %143)
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %115
  %146 = load i32*, i32** %6, align 8
  %147 = call i32 @curl_easy_cleanup(i32* %146)
  %148 = load %struct.curl_httppost*, %struct.curl_httppost** %9, align 8
  %149 = call i32 @curl_formfree(%struct.curl_httppost* %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %108
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i64 @curl_formadd(%struct.curl_httppost**, %struct.curl_httppost**, i32, i8*, i32, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @curl_formfree(%struct.curl_httppost*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
