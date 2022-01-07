; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_doh.c_Curl_doh_done.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_doh.c_Curl_doh_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { %struct.Curl_easy* }

@.str = private unnamed_addr constant [38 x i8] c"a DOH request is completed, %u to go\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"DOH request %s\0A\00", align 1
@EXPIRE_RUN_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Curl_easy*, i64)* @Curl_doh_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Curl_doh_done(%struct.Curl_easy* %0, i64 %1) #0 {
  %3 = alloca %struct.Curl_easy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.Curl_easy*, %struct.Curl_easy** %3, align 8
  %7 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  store %struct.Curl_easy* %9, %struct.Curl_easy** %5, align 8
  %10 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %11 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @infof(%struct.Curl_easy* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @curl_easy_strerror(i64 %27)
  %29 = call i32 @infof(%struct.Curl_easy* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %32 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %39 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @curl_slist_free_all(i32* %42)
  %44 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %45 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.Curl_easy*, %struct.Curl_easy** %5, align 8
  %49 = load i32, i32* @EXPIRE_RUN_NOW, align 4
  %50 = call i32 @Curl_expire(%struct.Curl_easy* %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %37, %30
  ret i32 0
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @curl_easy_strerror(i64) #1

declare dso_local i32 @curl_slist_free_all(i32*) #1

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
