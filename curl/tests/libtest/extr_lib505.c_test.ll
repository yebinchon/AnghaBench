; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib505.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib505.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.curl_slist = type opaque

@CURLE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"RNFR 505\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"RNTO 505-forreal\00", align 1
@libtest_arg2 = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Usage: <url> <file-to-upload>\0A\00", align 1
@TEST_ERR_USAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"fopen failed with error: %d %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Error opening file: %s\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"fstat() failed with error: %d %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ERROR: cannot open file %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ERROR: file %s has zero size!\0A\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"curl_slist_append() failed\0A\00", align 1
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_POSTQUOTE = common dso_local global i32 0, align 4
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca %struct.curl_slist*, align 8
  %10 = alloca %struct.curl_slist*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %10, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %15 = load i8*, i8** @libtest_arg2, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @TEST_ERR_USAGE, align 4
  store i32 %20, i32* %2, align 4
  br label %162

21:                                               ; preds = %1
  %22 = load i8*, i8** @libtest_arg2, align 8
  %23 = call i8* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* null, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* @errno, align 4
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %28, i8* %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = load i8*, i8** @libtest_arg2, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %35, i32* %2, align 4
  br label %162

36:                                               ; preds = %21
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @fileno(i8* %37)
  %39 = call i32 @fstat(i32 %38, %struct.TYPE_3__* %8)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @errno, align 4
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %44, i8* %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** @libtest_arg2, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @fclose(i8* %51)
  %53 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %53, i32* %2, align 4
  br label %162

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** @libtest_arg2, align 8
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @fclose(i8* %62)
  %64 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %64, i32* %2, align 4
  br label %162

65:                                               ; preds = %54
  %66 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %67 = call i64 @curl_global_init(i32 %66)
  %68 = load i64, i64* @CURLE_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @fclose(i8* %73)
  %75 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %75, i32* %2, align 4
  br label %162

76:                                               ; preds = %65
  %77 = call i32* (...) @curl_easy_init()
  store i32* %77, i32** %4, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %83 = call i32 (...) @curl_global_cleanup()
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @fclose(i8* %84)
  %86 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %86, i32* %2, align 4
  br label %162

87:                                               ; preds = %76
  %88 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %89 = bitcast %struct.curl_slist* %88 to i8*
  %90 = load i8*, i8** %11, align 8
  %91 = call i8* @curl_slist_append(i8* %89, i8* %90)
  %92 = bitcast i8* %91 to %struct.curl_slist*
  store %struct.curl_slist* %92, %struct.curl_slist** %9, align 8
  %93 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %94 = icmp ne %struct.curl_slist* %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %98 = load i32*, i32** %4, align 8
  %99 = call i32 @curl_easy_cleanup(i32* %98)
  %100 = call i32 (...) @curl_global_cleanup()
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @fclose(i8* %101)
  %103 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %103, i32* %2, align 4
  br label %162

104:                                              ; preds = %87
  %105 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %106 = bitcast %struct.curl_slist* %105 to i8*
  %107 = load i8*, i8** %12, align 8
  %108 = call i8* @curl_slist_append(i8* %106, i8* %107)
  %109 = bitcast i8* %108 to %struct.curl_slist*
  store %struct.curl_slist* %109, %struct.curl_slist** %10, align 8
  %110 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %111 = icmp ne %struct.curl_slist* %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %115 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %116 = bitcast %struct.curl_slist* %115 to i8*
  %117 = call i32 @curl_slist_free_all(i8* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @curl_easy_cleanup(i32* %118)
  %120 = call i32 (...) @curl_global_cleanup()
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @fclose(i8* %121)
  %123 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %123, i32* %2, align 4
  br label %162

124:                                              ; preds = %104
  %125 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  store %struct.curl_slist* %125, %struct.curl_slist** %10, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %128 = call i32 (i32*, i32, ...) @test_setopt(i32* %126, i32 %127, i64 1)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %131 = call i32 (i32*, i32, ...) @test_setopt(i32* %129, i32 %130, i64 1)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @CURLOPT_URL, align 4
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 (i32*, i32, ...) @test_setopt(i32* %132, i32 %133, i8* %134)
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @CURLOPT_POSTQUOTE, align 4
  %138 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %139 = call i32 (i32*, i32, ...) @test_setopt(i32* %136, i32 %137, %struct.curl_slist* %138)
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* @CURLOPT_READDATA, align 4
  %142 = load i8*, i8** %6, align 8
  %143 = call i32 (i32*, i32, ...) @test_setopt(i32* %140, i32 %141, i8* %142)
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 (i32*, i32, ...) @test_setopt(i32* %144, i32 %145, i8* %148)
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @curl_easy_perform(i32* %150)
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %124
  %153 = load %struct.curl_slist*, %struct.curl_slist** %10, align 8
  %154 = bitcast %struct.curl_slist* %153 to i8*
  %155 = call i32 @curl_slist_free_all(i8* %154)
  %156 = load i8*, i8** %6, align 8
  %157 = call i32 @fclose(i8* %156)
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @curl_easy_cleanup(i32* %158)
  %160 = call i32 (...) @curl_global_cleanup()
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %152, %112, %95, %80, %70, %58, %42, %26, %17
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fileno(i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i8* @curl_slist_append(i8*, i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
