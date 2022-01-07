; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_timeval.c_Curl_timediff_us.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_timeval.c_Curl_timediff_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curltime = type { i32, i32 }

@TIMEDIFF_T_MAX = common dso_local global i32 0, align 4
@TIMEDIFF_T_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_timediff_us(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.curltime, align 4
  %5 = alloca %struct.curltime, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.curltime* %4 to i64*
  store i64 %0, i64* %7, align 4
  %8 = bitcast %struct.curltime* %5 to i64*
  store i64 %1, i64* %8, align 4
  %9 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.curltime, %struct.curltime* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TIMEDIFF_T_MAX, align 4
  %16 = sdiv i32 %15, 1000000
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @TIMEDIFF_T_MAX, align 4
  store i32 %19, i32* %3, align 4
  br label %37

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @TIMEDIFF_T_MIN, align 4
  %23 = sdiv i32 %22, 1000000
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @TIMEDIFF_T_MIN, align 4
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 1000000
  %31 = getelementptr inbounds %struct.curltime, %struct.curltime* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %30, %32
  %34 = getelementptr inbounds %struct.curltime, %struct.curltime* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %33, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %25, %18
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
