; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_RecordU32x5.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/Sample/OS/extr_SEGGER_SYSVIEW_FreeRTOS.c_SYSVIEW_RecordU32x5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SYSVIEW_RecordU32x5(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* @SEGGER_SYSVIEW_INFO_SIZE, align 4
  %17 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %18 = mul nsw i32 5, %17
  %19 = add nsw i32 %16, %18
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = call i32* @SEGGER_SYSVIEW_PREPARE_PACKET(i32* %22)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %24, i32 %25)
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %27, i32 %28)
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %30, i32 %31)
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %33, i32 %34)
  store i32* %35, i32** %15, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32* @SEGGER_SYSVIEW_EncodeU32(i32* %36, i32 %37)
  store i32* %38, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %22, i64 0
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @SEGGER_SYSVIEW_SendPacket(i32* %39, i32* %40, i32 %41)
  %43 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @SEGGER_SYSVIEW_PREPARE_PACKET(i32*) #2

declare dso_local i32* @SEGGER_SYSVIEW_EncodeU32(i32*, i32) #2

declare dso_local i32 @SEGGER_SYSVIEW_SendPacket(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
