; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_ringbuffer_isr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_ringbuffer_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_GROUP_0 = common dso_local global i32 0, align 4
@TIMER_0 = common dso_local global i32 0, align 4
@buf_type = common dso_local global i64 0, align 8
@NO_OF_RB_TYPES = common dso_local global i64 0, align 8
@buffer_handles = common dso_local global i32* null, align 8
@small_item = common dso_local global i64 0, align 8
@SMALL_ITEM_SIZE = common dso_local global i32 0, align 4
@RINGBUF_TYPE_NOSPLIT = common dso_local global i64 0, align 8
@RINGBUF_TYPE_ALLOWSPLIT = common dso_local global i64 0, align 8
@RINGBUF_TYPE_BYTEBUF = common dso_local global i64 0, align 8
@iterations = common dso_local global i64 0, align 8
@ISR_ITERATIONS = common dso_local global i64 0, align 8
@pdFALSE = common dso_local global i64 0, align 8
@done_sem = common dso_local global i32 0, align 4
@pdTRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ringbuffer_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ringbuffer_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @TIMER_GROUP_0, align 4
  %5 = load i32, i32* @TIMER_0, align 4
  %6 = call i32 @timer_group_intr_clr_in_isr(i32 %4, i32 %5)
  %7 = load i32, i32* @TIMER_GROUP_0, align 4
  %8 = call i32 (...) @xPortGetCoreID()
  %9 = call i32 @timer_group_enable_alarm_in_isr(i32 %7, i32 %8)
  %10 = load i64, i64* @buf_type, align 8
  %11 = load i64, i64* @NO_OF_RB_TYPES, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32*, i32** @buffer_handles, align 8
  %15 = load i64, i64* @buf_type, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* @small_item, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* @SMALL_ITEM_SIZE, align 4
  %21 = call i32 @send_item_and_check(i32 %17, i8* %19, i32 %20, i32 0, i32 1)
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i64, i64* @buf_type, align 8
  %24 = load i64, i64* @RINGBUF_TYPE_NOSPLIT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32*, i32** @buffer_handles, align 8
  %28 = load i64, i64* @buf_type, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @small_item, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load i32, i32* @SMALL_ITEM_SIZE, align 4
  %34 = call i32 @receive_check_and_return_item_no_split(i32 %30, i8* %32, i32 %33, i32 0, i32 1)
  %35 = load i64, i64* @buf_type, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @buf_type, align 8
  br label %94

37:                                               ; preds = %22
  %38 = load i64, i64* @buf_type, align 8
  %39 = load i64, i64* @RINGBUF_TYPE_ALLOWSPLIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load i32*, i32** @buffer_handles, align 8
  %43 = load i64, i64* @buf_type, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @small_item, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* @SMALL_ITEM_SIZE, align 4
  %49 = call i32 @receive_check_and_return_item_allow_split(i32 %45, i8* %47, i32 %48, i32 0, i32 1)
  %50 = load i64, i64* @buf_type, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* @buf_type, align 8
  br label %93

52:                                               ; preds = %37
  %53 = load i64, i64* @buf_type, align 8
  %54 = load i64, i64* @RINGBUF_TYPE_BYTEBUF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32*, i32** @buffer_handles, align 8
  %58 = load i64, i64* @buf_type, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @small_item, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* @SMALL_ITEM_SIZE, align 4
  %64 = call i32 @receive_check_and_return_item_byte_buffer(i32 %60, i8* %62, i32 %63, i32 0, i32 1)
  %65 = load i64, i64* @buf_type, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* @buf_type, align 8
  br label %92

67:                                               ; preds = %52
  %68 = load i64, i64* @buf_type, align 8
  %69 = load i64, i64* @NO_OF_RB_TYPES, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load i64, i64* @iterations, align 8
  %73 = load i64, i64* @ISR_ITERATIONS, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* @iterations, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* @iterations, align 8
  store i64 0, i64* @buf_type, align 8
  br label %94

78:                                               ; preds = %71
  %79 = load i64, i64* @pdFALSE, align 8
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* @done_sem, align 4
  %81 = call i32 @xSemaphoreGiveFromISR(i32 %80, i64* %3)
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* @pdTRUE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i64, i64* @buf_type, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* @buf_type, align 8
  %88 = call i32 (...) @portYIELD_FROM_ISR()
  br label %89

89:                                               ; preds = %85, %78
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %67
  br label %92

92:                                               ; preds = %91, %56
  br label %93

93:                                               ; preds = %92, %41
  br label %94

94:                                               ; preds = %75, %93, %26
  ret void
}

declare dso_local i32 @timer_group_intr_clr_in_isr(i32, i32) #1

declare dso_local i32 @timer_group_enable_alarm_in_isr(i32, i32) #1

declare dso_local i32 @xPortGetCoreID(...) #1

declare dso_local i32 @send_item_and_check(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @receive_check_and_return_item_no_split(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @receive_check_and_return_item_allow_split(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @receive_check_and_return_item_byte_buffer(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @xSemaphoreGiveFromISR(i32, i64*) #1

declare dso_local i32 @portYIELD_FROM_ISR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
