; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_SendModule.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_SendModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_3__* }

@_pFirstModule = common dso_local global %struct.TYPE_3__* null, align 8
@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_MAX_STRING_LEN = common dso_local global i64 0, align 8
@SYSVIEW_EVTID_MODULEDESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_SendModule(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_pFirstModule, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %60

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_pFirstModule, align 8
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %23, %9
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %3, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %26

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %4, align 8
  br label %11

26:                                               ; preds = %21, %11
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %31 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %32 = mul nsw i32 2, %31
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %30, %33
  %35 = add nsw i64 %34, 1
  %36 = load i64, i64* @SEGGER_SYSVIEW_MAX_STRING_LEN, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @RECORD_START(i64 %37)
  %39 = load i64*, i64** %6, align 8
  store i64* %39, i64** %5, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = load i64, i64* %2, align 8
  %42 = call i32 @ENCODE_U32(i64* %40, i64 %41)
  %43 = load i64*, i64** %5, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ENCODE_U32(i64* %43, i64 %46)
  %48 = load i64*, i64** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @SEGGER_SYSVIEW_MAX_STRING_LEN, align 8
  %53 = call i64* @_EncodeStr(i64* %48, i32 %51, i64 %52)
  store i64* %53, i64** %5, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* @SYSVIEW_EVTID_MODULEDESC, align 4
  %57 = call i32 @_SendPacket(i64* %54, i64* %55, i32 %56)
  %58 = call i32 (...) @RECORD_END()
  br label %59

59:                                               ; preds = %29, %26
  br label %60

60:                                               ; preds = %59, %1
  ret void
}

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32 @ENCODE_U32(i64*, i64) #1

declare dso_local i64* @_EncodeStr(i64*, i32, i64) #1

declare dso_local i32 @_SendPacket(i64*, i64*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
