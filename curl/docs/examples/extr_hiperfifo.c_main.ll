; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_hiperfifo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@timer_cb = common dso_local global i32 0, align 4
@CURLMOPT_SOCKETFUNCTION = common dso_local global i32 0, align 4
@sock_cb = common dso_local global %struct.TYPE_9__* null, align 8
@CURLMOPT_SOCKETDATA = common dso_local global i32 0, align 4
@CURLMOPT_TIMERFUNCTION = common dso_local global i32 0, align 4
@multi_timer_cb = common dso_local global %struct.TYPE_9__* null, align 8
@CURLMOPT_TIMERDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_9__* %6, i32 0, i32 12)
  %10 = call i32 (...) @event_base_new()
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = call i32 @init_fifo(%struct.TYPE_9__* %6)
  %13 = call i32 (...) @curl_multi_init()
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @timer_cb, align 4
  %19 = call i32 @evtimer_assign(i32* %15, i32 %17, i32 %18, %struct.TYPE_9__* %6)
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CURLMOPT_SOCKETFUNCTION, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @sock_cb, align 8
  %24 = call i32 @curl_multi_setopt(i32 %21, i32 %22, %struct.TYPE_9__* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CURLMOPT_SOCKETDATA, align 4
  %28 = call i32 @curl_multi_setopt(i32 %26, i32 %27, %struct.TYPE_9__* %6)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CURLMOPT_TIMERFUNCTION, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** @multi_timer_cb, align 8
  %33 = call i32 @curl_multi_setopt(i32 %30, i32 %31, %struct.TYPE_9__* %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CURLMOPT_TIMERDATA, align 4
  %37 = call i32 @curl_multi_setopt(i32 %35, i32 %36, %struct.TYPE_9__* %6)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @event_base_dispatch(i32 %39)
  %41 = call i32 @clean_fifo(%struct.TYPE_9__* %6)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %43 = call i32 @event_del(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @event_base_free(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @curl_multi_cleanup(i32 %48)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @event_base_new(...) #1

declare dso_local i32 @init_fifo(%struct.TYPE_9__*) #1

declare dso_local i32 @curl_multi_init(...) #1

declare dso_local i32 @evtimer_assign(i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @curl_multi_setopt(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @clean_fifo(%struct.TYPE_9__*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_base_free(i32) #1

declare dso_local i32 @curl_multi_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
