; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib650.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib650.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.curl_httppost = type { i32 }
%struct.curl_forms = type { i8*, i32 }

@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"X-customheader-1: Header 1 data\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"X-customheader-2: Header 2 data\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Content-Type: text/plain\00", align 1
@CURLFORM_COPYNAME = common dso_local global i32 0, align 4
@name = common dso_local global i8* null, align 8
@CURLFORM_COPYCONTENTS = common dso_local global i32 0, align 4
@data = common dso_local global i8* null, align 8
@CURLFORM_CONTENTHEADER = common dso_local global i32 0, align 4
@CURLFORM_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"curl_formadd(1) = %d\0A\00", align 1
@CURLFORM_PTRCONTENTS = common dso_local global i32 0, align 4
@CURLFORM_CONTENTSLENGTH = common dso_local global i32 0, align 4
@CURLFORM_PTRNAME = common dso_local global i32 0, align 4
@CURLFORM_NAMELENGTH = common dso_local global i32 0, align 4
@CURLFORM_ARRAY = common dso_local global i32 0, align 4
@CURLFORM_FILENAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"remotefile.txt\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"curl_formadd(2) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"multifile\00", align 1
@CURLFORM_FILE = common dso_local global i32 0, align 4
@libtest_arg2 = common dso_local global i8* null, align 8
@CURLFORM_CONTENTTYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"text/whatever\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"curl_formadd(3) = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"filecontents\00", align 1
@CURLFORM_FILECONTENT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"curl_formadd(4) = %d\0A\00", align 1
@count_chars = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"formlength\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"curl_formadd(5) = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"standardinput\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"curl_formadd(6) = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_HTTPPOST = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.curl_slist*, align 8
  %8 = alloca %struct.curl_slist*, align 8
  %9 = alloca %struct.curl_httppost*, align 8
  %10 = alloca %struct.curl_httppost*, align 8
  %11 = alloca [3 x %struct.curl_forms], align 16
  %12 = alloca i64, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %15 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %15, i32* %5, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  store %struct.curl_httppost* null, %struct.curl_httppost** %9, align 8
  store %struct.curl_httppost* null, %struct.curl_httppost** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %16 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %17 = call i64 @curl_global_init(i32 %16)
  %18 = load i64, i64* @CURLE_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %23, i32* %2, align 4
  br label %191

24:                                               ; preds = %1
  %25 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.curl_slist* %25, %struct.curl_slist** %7, align 8
  %26 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %27 = icmp ne %struct.curl_slist* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %182

29:                                               ; preds = %24
  %30 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %31 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store %struct.curl_slist* %31, %struct.curl_slist** %8, align 8
  %32 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %33 = icmp ne %struct.curl_slist* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %182

35:                                               ; preds = %29
  %36 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  store %struct.curl_slist* %36, %struct.curl_slist** %7, align 8
  %37 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %38 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store %struct.curl_slist* %38, %struct.curl_slist** %8, align 8
  %39 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %40 = icmp ne %struct.curl_slist* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %182

42:                                               ; preds = %35
  %43 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  store %struct.curl_slist* %43, %struct.curl_slist** %7, align 8
  %44 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %45 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %46 = load i32, i32* @CURLFORM_CONTENTHEADER, align 4
  %47 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %48 = load i32, i32* @CURLFORM_END, align 4
  %49 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %44, i8** @name, i32 %45, i8** @data, i32 %46, %struct.curl_slist* %47, i32 %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %182

56:                                               ; preds = %42
  %57 = load i8*, i8** @data, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %14, align 8
  %61 = load i32, i32* @CURLFORM_PTRCONTENTS, align 4
  %62 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 0
  %63 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** @data, align 8
  %65 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 0
  %66 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 16
  %67 = load i32, i32* @CURLFORM_CONTENTSLENGTH, align 4
  %68 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 1
  %69 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %14, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 1
  %73 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 16
  %74 = load i32, i32* @CURLFORM_END, align 4
  %75 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 2
  %76 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 2
  %78 = getelementptr inbounds %struct.curl_forms, %struct.curl_forms* %77, i32 0, i32 0
  store i8* null, i8** %78, align 16
  %79 = load i32, i32* @CURLFORM_PTRNAME, align 4
  %80 = load i8*, i8** @name, align 8
  %81 = load i32, i32* @CURLFORM_NAMELENGTH, align 4
  %82 = load i8*, i8** @name, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* @CURLFORM_ARRAY, align 4
  %86 = getelementptr inbounds [3 x %struct.curl_forms], [3 x %struct.curl_forms]* %11, i64 0, i64 0
  %87 = load i32, i32* @CURLFORM_FILENAME, align 4
  %88 = load i32, i32* @CURLFORM_END, align 4
  %89 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %79, i8* %80, i32 %81, i32 %84, i32 %85, %struct.curl_forms* %86, i32 %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %56
  %93 = load i64, i64* %6, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %182

