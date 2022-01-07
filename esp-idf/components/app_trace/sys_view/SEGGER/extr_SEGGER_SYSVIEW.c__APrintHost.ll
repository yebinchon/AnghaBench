; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__APrintHost.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c__APrintHost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_MAX_STRING_LEN = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_MAX_ARGUMENTS = common dso_local global i32 0, align 4
@SYSVIEW_EVTID_PRINT_FORMATTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*, i32)* @_APrintHost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_APrintHost(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %12 = load i64, i64* @SEGGER_SYSVIEW_MAX_STRING_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* @SEGGER_SYSVIEW_MAX_ARGUMENTS, align 4
  %19 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i32 @RECORD_START(i64 %22)
  %24 = load i32*, i32** %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* @SEGGER_SYSVIEW_MAX_STRING_LEN, align 8
  %27 = call i32* @_EncodeStr(i32* %24, i8* %25, i64 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ENCODE_U32(i32* %28, i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ENCODE_U32(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %38, %4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %35, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* %40, align 4
  %43 = call i32 @ENCODE_U32(i32* %39, i32 %42)
  br label %34

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @SYSVIEW_EVTID_PRINT_FORMATTED, align 4
  %48 = call i32 @_SendPacket(i32* %45, i32* %46, i32 %47)
  %49 = call i32 (...) @RECORD_END()
  ret void
}

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32* @_EncodeStr(i32*, i8*, i64) #1

declare dso_local i32 @ENCODE_U32(i32*, i32) #1

declare dso_local i32 @_SendPacket(i32*, i32*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
