; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_recv_flush_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_recv_flush_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@context = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@pdFALSE = common dso_local global i64 0, align 8
@qe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @recv_flush_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_flush_data() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 1), i32** %1, align 8
  %4 = call i32 (...) @critical_enter_recv()
  br label %5

5:                                                ; preds = %0, %21
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 0), align 4
  %7 = call i64 @xSemaphoreTake(i32 %6, i32 0)
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @pdFALSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %33

12:                                               ; preds = %5
  %13 = call %struct.TYPE_5__* @STAILQ_FIRST(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_6__* @context to i8*), i64 4) to i32*))
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %3, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i1 [ false, %12 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @qe, align 4
  %26 = call i32 @STAILQ_REMOVE_HEAD(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_6__* @context to i8*), i64 4) to i32*), i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = load i32, i32* @qe, align 4
  %31 = call i32 @STAILQ_INSERT_TAIL(i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.TYPE_6__* @context to i8*), i64 4) to i32*), %struct.TYPE_5__* %29, i32 %30)
  %32 = call i32 (...) @recv_size_inc()
  br label %5

33:                                               ; preds = %11
  %34 = call i32 (...) @critical_exit_recv()
  ret void
}

declare dso_local i32 @critical_enter_recv(...) #1

declare dso_local i64 @xSemaphoreTake(i32, i32) #1

declare dso_local %struct.TYPE_5__* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @recv_size_inc(...) #1

declare dso_local i32 @critical_exit_recv(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
