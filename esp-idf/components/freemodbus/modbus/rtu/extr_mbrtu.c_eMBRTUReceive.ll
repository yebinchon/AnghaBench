; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_eMBRTUReceive.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/modbus/rtu/extr_mbrtu.c_eMBRTUReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB_ENOERR = common dso_local global i32 0, align 4
@usRcvBufferPos = common dso_local global i64 0, align 8
@MB_SER_PDU_SIZE_MAX = common dso_local global i64 0, align 8
@MB_SER_PDU_SIZE_MIN = common dso_local global i64 0, align 8
@ucRTUBuf = common dso_local global i32* null, align 8
@MB_SER_PDU_ADDR_OFF = common dso_local global i64 0, align 8
@MB_SER_PDU_PDU_OFF = common dso_local global i64 0, align 8
@MB_SER_PDU_SIZE_CRC = common dso_local global i64 0, align 8
@MB_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRTUReceive(i32* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @MB_ENOERR, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 (...) @ENTER_CRITICAL_SECTION()
  %10 = load i64, i64* @usRcvBufferPos, align 8
  %11 = load i64, i64* @MB_SER_PDU_SIZE_MAX, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* @usRcvBufferPos, align 8
  %16 = load i64, i64* @MB_SER_PDU_SIZE_MIN, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load i32*, i32** @ucRTUBuf, align 8
  %20 = load i64, i64* @usRcvBufferPos, align 8
  %21 = call i64 @usMBCRC16(i32* %19, i64 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load i32*, i32** @ucRTUBuf, align 8
  %25 = load i64, i64* @MB_SER_PDU_ADDR_OFF, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i64, i64* @usRcvBufferPos, align 8
  %30 = load i64, i64* @MB_SER_PDU_PDU_OFF, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, i64* @MB_SER_PDU_SIZE_CRC, align 8
  %33 = sub i64 %31, %32
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** @ucRTUBuf, align 8
  %36 = load i64, i64* @MB_SER_PDU_PDU_OFF, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32**, i32*** %5, align 8
  store i32* %37, i32** %38, align 8
  br label %41

39:                                               ; preds = %18, %3
  %40 = load i32, i32* @MB_EIO, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = call i32 (...) @EXIT_CRITICAL_SECTION()
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @ENTER_CRITICAL_SECTION(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @usMBCRC16(i32*, i64) #1

declare dso_local i32 @EXIT_CRITICAL_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
