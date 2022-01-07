; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_slist.c_curl_slist_free_all.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_slist.c_curl_slist_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32, %struct.curl_slist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @curl_slist_free_all(%struct.curl_slist* %0) #0 {
  %2 = alloca %struct.curl_slist*, align 8
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  store %struct.curl_slist* %0, %struct.curl_slist** %2, align 8
  %5 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  %6 = icmp ne %struct.curl_slist* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  store %struct.curl_slist* %9, %struct.curl_slist** %4, align 8
  br label %10

10:                                               ; preds = %21, %8
  %11 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %12 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %11, i32 0, i32 1
  %13 = load %struct.curl_slist*, %struct.curl_slist** %12, align 8
  store %struct.curl_slist* %13, %struct.curl_slist** %3, align 8
  %14 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %15 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Curl_safefree(i32 %16)
  %18 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %19 = call i32 @free(%struct.curl_slist* %18)
  %20 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  store %struct.curl_slist* %20, %struct.curl_slist** %4, align 8
  br label %21

21:                                               ; preds = %10
  %22 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %23 = icmp ne %struct.curl_slist* %22, null
  br i1 %23, label %10, label %24

24:                                               ; preds = %7, %21
  ret void
}

declare dso_local i32 @Curl_safefree(i32) #1

declare dso_local i32 @free(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
