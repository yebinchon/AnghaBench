; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x9.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_RecordU32x9(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %24 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %25 = mul nsw i32 9, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = call i32 @RECORD_START(i64 %27)
  %29 = load i32*, i32** %22, align 8
  store i32* %29, i32** %21, align 8
  %30 = load i32*, i32** %21, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @ENCODE_U32(i32* %30, i32 %31)
  %33 = load i32*, i32** %21, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @ENCODE_U32(i32* %33, i32 %34)
  %36 = load i32*, i32** %21, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @ENCODE_U32(i32* %36, i32 %37)
  %39 = load i32*, i32** %21, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @ENCODE_U32(i32* %39, i32 %40)
  %42 = load i32*, i32** %21, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @ENCODE_U32(i32* %42, i32 %43)
  %45 = load i32*, i32** %21, align 8
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @ENCODE_U32(i32* %45, i32 %46)
  %48 = load i32*, i32** %21, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @ENCODE_U32(i32* %48, i32 %49)
  %51 = load i32*, i32** %21, align 8
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @ENCODE_U32(i32* %51, i32 %52)
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* %20, align 4
  %56 = call i32 @ENCODE_U32(i32* %54, i32 %55)
  %57 = load i32*, i32** %22, align 8
  %58 = load i32*, i32** %21, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @_SendPacket(i32* %57, i32* %58, i32 %59)
  %61 = call i32 (...) @RECORD_END()
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
