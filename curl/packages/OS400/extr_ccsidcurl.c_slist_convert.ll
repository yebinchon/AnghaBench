; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_slist_convert.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_slist_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32, %struct.curl_slist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.curl_slist* (i32, %struct.curl_slist*, i32)* @slist_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.curl_slist* @slist_convert(i32 %0, %struct.curl_slist* %1, i32 %2) #0 {
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.curl_slist*, align 8
  %9 = alloca %struct.curl_slist*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.curl_slist* %1, %struct.curl_slist** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.curl_slist* null, %struct.curl_slist** %8, align 8
  br label %11

11:                                               ; preds = %39, %3
  %12 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %13 = icmp ne %struct.curl_slist* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %17 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @dynconvert(i32 %15, i32 %18, i32 -1, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %25 = call i32 @curl_slist_free_all(%struct.curl_slist* %24)
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  br label %45

26:                                               ; preds = %14
  %27 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call %struct.curl_slist* @Curl_slist_append_nodup(%struct.curl_slist* %27, i8* %28)
  store %struct.curl_slist* %29, %struct.curl_slist** %9, align 8
  %30 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  %31 = icmp ne %struct.curl_slist* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  %34 = call i32 @curl_slist_free_all(%struct.curl_slist* %33)
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @free(i8* %35)
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  br label %45

37:                                               ; preds = %26
  %38 = load %struct.curl_slist*, %struct.curl_slist** %9, align 8
  store %struct.curl_slist* %38, %struct.curl_slist** %8, align 8
  br label %39

39:                                               ; preds = %37
  %40 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %41 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %40, i32 0, i32 1
  %42 = load %struct.curl_slist*, %struct.curl_slist** %41, align 8
  store %struct.curl_slist* %42, %struct.curl_slist** %6, align 8
  br label %11

43:                                               ; preds = %11
  %44 = load %struct.curl_slist*, %struct.curl_slist** %8, align 8
  store %struct.curl_slist* %44, %struct.curl_slist** %4, align 8
  br label %45

45:                                               ; preds = %43, %32, %23
  %46 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  ret %struct.curl_slist* %46
}

declare dso_local i8* @dynconvert(i32, i32, i32, i32) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

declare dso_local %struct.curl_slist* @Curl_slist_append_nodup(%struct.curl_slist*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
