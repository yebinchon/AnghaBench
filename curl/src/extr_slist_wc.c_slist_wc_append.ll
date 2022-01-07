; ModuleID = '/home/carl/AnghaBench/curl/src/extr_slist_wc.c_slist_wc_append.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_slist_wc.c_slist_wc_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist_wc = type { %struct.curl_slist*, %struct.curl_slist* }
%struct.curl_slist = type { %struct.curl_slist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slist_wc* @slist_wc_append(%struct.slist_wc* %0, i8* %1) #0 {
  %3 = alloca %struct.slist_wc*, align 8
  %4 = alloca %struct.slist_wc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  store %struct.slist_wc* %0, %struct.slist_wc** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call %struct.curl_slist* @curl_slist_append(i32* null, i8* %7)
  store %struct.curl_slist* %8, %struct.curl_slist** %6, align 8
  %9 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %10 = icmp ne %struct.curl_slist* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.slist_wc* null, %struct.slist_wc** %3, align 8
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %14 = icmp ne %struct.slist_wc* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = call %struct.slist_wc* @malloc(i32 16)
  store %struct.slist_wc* %16, %struct.slist_wc** %4, align 8
  %17 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %18 = icmp ne %struct.slist_wc* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %21 = call i32 @curl_slist_free_all(%struct.curl_slist* %20)
  store %struct.slist_wc* null, %struct.slist_wc** %3, align 8
  br label %44

22:                                               ; preds = %15
  %23 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %24 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %25 = getelementptr inbounds %struct.slist_wc, %struct.slist_wc* %24, i32 0, i32 1
  store %struct.curl_slist* %23, %struct.curl_slist** %25, align 8
  %26 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %27 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %28 = getelementptr inbounds %struct.slist_wc, %struct.slist_wc* %27, i32 0, i32 0
  store %struct.curl_slist* %26, %struct.curl_slist** %28, align 8
  %29 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  store %struct.slist_wc* %29, %struct.slist_wc** %3, align 8
  br label %44

30:                                               ; preds = %12
  %31 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %32 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %33 = getelementptr inbounds %struct.slist_wc, %struct.slist_wc* %32, i32 0, i32 0
  %34 = load %struct.curl_slist*, %struct.curl_slist** %33, align 8
  %35 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %34, i32 0, i32 0
  store %struct.curl_slist* %31, %struct.curl_slist** %35, align 8
  %36 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %37 = getelementptr inbounds %struct.slist_wc, %struct.slist_wc* %36, i32 0, i32 0
  %38 = load %struct.curl_slist*, %struct.curl_slist** %37, align 8
  %39 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %38, i32 0, i32 0
  %40 = load %struct.curl_slist*, %struct.curl_slist** %39, align 8
  %41 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  %42 = getelementptr inbounds %struct.slist_wc, %struct.slist_wc* %41, i32 0, i32 0
  store %struct.curl_slist* %40, %struct.curl_slist** %42, align 8
  %43 = load %struct.slist_wc*, %struct.slist_wc** %4, align 8
  store %struct.slist_wc* %43, %struct.slist_wc** %3, align 8
  br label %44

44:                                               ; preds = %30, %22, %19, %11
  %45 = load %struct.slist_wc*, %struct.slist_wc** %3, align 8
  ret %struct.slist_wc* %45
}

declare dso_local %struct.curl_slist* @curl_slist_append(i32*, i8*) #1

declare dso_local %struct.slist_wc* @malloc(i32) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
