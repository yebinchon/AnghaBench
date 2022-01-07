; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ephiperfifo.c_event_cb.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ephiperfifo.c_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.itimerspec = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@CURL_CSELECT_IN = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@CURL_CSELECT_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"event_cb: curl_multi_socket_action\00", align 1
@MSG_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"last transfer done, kill timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_cb(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.itimerspec, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EPOLLIN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @CURL_CSELECT_IN, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @EPOLLOUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @CURL_CSELECT_OUT, align 4
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = or i32 %18, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @curl_multi_socket_action(i32 %31, i32 %32, i32 %33, i64* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mcode_or_die(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = call i32 @check_multi_info(%struct.TYPE_4__* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %26
  %46 = load i32, i32* @MSG_OUT, align 4
  %47 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @memset(%struct.itimerspec* %8, i32 0, i32 4)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @timerfd_settime(i32 %51, i32 0, %struct.itimerspec* %8, i32* null)
  br label %53

53:                                               ; preds = %45, %26
  ret void
}

declare dso_local i32 @curl_multi_socket_action(i32, i32, i32, i64*) #1

declare dso_local i32 @mcode_or_die(i8*, i32) #1

declare dso_local i32 @check_multi_info(%struct.TYPE_4__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @memset(%struct.itimerspec*, i32, i32) #1

declare dso_local i32 @timerfd_settime(i32, i32, %struct.itimerspec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
