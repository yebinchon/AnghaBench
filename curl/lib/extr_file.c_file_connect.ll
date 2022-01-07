; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_file.c_file_connect.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_file.c_file_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.FILEPROTO* }
%struct.FILEPROTO = type { i8*, i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Couldn't open file %s\00", align 1
@CURLE_FILE_COULDNT_READ_FILE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@O_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @file_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @file_connect(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.FILEPROTO*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %13 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %12, i32 0, i32 0
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  store %struct.Curl_easy* %14, %struct.Curl_easy** %6, align 8
  %15 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %16 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.FILEPROTO*, %struct.FILEPROTO** %17, align 8
  store %struct.FILEPROTO* %18, %struct.FILEPROTO** %8, align 8
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i64 @Curl_urldecode(%struct.Curl_easy* %19, i32 %24, i32 0, i8** %7, i64* %10, i32 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %3, align 8
  br label %78

31:                                               ; preds = %2
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @memchr(i8* %32, i32 0, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @Curl_safefree(i8* %37)
  %39 = load i64, i64* @CURLE_URL_MALFORMAT, align 8
  store i64 %39, i64* %3, align 8
  br label %78

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @O_RDONLY, align 4
  %43 = call i32 @open_readonly(i8* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.FILEPROTO*, %struct.FILEPROTO** %8, align 8
  %46 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.FILEPROTO*, %struct.FILEPROTO** %8, align 8
  %49 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.FILEPROTO*, %struct.FILEPROTO** %8, align 8
  %52 = getelementptr inbounds %struct.FILEPROTO, %struct.FILEPROTO* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %54 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %40
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @failf(%struct.Curl_easy* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %70 = load i64, i64* @CURLE_FILE_COULDNT_READ_FILE, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = call i32 @file_done(%struct.connectdata* %69, i64 %70, i32 %71)
  %73 = load i64, i64* @CURLE_FILE_COULDNT_READ_FILE, align 8
  store i64 %73, i64* %3, align 8
  br label %78

74:                                               ; preds = %58, %40
  %75 = load i32, i32* @TRUE, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64, i64* @CURLE_OK, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %74, %61, %36, %29
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i32, i32, i8**, i64*, i32) #1

declare dso_local i64 @memchr(i8*, i32, i64) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @open_readonly(i8*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @file_done(%struct.connectdata*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
