; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib586.c_test.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib586.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdata = type { i8*, i64 }
%struct.Tdata = type { i8*, i8* }

@CURLSHE_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Pigs in space\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GLOBAL_INIT\0A\00", align 1
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"curl_global_init() failed\0A\00", align 1
@TEST_ERR_MAJOR_BAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"SHARE_INIT\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"curl_share_init() failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"CURLSHOPT_LOCKFUNC\0A\00", align 1
@CURLSHOPT_LOCKFUNC = common dso_local global i32 0, align 4
@my_lock = common dso_local global %struct.userdata* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"CURLSHOPT_UNLOCKFUNC\0A\00", align 1
@CURLSHOPT_UNLOCKFUNC = common dso_local global i32 0, align 4
@my_unlock = common dso_local global %struct.userdata* null, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"CURLSHOPT_USERDATA\0A\00", align 1
@CURLSHOPT_USERDATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"CURL_LOCK_DATA_SSL_SESSION\0A\00", align 1
@CURLSHOPT_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_SSL_SESSION = common dso_local global %struct.userdata* null, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"curl_share_setopt() failed\0A\00", align 1
@THREADS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"*** run %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"curl_easy_init() failed\0A\00", align 1
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"CURLOPT_SHARE\0A\00", align 1
@CURLOPT_SHARE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"PERFORM\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"try SHARE_CLEANUP...\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"curl_share_cleanup succeed but error expected\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"SHARE_CLEANUP failed, correct\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"CLEANUP\0A\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"SHARE_CLEANUP\0A\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"curl_share_cleanup failed, code errno %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"GLOBAL_CLEANUP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Tdata, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.userdata, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i64, i64* @CURLSHE_OK, align 8
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds %struct.userdata, %struct.userdata* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.userdata, %struct.userdata* %11, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %17 = call i64 @curl_global_init(i32 %16)
  %18 = load i64, i64* @CURLE_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %23, i32* %2, align 4
  br label %158

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %26 = call i8* (...) @curl_share_init()
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 (...) @curl_global_cleanup()
  %33 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %33, i32* %2, align 4
  br label %158

34:                                               ; preds = %24
  %35 = load i64, i64* @CURLSHE_OK, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @CURLSHOPT_LOCKFUNC, align 4
  %42 = load %struct.userdata*, %struct.userdata** @my_lock, align 8
  %43 = call i64 @curl_share_setopt(i8* %40, i32 %41, %struct.userdata* %42)
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i64, i64* @CURLSHE_OK, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @CURLSHOPT_UNLOCKFUNC, align 4
  %52 = load %struct.userdata*, %struct.userdata** @my_unlock, align 8
  %53 = call i64 @curl_share_setopt(i8* %50, i32 %51, %struct.userdata* %52)
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %48, %44
  %55 = load i64, i64* @CURLSHE_OK, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* @CURLSHOPT_USERDATA, align 4
  %62 = call i64 @curl_share_setopt(i8* %60, i32 %61, %struct.userdata* %11)
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load i64, i64* @CURLSHE_OK, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %71 = load %struct.userdata*, %struct.userdata** @CURL_LOCK_DATA_SSL_SESSION, align 8
  %72 = call i64 @curl_share_setopt(i8* %69, i32 %70, %struct.userdata* %71)
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %67, %63
  %74 = load i64, i64* @CURLSHE_OK, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %80 = load i8*, i8** %9, align 8
  %81 = call i64 @curl_share_cleanup(i8* %80)
  %82 = call i32 (...) @curl_global_cleanup()
  %83 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %83, i32* %2, align 4
  br label %158

84:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %85

85:                                               ; preds = %97, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @THREADS, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %100

89:                                               ; preds = %85
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds %struct.Tdata, %struct.Tdata* %7, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds %struct.Tdata, %struct.Tdata* %7, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %94)
  %96 = call i32 @fire(%struct.Tdata* %7)
  br label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %85

100:                                              ; preds = %85
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = call i32* (...) @curl_easy_init()
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 @curl_share_cleanup(i8* %109)
  %111 = call i32 (...) @curl_global_cleanup()
  %112 = load i32, i32* @TEST_ERR_MAJOR_BAD, align 4
  store i32 %112, i32* %2, align 4
  br label %158

113:                                              ; preds = %100
  %114 = load i8*, i8** %3, align 8
  store i8* %114, i8** %6, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @CURLOPT_URL, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = call i32 @test_setopt(i32* %115, i32 %116, i8* %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* @CURLOPT_SHARE, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @test_setopt(i32* %120, i32 %121, i8* %122)
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @curl_easy_perform(i32* %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %128 = load i8*, i8** %9, align 8
  %129 = call i64 @curl_share_cleanup(i8* %128)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* @CURLSHE_OK, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %113
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  store i8* null, i8** %9, align 8
  br label %138

136:                                              ; preds = %113
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133
  br label %139

139:                                              ; preds = %138
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 @curl_easy_cleanup(i32* %141)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %144 = load i8*, i8** %9, align 8
  %145 = call i64 @curl_share_cleanup(i8* %144)
  store i64 %145, i64* %5, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* @CURLSHE_OK, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %139
  %150 = load i32, i32* @stderr, align 4
  %151 = load i64, i64* %5, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %149, %139
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %156 = call i32 (...) @curl_global_cleanup()
  %157 = load i32, i32* %4, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %154, %106, %77, %29, %20
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @curl_share_init(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

declare dso_local i64 @curl_share_setopt(i8*, i32, %struct.userdata*) #1

declare dso_local i64 @curl_share_cleanup(i8*) #1

declare dso_local i32 @fire(%struct.Tdata*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @test_setopt(i32*, i32, i8*) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
