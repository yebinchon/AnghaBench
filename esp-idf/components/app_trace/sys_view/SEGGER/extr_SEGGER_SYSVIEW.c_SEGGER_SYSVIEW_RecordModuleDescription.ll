; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordModuleDescription.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_trace/sys_view/SEGGER/extr_SEGGER_SYSVIEW.c_SEGGER_SYSVIEW_RecordModuleDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@_pFirstModule = common dso_local global %struct.TYPE_4__* null, align 8
@SEGGER_SYSVIEW_INFO_SIZE = common dso_local global i64 0, align 8
@SEGGER_SYSVIEW_QUANTA_U32 = common dso_local global i32 0, align 4
@SEGGER_SYSVIEW_MAX_STRING_LEN = common dso_local global i64 0, align 8
@SYSVIEW_EVTID_MODULEDESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_SYSVIEW_RecordModuleDescription(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_pFirstModule, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %21, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = icmp eq %struct.TYPE_4__* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %24

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %5, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %6, align 8
  br label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %10, label %24

24:                                               ; preds = %21, %14
  %25 = load i64, i64* @SEGGER_SYSVIEW_INFO_SIZE, align 8
  %26 = load i32, i32* @SEGGER_SYSVIEW_QUANTA_U32, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = add nsw i64 %29, 1
  %31 = load i64, i64* @SEGGER_SYSVIEW_MAX_STRING_LEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @RECORD_START(i64 %32)
  %34 = load i64*, i64** %8, align 8
  store i64* %34, i64** %7, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ENCODE_U32(i64* %35, i64 %36)
  %38 = load i64*, i64** %7, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ENCODE_U32(i64* %38, i64 %41)
  %43 = load i64*, i64** %7, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* @SEGGER_SYSVIEW_MAX_STRING_LEN, align 8
  %46 = call i64* @_EncodeStr(i64* %43, i8* %44, i64 %45)
  store i64* %46, i64** %7, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i32, i32* @SYSVIEW_EVTID_MODULEDESC, align 4
  %50 = call i32 @_SendPacket(i64* %47, i64* %48, i32 %49)
  %51 = call i32 (...) @RECORD_END()
  ret void
}

declare dso_local i32 @RECORD_START(i64) #1

declare dso_local i32 @ENCODE_U32(i64*, i64) #1

declare dso_local i64* @_EncodeStr(i64*, i8*, i64) #1

declare dso_local i32 @_SendPacket(i64*, i64*, i32) #1

declare dso_local i32 @RECORD_END(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
