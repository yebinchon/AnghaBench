; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_slist.c_Curl_slist_append_nodup.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_slist.c_Curl_slist_append_nodup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i8*, %struct.curl_slist* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.curl_slist* @Curl_slist_append_nodup(%struct.curl_slist* %0, i8* %1) #0 {
  %3 = alloca %struct.curl_slist*, align 8
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.curl_slist*, align 8
  %7 = alloca %struct.curl_slist*, align 8
  store %struct.curl_slist* %0, %struct.curl_slist** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @DEBUGASSERT(i8* %8)
  %10 = call %struct.curl_slist* @malloc(i32 16)
  store %struct.curl_slist* %10, %struct.curl_slist** %7, align 8
  %11 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %12 = icmp ne %struct.curl_slist* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.curl_slist* null, %struct.curl_slist** %3, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %16 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %15, i32 0, i32 1
  store %struct.curl_slist* null, %struct.curl_slist** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %19 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %21 = icmp ne %struct.curl_slist* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  store %struct.curl_slist* %23, %struct.curl_slist** %3, align 8
  br label %31

24:                                               ; preds = %14
  %25 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %26 = call %struct.curl_slist* @slist_get_last(%struct.curl_slist* %25)
  store %struct.curl_slist* %26, %struct.curl_slist** %6, align 8
  %27 = load %struct.curl_slist*, %struct.curl_slist** %7, align 8
  %28 = load %struct.curl_slist*, %struct.curl_slist** %6, align 8
  %29 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %28, i32 0, i32 1
  store %struct.curl_slist* %27, %struct.curl_slist** %29, align 8
  %30 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  store %struct.curl_slist* %30, %struct.curl_slist** %3, align 8
  br label %31

31:                                               ; preds = %24, %22, %13
  %32 = load %struct.curl_slist*, %struct.curl_slist** %3, align 8
  ret %struct.curl_slist* %32
}

declare dso_local i32 @DEBUGASSERT(i8*) #1

declare dso_local %struct.curl_slist* @malloc(i32) #1

declare dso_local %struct.curl_slist* @slist_get_last(%struct.curl_slist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
