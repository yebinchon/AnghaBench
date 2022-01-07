; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib1507.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib1507.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.curl_slist = type { i32 }

@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@RECIPIENT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i64 0, align 8
@CURLOPT_MAIL_FROM = common dso_local global i32 0, align 4
@MAILFROM = common dso_local global i64 0, align 8
@CURLOPT_MAIL_RCPT = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@MULTI_PERFORM_HANG_TIMEOUT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"ABORTING TEST, since it seems that it would have run forever.\0A\00", align 1
@CURLOPT_PASSWORD = common dso_local global i32 0, align 4
@CURLOPT_USERNAME = common dso_local global i32 0, align 4
@PASSWORD = common dso_local global i64 0, align 8
@USERNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.curl_slist*, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 1, i32* %6, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  %18 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %19 = call i32 @curl_global_init(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @easy_init(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @multi_init(i32* %22)
  %24 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %25 = load i32, i32* @RECIPIENT, align 4
  %26 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %24, i32 %25)
  store %struct.curl_slist* %26, %struct.curl_slist** %8, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %33 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %31, i32 %32, i64 1)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %36 = load i64, i64* @read_callback, align 8
  %37 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %34, i32 %35, i64 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @CURLOPT_MAIL_FROM, align 4
  %40 = load i64, i64* @MAILFROM, align 8
  %41 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %38, i32 %39, i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @CURLOPT_MAIL_RCPT, align 4
  %44 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %45 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %42, i32 %43, %struct.curl_slist* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %46, i32 %47, i64 1)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @multi_add_handle(i32* %49, i32* %50)
  %52 = call { i32, i64 } (...) @tutil_tvnow()
  %53 = bitcast %struct.timeval* %9 to { i32, i64 }*
  %54 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 0
  %55 = extractvalue { i32, i64 } %52, 0
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 1
  %57 = extractvalue { i32, i64 } %52, 1
  store i64 %57, i64* %56, align 8
  %58 = bitcast %struct.timeval* %7 to i8*
  %59 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @curl_multi_perform(i32* %60, i32* %6)
  br label %62

62:                                               ; preds = %126, %1
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %127

65:                                               ; preds = %62
  store i32 -1, i32* %15, align 4
  store i64 -1, i64* %16, align 8
  %66 = call i32 @FD_ZERO(i32* %12)
  %67 = call i32 @FD_ZERO(i32* %13)
  %68 = call i32 @FD_ZERO(i32* %14)
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @curl_multi_timeout(i32* %71, i64* %16)
  %73 = load i64, i64* %16, align 8
  %74 = icmp sge i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %65
  %76 = load i64, i64* %16, align 8
  %77 = sdiv i64 %76, 1000
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %90

85:                                               ; preds = %75
  %86 = load i64, i64* %16, align 8
  %87 = srem i64 %86, 1000
  %88 = mul nsw i64 %87, 1000
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %83
  br label %91

91:                                               ; preds = %90, %65
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @curl_multi_fdset(i32* %92, i32* %12, i32* %13, i32* %14, i32* %15)
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @select(i32 %95, i32* %12, i32* %13, i32* %14, %struct.timeval* %10)
  store i32 %96, i32* %11, align 4
  %97 = call { i32, i64 } (...) @tutil_tvnow()
  %98 = bitcast %struct.timeval* %17 to { i32, i64 }*
  %99 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %98, i32 0, i32 0
  %100 = extractvalue { i32, i64 } %97, 0
  store i32 %100, i32* %99, align 8
  %101 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %98, i32 0, i32 1
  %102 = extractvalue { i32, i64 } %97, 1
  store i64 %102, i64* %101, align 8
  %103 = bitcast %struct.timeval* %17 to { i32, i64 }*
  %104 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %103, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %109 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %108, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @tutil_tvdiff(i32 %105, i64 %107, i32 %110, i64 %112)
  %114 = load i64, i64* @MULTI_PERFORM_HANG_TIMEOUT, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %91
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 @fprintf(i32 %117, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %127

119:                                              ; preds = %91
  %120 = load i32, i32* %11, align 4
  switch i32 %120, label %123 [
    i32 -1, label %121
    i32 0, label %122
  ]

121:                                              ; preds = %119
  br label %126

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %119, %122
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @curl_multi_perform(i32* %124, i32* %6)
  br label %126

126:                                              ; preds = %123, %121
  br label %62

127:                                              ; preds = %116, %62
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %130 = call i32 @curl_slist_free_all(%struct.curl_slist* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @curl_multi_remove_handle(i32* %131, i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @curl_multi_cleanup(i32* %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @curl_easy_cleanup(i32* %136)
  %138 = call i32 (...) @curl_global_cleanup()
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32 @easy_init(i32*) #1

declare dso_local i32 @multi_init(i32*) #1

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @multi_add_handle(i32*, i32*) #1

declare dso_local { i32, i64 } @tutil_tvnow(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @curl_multi_perform(i32*, i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @curl_multi_timeout(i32*, i64*) #1

declare dso_local i32 @curl_multi_fdset(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @tutil_tvdiff(i32, i64, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @curl_multi_remove_handle(i32*, i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
