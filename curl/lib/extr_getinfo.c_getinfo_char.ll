; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_char.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8**, i64 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRING_RTSP_SESSION_ID = common dso_local global i64 0, align 8
@CURLE_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, i8**)* @getinfo_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinfo_char(%struct.Curl_easy* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %76 [
    i32 135, label %9
    i32 136, label %24
    i32 131, label %30
    i32 134, label %37
    i32 130, label %43
    i32 132, label %49
    i32 133, label %55
    i32 129, label %61
    i32 128, label %70
  ]

9:                                                ; preds = %3
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  br label %21

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20, %15
  %22 = phi i8* [ %19, %15 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %20 ]
  %23 = load i8**, i8*** %7, align 8
  store i8* %22, i8** %23, align 8
  br label %78

24:                                               ; preds = %3
  %25 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %26 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %7, align 8
  store i8* %28, i8** %29, align 8
  br label %78

30:                                               ; preds = %3
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i8**, i8*** %7, align 8
  store i8* %35, i8** %36, align 8
  br label %78

37:                                               ; preds = %3
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %78

43:                                               ; preds = %3
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  br label %78

49:                                               ; preds = %3
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %51 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  br label %78

55:                                               ; preds = %3
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  br label %78

61:                                               ; preds = %3
  %62 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %63 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i64, i64* @STRING_RTSP_SESSION_ID, align 8
  %67 = getelementptr inbounds i8*, i8** %65, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i8**, i8*** %7, align 8
  store i8* %68, i8** %69, align 8
  br label %78

70:                                               ; preds = %3
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %72 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %7, align 8
  store i8* %74, i8** %75, align 8
  br label %78

76:                                               ; preds = %3
  %77 = load i32, i32* @CURLE_UNKNOWN_OPTION, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %70, %61, %55, %49, %43, %37, %30, %24, %21
  %79 = load i32, i32* @CURLE_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
