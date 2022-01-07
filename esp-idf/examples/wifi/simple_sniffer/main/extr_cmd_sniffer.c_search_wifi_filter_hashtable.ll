; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_search_wifi_filter_hashtable.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/simple_sniffer/main/extr_cmd_sniffer.c_search_wifi_filter_hashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@SNIFFER_WLAN_FILTER_MAX = common dso_local global i64 0, align 8
@wifi_filter_hash_table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @search_wifi_filter_hashtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @search_wifi_filter_hashtable(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i64, i64* @SNIFFER_WLAN_FILTER_MAX, align 8
  %11 = call i64 @hash_func(i8* %9, i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %35, %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wifi_filter_hash_table, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @strncmp(i32 %18, i8* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @SNIFFER_WLAN_FILTER_MAX, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %42

35:                                               ; preds = %30
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wifi_filter_hash_table, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %36, %34
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @hash_func(i8*, i64) #1

declare dso_local i64 @strncmp(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
