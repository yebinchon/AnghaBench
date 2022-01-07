; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ftpget.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ftpget.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FtpFile = type { i8*, i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"curl.tar.gz\00", align 1
@__const.main.ftpfile = private unnamed_addr constant %struct.FtpFile { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 0, i32* null }, align 8
@CURL_GLOBAL_DEFAULT = common dso_local global i32 0, align 4
@CURLOPT_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"ftp://ftp.example.com/curl/curl-7.9.2.tar.gz\00", align 1
@CURLOPT_WRITEFUNCTION = common dso_local global i32 0, align 4
@my_fwrite = common dso_local global i64 0, align 8
@CURLOPT_WRITEDATA = common dso_local global i32 0, align 4
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"curl told us %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.FtpFile, align 8
  store i32 0, i32* %1, align 4
  %5 = bitcast %struct.FtpFile* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.FtpFile* @__const.main.ftpfile to i8*), i64 24, i1 false)
  %6 = load i32, i32* @CURL_GLOBAL_DEFAULT, align 4
  %7 = call i32 @curl_global_init(i32 %6)
  %8 = call i32* (...) @curl_easy_init()
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %0
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @CURLOPT_URL, align 4
  %14 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %12, i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @CURLOPT_WRITEFUNCTION, align 4
  %17 = load i64, i64* @my_fwrite, align 8
  %18 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %15, i32 %16, i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @CURLOPT_WRITEDATA, align 4
  %21 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %19, i32 %20, %struct.FtpFile* %4)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %24 = call i32 (i32*, i32, ...) @curl_easy_setopt(i32* %22, i32 %23, i64 1)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @curl_easy_perform(i32* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @curl_easy_cleanup(i32* %27)
  %29 = load i32, i32* @CURLE_OK, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %11
  br label %37

37:                                               ; preds = %36, %0
  %38 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.FtpFile, %struct.FtpFile* %4, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @fclose(i64 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = call i32 (...) @curl_global_cleanup()
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @curl_global_init(i32) #2

declare dso_local i32* @curl_easy_init(...) #2

declare dso_local i32 @curl_easy_setopt(i32*, i32, ...) #2

declare dso_local i32 @curl_easy_perform(i32*) #2

declare dso_local i32 @curl_easy_cleanup(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @fclose(i64) #2

declare dso_local i32 @curl_global_cleanup(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
