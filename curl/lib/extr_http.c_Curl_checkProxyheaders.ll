; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_checkProxyheaders.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_checkProxyheaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_3__, %struct.Curl_easy* }
%struct.TYPE_3__ = type { i64 }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.curl_slist*, %struct.curl_slist*, i64 }
%struct.curl_slist = type { i8*, %struct.curl_slist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_checkProxyheaders(%struct.connectdata* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 1
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  store %struct.Curl_easy* %13, %struct.Curl_easy** %8, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %2
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %27 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.curl_slist*, %struct.curl_slist** %28, align 8
  br label %35

30:                                               ; preds = %19, %2
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.curl_slist*, %struct.curl_slist** %33, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi %struct.curl_slist* [ %29, %25 ], [ %34, %30 ]
  store %struct.curl_slist* %36, %struct.curl_slist** %6, align 8
  br label %37

37:                                               ; preds = %62, %35
  %38 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %39 = icmp ne %struct.curl_slist* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %42 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @strncasecompare(i8* %43, i8* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %50 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = call i64 @Curl_headersep(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %59 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %3, align 8
  br label %67

61:                                               ; preds = %48, %40
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %64 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %63, i32 0, i32 1
  %65 = load %struct.curl_slist*, %struct.curl_slist** %64, align 8
  store %struct.curl_slist* %65, %struct.curl_slist** %6, align 8
  br label %37

66:                                               ; preds = %37
  store i8* null, i8** %3, align 8
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecompare(i8*, i8*, i64) #1

declare dso_local i64 @Curl_headersep(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
