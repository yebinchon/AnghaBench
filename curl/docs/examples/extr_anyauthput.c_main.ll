; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_anyauthput.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_anyauthput.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLOPT_READFUNCTION = common dso_local global i32 0, align 4
@read_callback = common dso_local global i8* null, align 8
@CURLOPT_READDATA = common dso_local global i32 0, align 4
@CURLOPT_IOCTLFUNCTION = common dso_local global i32 0, align 4
@my_ioctl = common dso_local global i8* null, align 8
@CURLOPT_IOCTLDATA = common dso_local global i32 0, align 4
@CURLOPT_UPLOAD = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_INFILESIZE_LARGE = common dso_local global i32 0, align 4
@CURLOPT_HTTPAUTH = common dso_local global i32 0, align 4
@CURLAUTH_ANY = common dso_local global i64 0, align 8
@CURLOPT_USERPWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"user:password\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"curl_easy_perform() failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %86

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* @O_RDONLY, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @fstat(i32 %25, %struct.stat* %9)
  %27 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %28 = call i32 @curl_global_init(i32 %27)
  %29 = call i32* (...) @curl_easy_init()
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %15
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* @CURLOPT_READFUNCTION, align 4
  %35 = load i8*, i8** @read_callback, align 8
  %36 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %33, i32 %34, i8* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @CURLOPT_READDATA, align 4
  %39 = bitcast i32* %8 to i8*
  %40 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %37, i32 %38, i8* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @CURLOPT_IOCTLFUNCTION, align 4
  %43 = load i8*, i8** @my_ioctl, align 8
  %44 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %41, i32 %42, i8* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @CURLOPT_IOCTLDATA, align 4
  %47 = bitcast i32* %8 to i8*
  %48 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %45, i32 %46, i8* %47)
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @CURLOPT_UPLOAD, align 4
  %51 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %49, i32 %50, i64 1)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @CURLOPT_URL, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %52, i32 %53, i8* %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @CURLOPT_INFILESIZE_LARGE, align 4
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %56, i32 %57, i8* %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* @CURLOPT_HTTPAUTH, align 4
  %64 = load i64, i64* @CURLAUTH_ANY, align 8
  %65 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %62, i32 %63, i64 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @CURLOPT_USERPWD, align 4
  %68 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %66, i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @curl_easy_perform(i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @CURLE_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %32
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @curl_easy_strerror(i32 %76)
  %78 = call i32 @fprintf(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %74, %32
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @curl_easy_cleanup(i32* %80)
  br label %82

82:                                               ; preds = %79, %15
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @close(i32 %83)
  %85 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @curl_global_init(i32) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @curl_easy_perform(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @curl_easy_strerror(i32) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
