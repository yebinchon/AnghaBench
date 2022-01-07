; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_rs485_master.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_rs485_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Slave_ready\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Master_started\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Start recieve loop.\0D\0A\00", align 1
@PACKETS_NUMBER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Send \00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@UART_NUM1 = common dso_local global i32 0, align 4
@PACKET_READ_TICS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Received \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Received: %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Errors: %d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Incorrect answer from slave.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Test completed. Received packets = %d, errors = %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs485_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs485_master() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %9 = call i32 (...) @rs485_init()
  %10 = load i32, i32* @BUF_SIZE, align 4
  %11 = call i64 @malloc(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* @BUF_SIZE, align 4
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %4, align 8
  %16 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @unity_send_signal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %71, %0
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PACKETS_NUMBER, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %74

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @BUF_SIZE, align 4
  %26 = call i32 @buffer_fill_random(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @BUF_SIZE, align 4
  %29 = call i64 @print_packet_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @ESP_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @TEST_ASSERT(i32 %33)
  %35 = load i32, i32* @UART_NUM1, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i32, i32* @BUF_SIZE, align 4
  %39 = call i32 @uart_write_bytes(i32 %35, i8* %37, i32 %38)
  %40 = load i32, i32* @UART_NUM1, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @BUF_SIZE, align 4
  %43 = load i32, i32* @PACKET_READ_TICS, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 @uart_read_bytes(i32 %40, i32* %41, i32 %42, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %66

48:                                               ; preds = %23
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @print_packet_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %49, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @ESP_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %65

60:                                               ; preds = %48
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %70

66:                                               ; preds = %23
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %66, %65
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %19

74:                                               ; preds = %19
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @free(i32* %75)
  %77 = load i32, i32* @UART_NUM1, align 4
  %78 = call i32 @uart_driver_delete(i32 %77)
  %79 = load i32, i32* %1, align 4
  %80 = icmp sle i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = call i32 @TEST_ASSERT(i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %83, i32 %84)
  ret void
}

declare dso_local i32 @rs485_init(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @buffer_fill_random(i32*, i32) #1

declare dso_local i64 @print_packet_data(i8*, i32*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @uart_write_bytes(i32, i8*, i32) #1

declare dso_local i32 @uart_read_bytes(i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @uart_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
