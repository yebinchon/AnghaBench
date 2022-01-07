; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_send_reset_counter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_send_reset_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i64 }

@STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"reset counter when transmission started\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@context = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@qe = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @send_reset_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_reset_counter() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = call i64 (...) @send_get_state()
  %5 = load i64, i64* @STATE_IDLE, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %9 = call i32 @SDIO_SLAVE_CHECK(i32 %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @send_length_write(i32 0)
  store i8* null, i8** %1, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 1), align 8
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %12

12:                                               ; preds = %15, %0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = getelementptr i8, i8* %19, i64 %18
  store i8* %20, i8** %1, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load i32, i32* @qe, align 4
  %27 = call %struct.TYPE_5__* @STAILQ_NEXT(%struct.TYPE_5__* %25, i32 %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %2, align 8
  br label %12

28:                                               ; preds = %12
  %29 = call i64 @sdio_ringbuf_peek_front(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 0))
  %30 = inttoptr i64 %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %2, align 8
  br label %31

31:                                               ; preds = %34, %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %1, align 8
  %39 = getelementptr i8, i8* %38, i64 %37
  store i8* %39, i8** %1, align 8
  %40 = load i8*, i8** %1, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %3, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load i32, i32* @qe, align 4
  %46 = call %struct.TYPE_5__* @STAILQ_NEXT(%struct.TYPE_5__* %44, i32 %45)
  store %struct.TYPE_5__* %46, %struct.TYPE_5__** %2, align 8
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = icmp eq %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = call i64 @sdio_ringbuf_peek_rear(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @context, i32 0, i32 0))
  %52 = inttoptr i64 %51 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %3, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* null, i8** %54, align 8
  br label %55

55:                                               ; preds = %50, %47
  %56 = load i32, i32* @ESP_OK, align 4
  ret i32 %56
}

declare dso_local i32 @SDIO_SLAVE_CHECK(i32, i8*, i32) #1

declare dso_local i64 @send_get_state(...) #1

declare dso_local i32 @send_length_write(i32) #1

declare dso_local %struct.TYPE_5__* @STAILQ_NEXT(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @sdio_ringbuf_peek_front(i32*) #1

declare dso_local i64 @sdio_ringbuf_peek_rear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
