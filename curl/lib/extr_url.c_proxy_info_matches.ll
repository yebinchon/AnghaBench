; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_proxy_info_matches.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_proxy_info_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proxy_info*, %struct.proxy_info*)* @proxy_info_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_info_matches(%struct.proxy_info* %0, %struct.proxy_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proxy_info*, align 8
  %5 = alloca %struct.proxy_info*, align 8
  store %struct.proxy_info* %0, %struct.proxy_info** %4, align 8
  store %struct.proxy_info* %1, %struct.proxy_info** %5, align 8
  %6 = load %struct.proxy_info*, %struct.proxy_info** %4, align 8
  %7 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.proxy_info*, %struct.proxy_info** %5, align 8
  %10 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.proxy_info*, %struct.proxy_info** %4, align 8
  %15 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.proxy_info*, %struct.proxy_info** %5, align 8
  %18 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %13
  %22 = load %struct.proxy_info*, %struct.proxy_info** %4, align 8
  %23 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.proxy_info*, %struct.proxy_info** %5, align 8
  %27 = getelementptr inbounds %struct.proxy_info, %struct.proxy_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @Curl_safe_strcasecompare(i32 %25, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %21, %13, %2
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @Curl_safe_strcasecompare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
