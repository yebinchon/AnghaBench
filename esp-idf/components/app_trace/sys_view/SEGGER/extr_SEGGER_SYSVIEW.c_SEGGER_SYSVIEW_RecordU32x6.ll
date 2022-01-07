; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x6.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_RecordU32x6(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %18 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %19 = mul nsw i32 6, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i32 @RECORD_START(i64 %21)
  %23 = load i32*, i32** %16, align 8
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ENCODE_U32(i32* %24, i32 %25)
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ENCODE_U32(i32* %27, i32 %28)
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @ENCODE_U32(i32* %30, i32 %31)
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @ENCODE_U32(i32* %33, i32 %34)
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @ENCODE_U32(i32* %36, i32 %37)
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @ENCODE_U32(i32* %39, i32 %40)
  %42 = load i32*, i32** %16, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @_SendPacket(i32* %42, i32* %43, i32 %44)
  %46 = call i32 (...) @RECORD_END()
  ret void
}

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32 @ENCODE_U32(i32*, i32) #1

declare dso_local i32 @_SendPacket(i32*, i32*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
