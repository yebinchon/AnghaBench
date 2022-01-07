; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x5.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_RecordU32x5(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %16 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %17 = mul nsw i32 5, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %15, %18
  %20 = call i32 @RECORD_START(i64 %19)
  %21 = load i32*, i32** %14, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ENCODE_U32(i32* %22, i32 %23)
  %25 = load i32*, i32** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ENCODE_U32(i32* %25, i32 %26)
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @ENCODE_U32(i32* %28, i32 %29)
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @ENCODE_U32(i32* %31, i32 %32)
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @ENCODE_U32(i32* %34, i32 %35)
  %37 = load i32*, i32** %14, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @_SendPacket(i32* %37, i32* %38, i32 %39)
  %41 = call i32 (...) @RECORD_END()
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
