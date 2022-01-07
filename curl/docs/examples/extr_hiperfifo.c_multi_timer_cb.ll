; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_multi_timer_cb.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_multi_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.timeval = type { i64, i64 }

@MSG_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"multi_timer_cb: Setting timeout to %ld ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_3__*)* @multi_timer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multi_timer_cb(i32* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.timeval, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = sdiv i64 %9, 1000
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = srem i64 %12, 1000
  %14 = mul nsw i64 %13, 1000
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @MSG_OUT, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @evtimer_del(i32* %23)
  br label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @evtimer_add(i32* %27, %struct.timeval* %7)
  br label %29

29:                                               ; preds = %25, %21
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
