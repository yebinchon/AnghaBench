; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_expire_clear.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_multi.c_Curl_expire_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__, %struct.Curl_multi* }
%struct.TYPE_2__ = type { i32, %struct.curl_llist, %struct.curltime }
%struct.curl_llist = type { i64, i32 }
%struct.curltime = type { i64, i64 }
%struct.Curl_multi = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Internal error clearing splay node = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_expire_clear(%struct.Curl_easy* %0) #0 {
  %2 = alloca %struct.Curl_easy*, align 8
  %3 = alloca %struct.Curl_multi*, align 8
  %4 = alloca %struct.curltime*, align 8
  %5 = alloca %struct.curl_llist*, align 8
  %6 = alloca i32, align 4
  store %struct.Curl_easy* %0, %struct.Curl_easy** %2, align 8
  %7 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %8 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %7, i32 0, i32 1
  %9 = load %struct.Curl_multi*, %struct.Curl_multi** %8, align 8
  store %struct.Curl_multi* %9, %struct.Curl_multi** %3, align 8
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store %struct.curltime* %12, %struct.curltime** %4, align 8
  %13 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %14 = icmp ne %struct.Curl_multi* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %62

16:                                               ; preds = %1
  %17 = load %struct.curltime*, %struct.curltime** %4, align 8
  %18 = getelementptr inbounds %struct.curltime, %struct.curltime* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.curltime*, %struct.curltime** %4, align 8
  %23 = getelementptr inbounds %struct.curltime, %struct.curltime* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %21, %16
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store %struct.curl_llist* %29, %struct.curl_llist** %5, align 8
  %30 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %31 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.Curl_multi*, %struct.Curl_multi** %3, align 8
  %37 = getelementptr inbounds %struct.Curl_multi, %struct.Curl_multi* %36, i32 0, i32 0
  %38 = call i32 @Curl_splayremovebyaddr(i32 %32, i32* %35, i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.Curl_easy*, %struct.Curl_easy** %2, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (%struct.Curl_easy*, i8*, ...) @infof(%struct.Curl_easy* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %26
  br label %46

46:                                               ; preds = %51, %45
  %47 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %48 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %53 = load %struct.curl_llist*, %struct.curl_llist** %5, align 8
  %54 = getelementptr inbounds %struct.curl_llist, %struct.curl_llist* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @Curl_llist_remove(%struct.curl_llist* %52, i32 %55, i32* null)
  br label %46

57:                                               ; preds = %46
  %58 = load %struct.curltime*, %struct.curltime** %4, align 8
  %59 = getelementptr inbounds %struct.curltime, %struct.curltime* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load %struct.curltime*, %struct.curltime** %4, align 8
  %61 = getelementptr inbounds %struct.curltime, %struct.curltime* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %15, %57, %21
  ret void
}

declare dso_local i32 @Curl_splayremovebyaddr(i32, i32*, i32*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @Curl_llist_remove(%struct.curl_llist*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
