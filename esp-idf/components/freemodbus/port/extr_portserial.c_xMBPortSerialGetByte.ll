; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_xMBPortSerialGetByte.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/port/extr_portserial.c_xMBPortSerialGetByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uiRxBufferPos = common dso_local global i64 0, align 8
@MB_SERIAL_BUF_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"mb stack serial get byte failure.\00", align 1
@ucBuffer = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xMBPortSerialGetByte(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i64, i64* @uiRxBufferPos, align 8
  %8 = load i64, i64* @MB_SERIAL_BUF_SIZE, align 8
  %9 = icmp ult i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @MB_PORT_CHECK(i32 %10, i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** @ucBuffer, align 8
  %14 = load i64, i64* @uiRxBufferPos, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %2, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i64, i64* @uiRxBufferPos, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* @uiRxBufferPos, align 8
  %20 = load i32, i32* @TRUE, align 4
  ret i32 %20
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MB_PORT_CHECK(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
