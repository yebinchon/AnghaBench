; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_cookie_list.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_cookie_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.Cookie** }
%struct.Cookie = type { i32, %struct.Cookie* }

@COOKIE_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.curl_slist* (%struct.Curl_easy*)* @cookie_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.curl_slist* @cookie_list(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.curl_slist*, align 8
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  %6 = alloca %struct.Cookie*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp eq %struct.TYPE_2__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  store %struct.curl_slist* null, %struct.curl_slist** %2, align 8
  br label %76

21:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %71, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @COOKIE_HASH_SIZE, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.Cookie**, %struct.Cookie*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %31, i64 %33
  %35 = load %struct.Cookie*, %struct.Cookie** %34, align 8
  store %struct.Cookie* %35, %struct.Cookie** %6, align 8
  br label %36

36:                                               ; preds = %66, %26
  %37 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %38 = icmp ne %struct.Cookie* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %41 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %66

45:                                               ; preds = %39
  %46 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %47 = call i8* @get_netscape_format(%struct.Cookie* %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %52 = call i32 @curl_slist_free_all(%struct.curl_slist* %51)
  store %struct.curl_slist* null, %struct.curl_slist** %2, align 8
  br label %76

53:                                               ; preds = %45
  %54 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct.curl_slist* @Curl_slist_append_nodup(%struct.curl_slist* %54, i8* %55)
  store %struct.curl_slist* %56, %struct.curl_slist** %5, align 8
  %57 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %58 = icmp ne %struct.curl_slist* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %63 = call i32 @curl_slist_free_all(%struct.curl_slist* %62)
  store %struct.curl_slist* null, %struct.curl_slist** %2, align 8
  br label %76

64:                                               ; preds = %53
  %65 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  store %struct.curl_slist* %65, %struct.curl_slist** %4, align 8
  br label %66

66:                                               ; preds = %64, %44
  %67 = load %struct.Cookie*, %struct.Cookie** %6, align 8
  %68 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %67, i32 0, i32 1
  %69 = load %struct.Cookie*, %struct.Cookie** %68, align 8
  store %struct.Cookie* %69, %struct.Cookie** %6, align 8
  br label %36

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  store %struct.curl_slist* %75, %struct.curl_slist** %2, align 8
  br label %76

76:                                               ; preds = %74, %59, %50, %20
  %77 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  ret %struct.curl_slist* %77
}

declare dso_local i8* @get_netscape_format(%struct.Cookie*) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local %struct.curl_slist* @Curl_slist_append_nodup(%struct.curl_slist*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
