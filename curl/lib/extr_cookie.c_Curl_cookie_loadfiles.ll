; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_loadfiles.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_loadfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.CookieInfo*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.curl_slist* }
%struct.curl_slist = type { %struct.curl_slist*, i32 }
%struct.CookieInfo = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CURL_LOCK_DATA_COOKIE = common dso_local global i32 0, align 4
@CURL_LOCK_ACCESS_SINGLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ignoring failed cookie_init for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_cookie_loadfiles(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca %struct.CookieInfo*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %5 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %6 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  store %struct.curl_slist* %8, %struct.curl_slist** %3, align 8
  %9 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %10 = icmp ne %struct.curl_slist* %9, null
  br i1 %10, label %11, label %60

11:                                               ; preds = %1
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %13 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %14 = load i32, i32* @CURL_LOCK_ACCESS_SINGLE, align 4
  %15 = call i32 @Curl_share_lock(%struct.Curl_easy* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %44, %11
  %17 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %18 = icmp ne %struct.curl_slist* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %21 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %22 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 1
  %26 = load %struct.CookieInfo*, %struct.CookieInfo** %25, align 8
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.CookieInfo* @Curl_cookie_init(%struct.Curl_easy* %20, i32 %23, %struct.CookieInfo* %26, i32 %30)
  store %struct.CookieInfo* %31, %struct.CookieInfo** %4, align 8
  %32 = load %struct.CookieInfo*, %struct.CookieInfo** %4, align 8
  %33 = icmp ne %struct.CookieInfo* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %19
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %36 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %37 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @infof(%struct.Curl_easy* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %44

40:                                               ; preds = %19
  %41 = load %struct.CookieInfo*, %struct.CookieInfo** %4, align 8
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %43 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %42, i32 0, i32 1
  store %struct.CookieInfo* %41, %struct.CookieInfo** %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %46 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %45, i32 0, i32 0
  %47 = load %struct.curl_slist*, %struct.curl_slist** %46, align 8
  store %struct.curl_slist* %47, %struct.curl_slist** %3, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.curl_slist*, %struct.curl_slist** %51, align 8
  %53 = call i32 @curl_slist_free_all(%struct.curl_slist* %52)
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.curl_slist* null, %struct.curl_slist** %56, align 8
  %57 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %58 = load i32, i32* @CURL_LOCK_DATA_COOKIE, align 4
  %59 = call i32 @Curl_share_unlock(%struct.Curl_easy* %57, i32 %58)
  br label %60

60:                                               ; preds = %48, %1
  ret void
}

declare dso_local i32 @Curl_share_lock(%struct.Curl_easy*, i32, i32) #1

declare dso_local %struct.CookieInfo* @Curl_cookie_init(%struct.Curl_easy*, i32, %struct.CookieInfo*, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local i32 @Curl_share_unlock(%struct.Curl_easy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
