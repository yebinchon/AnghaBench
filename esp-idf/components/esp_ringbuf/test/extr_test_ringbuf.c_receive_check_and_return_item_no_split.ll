; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_receive_check_and_return_item_no_split.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/test/extr_test_ringbuf.c_receive_check_and_return_item_no_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Failed to receive item\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Item size is incorrect\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Item data is invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64, i32, i32)* @receive_check_and_return_item_no_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_check_and_return_item_no_split(i32 %0, i64* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @xRingbufferReceiveFromISR(i32 %17, i64* %11)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %12, align 8
  br label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @xRingbufferReceive(i32 %21, i64* %11, i32 %22)
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %12, align 8
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i64*, i64** %12, align 8
  %27 = icmp ne i64* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @TEST_ASSERT_MESSAGE(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT_MESSAGE(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %54, %25
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load i64*, i64** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @TEST_ASSERT_MESSAGE(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %35

57:                                               ; preds = %35
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load i64*, i64** %12, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = call i32 @vRingbufferReturnItemFromISR(i32 %61, i8* %63, i32* null)
  br label %70

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i64*, i64** %12, align 8
  %68 = bitcast i64* %67 to i8*
  %69 = call i32 @vRingbufferReturnItem(i32 %66, i8* %68)
  br label %70

70:                                               ; preds = %65, %60
  ret void
}

declare dso_local i64 @xRingbufferReceiveFromISR(i32, i64*) #1

declare dso_local i64 @xRingbufferReceive(i32, i64*, i32) #1

declare dso_local i32 @TEST_ASSERT_MESSAGE(i32, i8*) #1

declare dso_local i32 @vRingbufferReturnItemFromISR(i32, i8*, i32*) #1

declare dso_local i32 @vRingbufferReturnItem(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
