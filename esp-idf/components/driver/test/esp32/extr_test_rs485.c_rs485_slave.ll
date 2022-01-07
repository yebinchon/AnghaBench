; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_rs485_slave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_rs485.c_rs485_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Start recieve loop.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Slave_ready\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Master_started\00", align 1
@PACKETS_NUMBER = common dso_local global i32 0, align 4
@UART_NUM1 = common dso_local global i32 0, align 4
@PACKET_READ_TICS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Received \00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"Incorrect packet received.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Incorrect data packet[%d] received.\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Test completed. Received packets = %d, errors = %d\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs485_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs485_slave() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = call i32 (...) @rs485_init()
  %8 = load i32, i32* @BUF_SIZE, align 4
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @unity_send_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %53, %0
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PACKETS_NUMBER, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i32, i32* @UART_NUM1, align 4
  %20 = load i32*, i32** %1, align 8
  %21 = load i32, i32* @BUF_SIZE, align 4
  %22 = load i32, i32* @PACKET_READ_TICS, align 4
  %23 = mul nsw i32 %22, 2
  %24 = call i32 @uart_read_bytes(i32 %19, i32* %20, i32 %21, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @print_packet_data(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @UART_NUM1, align 4
  %36 = load i32*, i32** %1, align 8
  %37 = bitcast i32* %36 to i8*
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @uart_write_bytes(i32 %35, i8* %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %27
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %34
  br label %52

47:                                               ; preds = %18
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %46
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* @UART_NUM1, align 4
  %61 = load i32, i32* @PACKET_READ_TICS, align 4
  %62 = call i32 @uart_wait_tx_done(i32 %60, i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @free(i32* %63)
  %65 = load i32, i32* @UART_NUM1, align 4
  %66 = call i32 @uart_driver_delete(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = icmp slt i32 %67, 2
  %69 = zext i1 %68 to i32
  %70 = call i32 @TEST_ASSERT(i32 %69)
  ret void
}

declare dso_local i32 @rs485_init(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @uart_read_bytes(i32, i32*, i32, i32) #1

declare dso_local i64 @print_packet_data(i8*, i32*, i32) #1

declare dso_local i32 @uart_write_bytes(i32, i8*, i32) #1

declare dso_local i32 @uart_wait_tx_done(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @uart_driver_delete(i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
