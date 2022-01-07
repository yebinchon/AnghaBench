; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_slist.c_Curl_slist_duplicate.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_slist.c_Curl_slist_duplicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { %struct.curl_slist*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.curl_slist* @Curl_slist_duplicate(%struct.curl_slist* %0) #0 {
  %2 = alloca %struct.curl_slist*, align 8
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca %struct.curl_slist*, align 8
  store %struct.curl_slist* %0, %struct.curl_slist** %3, align 8
  store %struct.curl_slist* null, %struct.curl_slist** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %8 = icmp ne %struct.curl_slist* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %11 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %12 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.curl_slist* @curl_slist_append(%struct.curl_slist* %10, i32 %13)
  store %struct.curl_slist* %14, %struct.curl_slist** %5, align 8
  %15 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  %16 = icmp ne %struct.curl_slist* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %9
  %18 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %19 = call i32 @curl_slist_free_all(%struct.curl_slist* %18)
  store %struct.curl_slist* null, %struct.curl_slist** %2, align 8
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.curl_slist*, %struct.curl_slist** %5, align 8
  store %struct.curl_slist* %21, %struct.curl_slist** %4, align 8
  %22 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  %23 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %22, i32 0, i32 0
  %24 = load %struct.curl_slist*, %struct.curl_slist** %23, align 8
  store %struct.curl_slist* %24, %struct.curl_slist** %3, align 8
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  store %struct.curl_slist* %26, %struct.curl_slist** %2, align 8
  br label %27

27:                                               ; preds = %25, %17
  %28 = load %struct.curl_slist*, %struct.curl_slist** %2, align 8
  ret %struct.curl_slist* %28
}

declare dso_local %struct.curl_slist* @curl_slist_append(%struct.curl_slist*, i32) #1

declare dso_local i32 @curl_slist_free_all(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
