; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_mime.c_slist_size.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_mime.c_slist_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i8*, %struct.curl_slist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.curl_slist*, i64, i8*)* @slist_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @slist_size(%struct.curl_slist* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.curl_slist* %0, %struct.curl_slist** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12)
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i64 [ %13, %11 ], [ 0, %14 ]
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %39, %15
  %18 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %19 = icmp ne %struct.curl_slist* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @match_header(%struct.curl_slist* %24, i8* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %31 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %29, %23
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %41 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %40, i32 0, i32 1
  %42 = load %struct.curl_slist*, %struct.curl_slist** %41, align 8
  store %struct.curl_slist* %42, %struct.curl_slist** %4, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load i64, i64* %7, align 8
  ret i64 %44
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @match_header(%struct.curl_slist*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
