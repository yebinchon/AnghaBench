; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_eMBRTUSend.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_eMBRTUSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_ENOERR = common dso_local global i32 0, align 4
@eRcvState = common dso_local global i64 0, align 8
@STATE_RX_IDLE = common dso_local global i64 0, align 8
@pucSndBufferCur = common dso_local global i8** null, align 8
@usSndBufferCount = common dso_local global i32 0, align 4
@MB_SER_PDU_ADDR_OFF = common dso_local global i64 0, align 8
@ucRTUBuf = common dso_local global i8** null, align 8
@STATE_TX_XMIT = common dso_local global i32 0, align 4
@eSndState = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MB_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRTUSend(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @MB_ENOERR, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @ENTER_CRITICAL_SECTION()
  %11 = load i64, i64* @eRcvState, align 8
  %12 = load i64, i64* @STATE_RX_IDLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 -1
  store i8** %16, i8*** @pucSndBufferCur, align 8
  store i32 1, i32* @usSndBufferCount, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = load i8**, i8*** @pucSndBufferCur, align 8
  %19 = load i64, i64* @MB_SER_PDU_ADDR_OFF, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  store i8* %17, i8** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @usSndBufferCount, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* @usSndBufferCount, align 4
  %24 = load i8**, i8*** @pucSndBufferCur, align 8
  %25 = load i32, i32* @usSndBufferCount, align 4
  %26 = call i32 @usMBCRC16(i8** %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 255
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8**, i8*** @ucRTUBuf, align 8
  %32 = load i32, i32* @usSndBufferCount, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @usSndBufferCount, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8*, i8** %31, i64 %34
  store i8* %30, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8**, i8*** @ucRTUBuf, align 8
  %41 = load i32, i32* @usSndBufferCount, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @usSndBufferCount, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %40, i64 %43
  store i8* %39, i8** %44, align 8
  %45 = load i32, i32* @STATE_TX_XMIT, align 4
  store i32 %45, i32* @eSndState, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @vMBPortSerialEnable(i32 %46, i32 %47)
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @MB_EIO, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %14
  %52 = call i32 (...) @EXIT_CRITICAL_SECTION()
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i32 @ENTER_CRITICAL_SECTION(...) #1

declare dso_local i32 @usMBCRC16(i8**, i32) #1

declare dso_local i32 @vMBPortSerialEnable(i32, i32) #1

declare dso_local i32 @EXIT_CRITICAL_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
