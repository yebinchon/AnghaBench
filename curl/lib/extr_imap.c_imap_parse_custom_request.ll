; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_parse_custom_request.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_parse_custom_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8** }
%struct.TYPE_3__ = type { %struct.IMAP* }
%struct.IMAP = type { i8*, i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@STRING_CUSTOMREQUEST = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*)* @imap_parse_custom_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imap_parse_custom_request(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca %struct.IMAP*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  %8 = load i64, i64* @CURLE_OK, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 0
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %4, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.IMAP*, %struct.IMAP** %14, align 8
  store %struct.IMAP* %15, %struct.IMAP** %5, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* @STRING_CUSTOMREQUEST, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %82

25:                                               ; preds = %1
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %29 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %28, i32 0, i32 0
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @Curl_urldecode(%struct.Curl_easy* %26, i8* %27, i32 0, i8** %29, i32* null, i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %25
  %35 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %36 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %50, %34
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 32
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  br label %38

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strdup(i8* %58)
  %60 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %61 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %63 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %67 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = ptrtoint i8* %65 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %64, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load %struct.IMAP*, %struct.IMAP** %5, align 8
  %74 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %57
  %78 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %57
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80, %25
  br label %82

82:                                               ; preds = %81, %1
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i8*, i32, i8**, i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
