; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_doPackSendDataBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscParseInsert.c_doPackSendDataBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32* }

@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32, %struct.TYPE_13__*)* @doPackSendDataBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doPackSendDataBlock(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %13 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %17 = call %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_15__* %16, i32 0)
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tsSetBlockInfo(i32* %24, i32* %25, i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = call i32 @tscMergeTableDataBlocks(%struct.TYPE_14__* %28, %struct.TYPE_16__* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %61

37:                                               ; preds = %3
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %42, i64 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %12, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = call i32 @tscCopyDataBlockToPayload(%struct.TYPE_14__* %45, %struct.TYPE_13__* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %37
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = call i32 @tscProcessSql(%struct.TYPE_14__* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %57, %50, %35
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_17__* @tscGetMeterMetaInfo(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @tsSetBlockInfo(i32*, i32*, i32) #1

declare dso_local i32 @tscMergeTableDataBlocks(%struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local i32 @tscCopyDataBlockToPayload(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @tscProcessSql(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
