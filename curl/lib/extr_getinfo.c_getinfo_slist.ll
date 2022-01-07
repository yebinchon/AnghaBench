; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_slist.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_getinfo.c_getinfo_slist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* (%struct.TYPE_5__*, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.Curl_easy = type { %struct.connectdata*, %struct.curl_tlssessioninfo, %struct.TYPE_4__ }
%struct.connectdata = type { %struct.TYPE_5__* }
%struct.curl_tlssessioninfo = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.curl_certinfo }
%struct.curl_certinfo = type { i32 }
%struct.curl_slist = type { i32 }
%union.anon = type { %struct.curl_certinfo* }

@CURLE_UNKNOWN_OPTION = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@CURLSSLBACKEND_NONE = common dso_local global i32 0, align 4
@Curl_ssl = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i32, %struct.curl_slist**)* @getinfo_slist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getinfo_slist(%struct.Curl_easy* %0, i32 %1, %struct.curl_slist** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Curl_easy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.curl_slist**, align 8
  %8 = alloca %union.anon, align 8
  %9 = alloca %struct.curl_tlssessioninfo**, align 8
  %10 = alloca %struct.curl_tlssessioninfo*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.curl_slist** %2, %struct.curl_slist*** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %40 [
    i32 130, label %12
    i32 131, label %16
    i32 132, label %20
    i32 129, label %28
    i32 128, label %28
  ]

12:                                               ; preds = %3
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %14 = call %struct.curl_slist* @Curl_ssl_engines_list(%struct.Curl_easy* %13)
  %15 = load %struct.curl_slist**, %struct.curl_slist*** %7, align 8
  store %struct.curl_slist* %14, %struct.curl_slist** %15, align 8
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %18 = call %struct.curl_slist* @Curl_cookie_list(%struct.Curl_easy* %17)
  %19 = load %struct.curl_slist**, %struct.curl_slist*** %7, align 8
  store %struct.curl_slist* %18, %struct.curl_slist** %19, align 8
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = bitcast %union.anon* %8 to %struct.curl_certinfo**
  store %struct.curl_certinfo* %23, %struct.curl_certinfo** %24, align 8
  %25 = bitcast %union.anon* %8 to %struct.curl_slist**
  %26 = load %struct.curl_slist*, %struct.curl_slist** %25, align 8
  %27 = load %struct.curl_slist**, %struct.curl_slist*** %7, align 8
  store %struct.curl_slist* %26, %struct.curl_slist** %27, align 8
  br label %42

28:                                               ; preds = %3, %3
  %29 = load %struct.curl_slist**, %struct.curl_slist*** %7, align 8
  %30 = bitcast %struct.curl_slist** %29 to %struct.curl_tlssessioninfo**
  store %struct.curl_tlssessioninfo** %30, %struct.curl_tlssessioninfo*** %9, align 8
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 1
  store %struct.curl_tlssessioninfo* %32, %struct.curl_tlssessioninfo** %10, align 8
  %33 = load %struct.curl_tlssessioninfo*, %struct.curl_tlssessioninfo** %10, align 8
  %34 = load %struct.curl_tlssessioninfo**, %struct.curl_tlssessioninfo*** %9, align 8
  store %struct.curl_tlssessioninfo* %33, %struct.curl_tlssessioninfo** %34, align 8
  %35 = call i32 (...) @Curl_ssl_backend()
  %36 = load %struct.curl_tlssessioninfo*, %struct.curl_tlssessioninfo** %10, align 8
  %37 = getelementptr inbounds %struct.curl_tlssessioninfo, %struct.curl_tlssessioninfo* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.curl_tlssessioninfo*, %struct.curl_tlssessioninfo** %10, align 8
  %39 = getelementptr inbounds %struct.curl_tlssessioninfo, %struct.curl_tlssessioninfo* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %42

40:                                               ; preds = %3
  %41 = load i32, i32* @CURLE_UNKNOWN_OPTION, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %28, %20, %16, %12
  %43 = load i32, i32* @CURLE_OK, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.curl_slist* @Curl_ssl_engines_list(%struct.Curl_easy*) #1

declare dso_local %struct.curl_slist* @Curl_cookie_list(%struct.Curl_easy*) #1

declare dso_local i32 @Curl_ssl_backend(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
