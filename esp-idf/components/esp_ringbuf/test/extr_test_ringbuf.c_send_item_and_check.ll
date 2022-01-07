; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_send_item_and_check.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_send_item_and_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdTRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Failed to send item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32, i32)* @send_item_and_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_item_and_check(i32 %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32, i32* %6, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @xRingbufferSendFromISR(i32 %15, i8* %17, i64 %18, i32* null)
  store i64 %19, i64* %11, align 8
  br label %27

20:                                               ; preds = %5
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @xRingbufferSend(i32 %21, i8* %23, i64 %24, i32 %25)
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @pdTRUE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @TEST_ASSERT_MESSAGE(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @xRingbufferSendFromISR(i32, i8*, i64, i32*) #1

declare dso_local i64 @xRingbufferSend(i32, i8*, i64, i32) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
