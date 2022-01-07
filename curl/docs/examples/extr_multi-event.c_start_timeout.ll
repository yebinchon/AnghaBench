; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-event.c_start_timeout.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-event.c_start_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @start_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_timeout(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32, i32* @timeout, align 4
  %12 = call i32 @evtimer_del(i32 %11)
  br label %29

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i64 1, i64* %5, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i64, i64* %5, align 8
  %19 = sdiv i64 %18, 1000
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = srem i64 %21, 1000
  %23 = mul nsw i64 %22, 1000
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* @timeout, align 4
  %26 = call i32 @evtimer_del(i32 %25)
  %27 = load i32, i32* @timeout, align 4
  %28 = call i32 @evtimer_add(i32 %27, %struct.timeval* %7)
  br label %29

29:                                               ; preds = %17, %10
  ret i32 0
}

declare dso_local i32 @evtimer_del(i32) #1

declare dso_local i32 @evtimer_add(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
