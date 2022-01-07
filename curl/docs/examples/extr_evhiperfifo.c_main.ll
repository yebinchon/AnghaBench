; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_evhiperfifo.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_evhiperfifo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@timer_cb = common dso_local global i32 0, align 4
@CURLMOPT_SOCKETFUNCTION = common dso_local global i32 0, align 4
@sock_cb = common dso_local global %struct.TYPE_10__* null, align 8
@CURLMOPT_SOCKETDATA = common dso_local global i32 0, align 4
@CURLMOPT_TIMERFUNCTION = common dso_local global i32 0, align 4
@multi_timer_cb = common dso_local global %struct.TYPE_10__* null, align 8
@CURLMOPT_TIMERDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = call i32 @memset(%struct.TYPE_10__* %6, i32 0, i32 24)
  %10 = call i32 @ev_default_loop(i32 0)
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = call i32 @init_fifo(%struct.TYPE_10__* %6)
  %13 = call i32 (...) @curl_multi_init()
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %16 = load i32, i32* @timer_cb, align 4
  %17 = call i32 @ev_timer_init(%struct.TYPE_11__* %15, i32 %16, i32 0, i32 0)
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CURLMOPT_SOCKETFUNCTION, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @sock_cb, align 8
  %26 = call i32 @curl_multi_setopt(i32 %23, i32 %24, %struct.TYPE_10__* %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CURLMOPT_SOCKETDATA, align 4
  %30 = call i32 @curl_multi_setopt(i32 %28, i32 %29, %struct.TYPE_10__* %6)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CURLMOPT_TIMERFUNCTION, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @multi_timer_cb, align 8
  %35 = call i32 @curl_multi_setopt(i32 %32, i32 %33, %struct.TYPE_10__* %34)
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CURLMOPT_TIMERDATA, align 4
  %39 = call i32 @curl_multi_setopt(i32 %37, i32 %38, %struct.TYPE_10__* %6)
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ev_loop(i32 %41, i32 0)
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @curl_multi_cleanup(i32 %44)
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ev_default_loop(i32) #1

declare dso_local i32 @init_fifo(%struct.TYPE_10__*) #1

declare dso_local i32 @curl_multi_init(...) #1

declare dso_local i32 @ev_timer_init(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @curl_multi_setopt(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ev_loop(i32, i32) #1

declare dso_local i32 @curl_multi_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
