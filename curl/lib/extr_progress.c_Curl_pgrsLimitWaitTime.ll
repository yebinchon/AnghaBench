; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsLimitWaitTime.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_progress.c_Curl_pgrsLimitWaitTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32 }

@CURL_OFF_T_MAX = common dso_local global i32 0, align 4
@TIMEDIFF_T_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_pgrsLimitWaitTime(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.curltime, align 4
  %8 = alloca %struct.curltime, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.curltime, %struct.curltime* %7, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  %16 = getelementptr inbounds %struct.curltime, %struct.curltime* %8, i32 0, i32 0
  store i32 %4, i32* %16, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %5
  store i32 0, i32* %6, align 4
  br label %65

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @CURL_OFF_T_MAX, align 4
  %29 = sdiv i32 %28, 1000
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = call i32 @CURL_OFF_T_C(i32 1000)
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %13, align 4
  br label %51

37:                                               ; preds = %26
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @TIMEDIFF_T_MAX, align 4
  %43 = sdiv i32 %42, 1000
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 %46, 1000
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @TIMEDIFF_T_MAX, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %45
  br label %51

51:                                               ; preds = %50, %31
  %52 = getelementptr inbounds %struct.curltime, %struct.curltime* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.curltime, %struct.curltime* %7, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @Curl_timediff(i32 %53, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %60, %25
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @CURL_OFF_T_C(i32) #1

declare dso_local i32 @Curl_timediff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
