; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_recv_load_buf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_recv_load_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@context = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@te = common dso_local global i32 0, align 4
@buf_desc_s = common dso_local global i32 0, align 4
@qe = common dso_local global i32 0, align 4
@SLC = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"recv_load_buf: start new\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"recv_load_buf: restart\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_slave_recv_load_buf(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = call i32 @CHECK_HANDLE_IDLE(%struct.TYPE_10__* %8)
  store i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @context, i32 0, i32 2), i32** %4, align 8
  %10 = call i32 (...) @critical_enter_recv()
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @assert(i64 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load i32, i32* @te, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @context, i32 0, i32 1), %struct.TYPE_10__* %15, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @buf_desc_s, align 4
  %23 = load i32, i32* @qe, align 4
  %24 = call %struct.TYPE_10__* @STAILQ_LAST(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_11__* @context to i8*), i64 12) to i32*), i32 %22, i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %5, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i32, i32* @qe, align 4
  %27 = call i32 @STAILQ_INSERT_TAIL(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_11__* @context to i8*), i64 12) to i32*), %struct.TYPE_10__* %25, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @context, i32 0, i32 0), align 8
  %29 = icmp eq %struct.TYPE_10__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @context, i32 0, i32 0), align 8
  br label %32

32:                                               ; preds = %30, %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = icmp eq %struct.TYPE_10__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = ptrtoint %struct.TYPE_10__* %36 to i64
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @SLC, i32 0, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @SLC, i32 0, i32 0, i32 0), align 8
  %38 = load i32, i32* @TAG, align 4
  %39 = call i32 @ESP_LOGV(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %43

40:                                               ; preds = %32
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @SLC, i32 0, i32 0, i32 1), align 4
  %41 = load i32, i32* @TAG, align 4
  %42 = call i32 @ESP_LOGV(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = call i32 (...) @critical_exit_recv()
  %45 = call i32 (...) @recv_size_inc()
  %46 = load i32, i32* @ESP_OK, align 4
  ret i32 %46
}

declare dso_local i32 @CHECK_HANDLE_IDLE(%struct.TYPE_10__*) #1

declare dso_local i32 @critical_enter_recv(...) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @STAILQ_LAST(i32*, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*) #1

declare dso_local i32 @critical_exit_recv(...) #1

declare dso_local i32 @recv_size_inc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
