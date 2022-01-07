; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_remove_device.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_master.c_spi_bus_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"invalid handle\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Have unfinished transactions\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@NO_CS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_bus_remove_device(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = icmp ne %struct.TYPE_9__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %9 = call i32 @SPI_CHECK(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @uxQueueMessagesWaiting(i32 %12)
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %17 = call i32 @SPI_CHECK(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NO_CS, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %41, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = call %struct.TYPE_9__* @atomic_load(i32* %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = icmp ne %struct.TYPE_9__* %38, %39
  br label %41

41:                                               ; preds = %25, %1
  %42 = phi i1 [ true, %1 ], [ %40, %25 ]
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %45 = call i32 @SPI_CHECK(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @uxQueueMessagesWaiting(i32 %48)
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %53 = call i32 @SPI_CHECK(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %41
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @spicommon_cs_free_io(i32 %61)
  br label %63

63:                                               ; preds = %60, %41
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @vQueueDelete(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @vQueueDelete(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @vSemaphoreDelete(i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %117, %63
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @NO_CS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %76
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call %struct.TYPE_9__* @atomic_load(i32* %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = icmp eq %struct.TYPE_9__* %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %80
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @atomic_store(i32* %100, i32* null)
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %102, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %92
  %110 = load i32, i32* @NO_CS, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %92
  br label %116

116:                                              ; preds = %115, %80
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %3, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %3, align 4
  br label %76

120:                                              ; preds = %76
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = call i32 @free(%struct.TYPE_9__* %121)
  %123 = load i32, i32* @ESP_OK, align 4
  ret i32 %123
}

declare dso_local i32 @SPI_CHECK(i32, i8*, i32) #1

declare dso_local i64 @uxQueueMessagesWaiting(i32) #1

declare dso_local %struct.TYPE_9__* @atomic_load(i32*) #1

declare dso_local i32 @spicommon_cs_free_io(i32) #1

declare dso_local i32 @vQueueDelete(i32) #1

declare dso_local i32 @vSemaphoreDelete(i32) #1

declare dso_local i32 @atomic_store(i32*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
