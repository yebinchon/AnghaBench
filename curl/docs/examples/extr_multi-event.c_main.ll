; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_multi-event.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_multi-event.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not init curl\0A\00", align 1
@base = common dso_local global i32 0, align 4
@on_timeout = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@curl_handle = common dso_local global i32 0, align 4
@CURLMOPT_SOCKETFUNCTION = common dso_local global i32 0, align 4
@handle_socket = common dso_local global i32 0, align 4
@CURLMOPT_TIMERFUNCTION = common dso_local global i32 0, align 4
@start_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

9:                                                ; preds = %2
  %10 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %11 = call i64 @curl_global_init(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %53

16:                                               ; preds = %9
  %17 = call i32 (...) @event_base_new()
  store i32 %17, i32* @base, align 4
  %18 = load i32, i32* @base, align 4
  %19 = load i32, i32* @on_timeout, align 4
  %20 = call i32 @evtimer_new(i32 %18, i32 %19, i32* null)
  store i32 %20, i32* @timeout, align 4
  %21 = call i32 (...) @curl_multi_init()
  store i32 %21, i32* @curl_handle, align 4
  %22 = load i32, i32* @curl_handle, align 4
  %23 = load i32, i32* @CURLMOPT_SOCKETFUNCTION, align 4
  %24 = load i32, i32* @handle_socket, align 4
  %25 = call i32 @curl_multi_setopt(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @curl_handle, align 4
  %27 = load i32, i32* @CURLMOPT_TIMERFUNCTION, align 4
  %28 = load i32, i32* @start_timeout, align 4
  %29 = call i32 @curl_multi_setopt(i32 %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %34, %16
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp sgt i32 %31, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @add_download(i8* %39, i32 %40)
  br label %30

42:                                               ; preds = %30
  %43 = load i32, i32* @base, align 4
  %44 = call i32 @event_base_dispatch(i32 %43)
  %45 = load i32, i32* @curl_handle, align 4
  %46 = call i32 @curl_multi_cleanup(i32 %45)
  %47 = load i32, i32* @timeout, align 4
  %48 = call i32 @event_free(i32 %47)
  %49 = load i32, i32* @base, align 4
  %50 = call i32 @event_base_free(i32 %49)
  %51 = call i32 (...) @libevent_global_shutdown()
  %52 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %42, %13, %8
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @curl_global_init(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @event_base_new(...) #1

declare dso_local i32 @evtimer_new(i32, i32, i32*) #1

declare dso_local i32 @curl_multi_init(...) #1

declare dso_local i32 @curl_multi_setopt(i32, i32, i32) #1

declare dso_local i32 @add_download(i8*, i32) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @curl_multi_cleanup(i32) #1

declare dso_local i32 @event_free(i32) #1

declare dso_local i32 @event_base_free(i32) #1

declare dso_local i32 @libevent_global_shutdown(...) #1

declare dso_local i32 @curl_global_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
