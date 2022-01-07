; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_meets_timecondition.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_meets_timecondition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"The requested document is not new enough\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"The requested document is not old enough\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_meets_timecondition(%struct.Curl_easy* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i64, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %10 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8, %2
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %8
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %22 [
    i32 129, label %21
    i32 128, label %38
  ]

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %16, %21
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %23, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %31 = call i32 @infof(%struct.Curl_easy* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %56

37:                                               ; preds = %22
  br label %54

38:                                               ; preds = %16
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %41 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sge i64 %39, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %47 = call i32 @infof(%struct.Curl_easy* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @TRUE, align 4
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %45, %29, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
