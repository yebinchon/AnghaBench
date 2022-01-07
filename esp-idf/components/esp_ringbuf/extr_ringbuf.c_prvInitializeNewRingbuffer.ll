; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvInitializeNewRingbuffer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvInitializeNewRingbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i8*, i8*, i32, i8*, i32, i64, i32*, i32*, i32*, i32*, i32*, i32* }

@RINGBUF_TYPE_NOSPLIT = common dso_local global i64 0, align 8
@prvCheckItemFitsDefault = common dso_local global i8* null, align 8
@prvCopyItemNoSplit = common dso_local global i32 0, align 4
@prvGetItemDefault = common dso_local global i8* null, align 8
@prvReturnItemDefault = common dso_local global i8* null, align 8
@rbHEADER_SIZE = common dso_local global i32 0, align 4
@prvGetCurMaxSizeNoSplit = common dso_local global i32 0, align 4
@RINGBUF_TYPE_ALLOWSPLIT = common dso_local global i64 0, align 8
@rbALLOW_SPLIT_FLAG = common dso_local global i32 0, align 4
@prvCopyItemAllowSplit = common dso_local global i32 0, align 4
@prvGetCurMaxSizeAllowSplit = common dso_local global i32 0, align 4
@rbBYTE_BUFFER_FLAG = common dso_local global i32 0, align 4
@prvCheckItemFitsByteBuffer = common dso_local global i8* null, align 8
@prvCopyItemByteBuf = common dso_local global i32 0, align 4
@prvGetItemByteBuf = common dso_local global i8* null, align 8
@prvReturnItemByteBuf = common dso_local global i8* null, align 8
@prvGetCurMaxSizeByteBuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_4__*, i32*)* @prvInitializeNewRingbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prvInitializeNewRingbuffer(i64 %0, i64 %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 15
  store i32* %12, i32** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 14
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 13
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 12
  store i32* %23, i32** %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 11
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 10
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 9
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  store i32 0, i32* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @RINGBUF_TYPE_NOSPLIT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %4
  %40 = load i8*, i8** @prvCheckItemFitsDefault, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @prvCopyItemNoSplit, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i8*, i8** @prvGetItemDefault, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @prvReturnItemDefault, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = udiv i64 %54, 2
  %56 = trunc i64 %55 to i32
  %57 = call i32 @rbALIGN_SIZE(i32 %56)
  %58 = load i32, i32* @rbHEADER_SIZE, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @prvGetCurMaxSizeNoSplit, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %125

65:                                               ; preds = %4
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @RINGBUF_TYPE_ALLOWSPLIT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i32, i32* @rbALLOW_SPLIT_FLAG, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load i8*, i8** @prvCheckItemFitsDefault, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @prvCopyItemAllowSplit, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** @prvGetItemDefault, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @prvReturnItemDefault, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @prvGetCurMaxSizeAllowSplit, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  br label %124

97:                                               ; preds = %65
  %98 = load i32, i32* @rbBYTE_BUFFER_FLAG, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load i8*, i8** @prvCheckItemFitsByteBuffer, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @prvCopyItemByteBuf, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** @prvGetItemByteBuf, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i8*, i8** @prvReturnItemByteBuf, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @prvGetCurMaxSizeByteBuf, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %97, %69
  br label %125

125:                                              ; preds = %124, %39
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = call i32 @rbGET_TX_SEM_HANDLE(%struct.TYPE_4__* %126)
  %128 = call i32 @xSemaphoreGive(i32 %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = call i32 @vPortCPUInitializeMutex(i32* %130)
  ret void
}

declare dso_local i32 @rbALIGN_SIZE(i32) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @rbGET_TX_SEM_HANDLE(%struct.TYPE_4__*) #1

declare dso_local i32 @vPortCPUInitializeMutex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
