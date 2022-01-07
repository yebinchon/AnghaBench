; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib661.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib661.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s/folderA/661\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_IGNORE_CONTENT_LENGTH = common dso_local global i32 0, align 4
@CURLOPT_FTP_FILEMETHOD = common dso_local global i32 0, align 4
@CURLFTPMETHOD_SINGLECWD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"%s/folderB/661\00", align 1
@CURLFTPMETHOD_NOCWD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"SYST\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"curl_slist_append() failed\0A\00", align 1
@CURLOPT_NOBODY = common dso_local global i32 0, align 4
@CURLOPT_QUOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.curl_slist*, align 8
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %7, align 8
  %8 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %9 = call i64 @curl_global_init(i32 %8)
  %10 = load i64, i64* @CURLE_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %15, i32* %2, align 4
  br label %212

16:                                               ; preds = %1
  %17 = call i32* (...) @curl_easy_init()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %23, i32* %4, align 4
  br label %202

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @aprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i8* %26, i8** %6, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 (i32*, i32, ...) @test_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %33 = call i32 (i32*, i32, ...) @test_setopt(i32* %31, i32 %32, i64 1)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @CURLOPT_IGNORE_CONTENT_LENGTH, align 4
  %36 = call i32 (i32*, i32, ...) @test_setopt(i32* %34, i32 %35, i64 1)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %39 = load i64, i64* @CURLFTPMETHOD_SINGLECWD, align 8
  %40 = call i32 (i32*, i32, ...) @test_setopt(i32* %37, i32 %38, i64 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @curl_easy_perform(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i8*, i8** %3, align 8
  %46 = call i8* @aprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  store i8* %46, i8** %6, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* @CURLOPT_URL, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 (i32*, i32, ...) @test_setopt(i32* %47, i32 %48, i8* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @curl_easy_perform(i32* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @curl_easy_cleanup(i32* %53)
  %55 = call i32* (...) @curl_easy_init()
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %24
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %61, i32* %4, align 4
  br label %202

62:                                               ; preds = %24
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @aprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  store i8* %66, i8** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @CURLOPT_URL, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 (i32*, i32, ...) @test_setopt(i32* %67, i32 %68, i8* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %73 = call i32 (i32*, i32, ...) @test_setopt(i32* %71, i32 %72, i64 1)
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @CURLOPT_IGNORE_CONTENT_LENGTH, align 4
  %76 = call i32 (i32*, i32, ...) @test_setopt(i32* %74, i32 %75, i64 1)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %79 = load i64, i64* @CURLFTPMETHOD_NOCWD, align 8
  %80 = call i32 (i32*, i32, ...) @test_setopt(i32* %77, i32 %78, i64 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @curl_easy_perform(i32* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %3, align 8
  %86 = call i8* @aprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %85)
  store i8* %86, i8** %6, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* @CURLOPT_URL, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 (i32*, i32, ...) @test_setopt(i32* %87, i32 %88, i8* %89)
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %93 = load i64, i64* @CURLFTPMETHOD_SINGLECWD, align 8
  %94 = call i32 (i32*, i32, ...) @test_setopt(i32* %91, i32 %92, i64 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @curl_easy_perform(i32* %95)
  store i32 %96, i32* %4, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %3, align 8
  %100 = call i8* @aprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %99)
  store i8* %100, i8** %6, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @CURLOPT_URL, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 (i32*, i32, ...) @test_setopt(i32* %101, i32 %102, i8* %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %107 = load i64, i64* @CURLFTPMETHOD_NOCWD, align 8
  %108 = call i32 (i32*, i32, ...) @test_setopt(i32* %105, i32 %106, i64 %107)
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @curl_easy_perform(i32* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @curl_easy_cleanup(i32* %111)
  %113 = call i32* (...) @curl_easy_init()
  store i32* %113, i32** %5, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %62
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %119, i32* %4, align 4
  br label %202

120:                                              ; preds = %62
  %121 = call i8* @curl_slist_append(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %122 = bitcast i8* %121 to %struct.curl_slist*
  store %struct.curl_slist* %122, %struct.curl_slist** %7, align 8
  %123 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %124 = icmp eq %struct.curl_slist* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %128, i32* %4, align 4
  br label %202

129:                                              ; preds = %120
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* @CURLOPT_URL, align 4
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 (i32*, i32, ...) @test_setopt(i32* %130, i32 %131, i8* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %136 = call i32 (i32*, i32, ...) @test_setopt(i32* %134, i32 %135, i64 1)
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* @CURLOPT_NOBODY, align 4
  %139 = call i32 (i32*, i32, ...) @test_setopt(i32* %137, i32 %138, i64 1)
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %142 = load i64, i64* @CURLFTPMETHOD_NOCWD, align 8
  %143 = call i32 (i32*, i32, ...) @test_setopt(i32* %140, i32 %141, i64 %142)
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* @CURLOPT_QUOTE, align 4
  %146 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %147 = call i32 (i32*, i32, ...) @test_setopt(i32* %144, i32 %145, %struct.curl_slist* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @curl_easy_perform(i32* %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @curl_easy_cleanup(i32* %150)
  %152 = call i32* (...) @curl_easy_init()
  store i32* %152, i32** %5, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %159, label %155

155:                                              ; preds = %129
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %158, i32* %4, align 4
  br label %202

159:                                              ; preds = %129
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* @CURLOPT_URL, align 4
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 (i32*, i32, ...) @test_setopt(i32* %160, i32 %161, i8* %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %166 = call i32 (i32*, i32, ...) @test_setopt(i32* %164, i32 %165, i64 1)
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* @CURLOPT_NOBODY, align 4
  %169 = call i32 (i32*, i32, ...) @test_setopt(i32* %167, i32 %168, i64 1)
  %170 = load i32*, i32** %5, align 8
  %171 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %172 = load i64, i64* @CURLFTPMETHOD_SINGLECWD, align 8
  %173 = call i32 (i32*, i32, ...) @test_setopt(i32* %170, i32 %171, i64 %172)
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* @CURLOPT_QUOTE, align 4
  %176 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %177 = call i32 (i32*, i32, ...) @test_setopt(i32* %174, i32 %175, %struct.curl_slist* %176)
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @curl_easy_perform(i32* %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = call i32 @curl_easy_reset(i32* %180)
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* @CURLOPT_URL, align 4
  %184 = load i8*, i8** %3, align 8
  %185 = call i32 (i32*, i32, ...) @test_setopt(i32* %182, i32 %183, i8* %184)
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %188 = call i32 (i32*, i32, ...) @test_setopt(i32* %186, i32 %187, i64 1)
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @CURLOPT_NOBODY, align 4
  %191 = call i32 (i32*, i32, ...) @test_setopt(i32* %189, i32 %190, i64 1)
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* @CURLOPT_FTP_FILEMETHOD, align 4
  %194 = load i64, i64* @CURLFTPMETHOD_NOCWD, align 8
  %195 = call i32 (i32*, i32, ...) @test_setopt(i32* %192, i32 %193, i64 %194)
  %196 = load i32*, i32** %5, align 8
  %197 = load i32, i32* @CURLOPT_QUOTE, align 4
  %198 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %199 = call i32 (i32*, i32, ...) @test_setopt(i32* %196, i32 %197, %struct.curl_slist* %198)
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @curl_easy_perform(i32* %200)
  store i32 %201, i32* %4, align 4
  br label %202

202:                                              ; preds = %159, %155, %125, %116, %58, %20
  %203 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %204 = bitcast %struct.curl_slist* %203 to i8*
  %205 = call i32 @curl_slist_free_all(i8* %204)
  %206 = load i8*, i8** %6, align 8
  %207 = call i32 @free(i8* %206)
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @curl_easy_cleanup(i32* %208)
  %210 = call i32 (...) @curl_global_cleanup()
  %211 = load i32, i32* %4, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %202, %12
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i8* @aprintf(i8*, i8*) #1

declare dso_local i32 @test_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i8* @curl_slist_append(i32*, i8*) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

declare dso_local i32 @curl_slist_free_all(i8*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
