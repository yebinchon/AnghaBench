; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ghiper.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ghiper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@G_IO_IN = common dso_local global i32 0, align 4
@fifo_cb = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CURLMOPT_SOCKETFUNCTION = common dso_local global i32 0, align 4
@sock_cb = common dso_local global %struct.TYPE_7__* null, align 8
@CURLMOPT_SOCKETDATA = common dso_local global i32 0, align 4
@CURLMOPT_TIMERFUNCTION = common dso_local global i32 0, align 4
@update_timeout_cb = common dso_local global %struct.TYPE_7__* null, align 8
@CURLMOPT_TIMERDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call %struct.TYPE_7__* @g_malloc0(i32 4)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = call i32 (...) @init_fifo()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32* @g_io_channel_unix_new(i32 %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* @G_IO_IN, align 4
  %16 = load i32, i32* @fifo_cb, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = call i32 @g_io_add_watch(i32* %14, i32 %15, i32 %16, %struct.TYPE_7__* %17)
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32* @g_main_loop_new(i32* null, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = call i32 (...) @curl_multi_init()
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CURLMOPT_SOCKETFUNCTION, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sock_cb, align 8
  %29 = call i32 @curl_multi_setopt(i32 %26, i32 %27, %struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CURLMOPT_SOCKETDATA, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = call i32 @curl_multi_setopt(i32 %32, i32 %33, %struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CURLMOPT_TIMERFUNCTION, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @update_timeout_cb, align 8
  %41 = call i32 @curl_multi_setopt(i32 %38, i32 %39, %struct.TYPE_7__* %40)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CURLMOPT_TIMERDATA, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = call i32 @curl_multi_setopt(i32 %44, i32 %45, %struct.TYPE_7__* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @g_main_loop_run(i32* %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @curl_multi_cleanup(i32 %52)
  ret i32 0
}

declare dso_local %struct.TYPE_7__* @g_malloc0(i32) #1

declare dso_local i32 @init_fifo(...) #1

declare dso_local i32* @g_io_channel_unix_new(i32) #1

declare dso_local i32 @g_io_add_watch(i32*, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32* @g_main_loop_new(i32*, i32) #1

declare dso_local i32 @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_setopt(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @g_main_loop_run(i32*) #1

declare dso_local i32 @curl_multi_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