96:                                               ; preds = %56
  %97 = load i8*, i8** @data, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = add i8 %99, 1
  store i8 %100, i8* %98, align 1
  %101 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %102 = load i32, i32* @CURLFORM_FILE, align 4
  %103 = load i8*, i8** @libtest_arg2, align 8
  %104 = load i32, i32* @CURLFORM_FILE, align 4
  %105 = load i8*, i8** @libtest_arg2, align 8
  %106 = load i32, i32* @CURLFORM_CONTENTTYPE, align 4
  %107 = load i32, i32* @CURLFORM_FILE, align 4
  %108 = load i8*, i8** @libtest_arg2, align 8
  %109 = load i32, i32* @CURLFORM_END, align 4
  %110 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %102, i8* %103, i32 %104, i8* %105, i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %107, i8* %108, i32 %109)
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %96
  %114 = load i64, i64* %6, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  br label %182

117:                                              ; preds = %96
  %118 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %119 = load i32, i32* @CURLFORM_FILECONTENT, align 4
  %120 = load i8*, i8** @libtest_arg2, align 8
  %121 = load i32, i32* @CURLFORM_END, align 4
  %122 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %119, i8* %120, i32 %121)
  store i64 %122, i64* %6, align 8
  %123 = load i64, i64* %6, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i64, i64* %6, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %127)
  br label %182

129:                                              ; preds = %117
  %130 = load %struct.curl_httppost*, %struct.curl_httppost** %9, align 8
  %131 = bitcast i64* %12 to i8*
  %132 = load i32, i32* @count_chars, align 4
  %133 = call i32 @curl_formget(%struct.curl_httppost* %130, i8* %131, i32 %132)
  %134 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @curl_msnprintf(i8* %134, i32 32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %138 = load i32, i32* @CURLFORM_COPYCONTENTS, align 4
  %139 = load i32, i32* @CURLFORM_END, align 4
  %140 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %137, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %138, [32 x i8]* %13, i32 %139)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %129
  %144 = load i64, i64* %6, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %145)
  br label %182

147:                                              ; preds = %129
  %148 = load i32, i32* @CURLFORM_COPYNAME, align 4
  %149 = load i32, i32* @CURLFORM_FILE, align 4
  %150 = load i32, i32* @CURLFORM_END, align 4
  %151 = call i64 (%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) @curl_formadd(%struct.curl_httppost** %9, %struct.curl_httppost** %10, i32 %148, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i32 %150)
  store i64 %151, i64* %6, align 8
  %152 = load i64, i64* %6, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i64, i64* %6, align 8
  %156 = trunc i64 %155 to i32
  %157 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %156)
  br label %182

158:                                              ; preds = %147
  %159 = call i32* (...) @curl_easy_init()
  store i32* %159, i32** %4, align 8
  %160 = load i32*, i32** %4, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 @fprintf(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  br label %182

165:                                              ; preds = %158
  %166 = load i32*, i32** %4, align 8
  %167 = load i32, i32* @CURLOPT_URL, align 4
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 (i32*, i32, ...) @test_setopt(i32* %166, i32 %167, i8* %168)
  %170 = load i32*, i32** %4, align 8
  %171 = load i32, i32* @CURLOPT_HTTPPOST, align 4
  %172 = load %struct.curl_httppost*, %struct.curl_httppost** %9, align 8
  %173 = call i32 (i32*, i32, ...) @test_setopt(i32* %170, i32 %171, %struct.curl_httppost* %172)
  %174 = load i32*, i32** %4, align 8
  %175 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %176 = call i32 (i32*, i32, ...) @test_setopt(i32* %174, i32 %175, i64 1)
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* @CURLOPT_HEADER, align 4
  %179 = call i32 (i32*, i32, ...) @test_setopt(i32* %177, i32 %178, i64 1)
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @curl_easy_perform(i32* %180)
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %165, %162, %154, %143, %125, %113, %92, %52, %41, %34, %28
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @curl_easy_cleanup(i32* %183)
  %185 = load %struct.curl_httppost*, %struct.curl_httppost** %9, align 8
  %186 = call i32 @curl_formfree(%struct.curl_httppost* %185)
  %187 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %188 = call i32 @curl_slist_free_all(%struct.curl_slist* %187)
  %189 = call i32 (...) @curl_global_cleanup()
  %190 = load i32, i32* %5, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %182, %20
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i8*) #1

declare dso_local i64 @curl_formadd(%struct.curl_httppost**, %struct.curl_httppost**, i32, ...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @curl_formget(%struct.curl_httppost*, i8*, i32) #1

declare dso_local i32 @curl_msnprintf(i8*, i32, i8*, i64) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_formfree(%struct.curl_httppost*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
