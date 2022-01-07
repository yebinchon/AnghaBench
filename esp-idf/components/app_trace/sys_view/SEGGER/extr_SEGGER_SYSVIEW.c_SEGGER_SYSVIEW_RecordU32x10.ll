; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x10.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordU32x10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_RecordU32x10(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %26 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %27 = mul nsw i32 10, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @RECORD_START(i64 %29)
  %31 = load i32*, i32** %24, align 8
  store i32* %31, i32** %23, align 8
  %32 = load i32*, i32** %23, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @ENCODE_U32(i32* %32, i32 %33)
  %35 = load i32*, i32** %23, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @ENCODE_U32(i32* %35, i32 %36)
  %38 = load i32*, i32** %23, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @ENCODE_U32(i32* %38, i32 %39)
  %41 = load i32*, i32** %23, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @ENCODE_U32(i32* %41, i32 %42)
  %44 = load i32*, i32** %23, align 8
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @ENCODE_U32(i32* %44, i32 %45)
  %47 = load i32*, i32** %23, align 8
  %48 = load i32, i32* %18, align 4
  %49 = call i32 @ENCODE_U32(i32* %47, i32 %48)
  %50 = load i32*, i32** %23, align 8
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @ENCODE_U32(i32* %50, i32 %51)
  %53 = load i32*, i32** %23, align 8
  %54 = load i32, i32* %20, align 4
  %55 = call i32 @ENCODE_U32(i32* %53, i32 %54)
  %56 = load i32*, i32** %23, align 8
  %57 = load i32, i32* %21, align 4
  %58 = call i32 @ENCODE_U32(i32* %56, i32 %57)
  %59 = load i32*, i32** %23, align 8
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @ENCODE_U32(i32* %59, i32 %60)
  %62 = load i32*, i32** %24, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @_SendPacket(i32* %62, i32* %63, i32 %64)
  %66 = call i32 (...) @RECORD_END()
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
