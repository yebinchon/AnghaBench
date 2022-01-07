; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_chip_generic_write.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_spi_flash_chip_generic.c_spi_flash_chip_generic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i64 (%struct.TYPE_9__*, i64, i64)* }
%struct.TYPE_7__ = type { i64, i64 (%struct.TYPE_8__*, i32)*, {}* }

@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spi_flash_chip_generic_write(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %86, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  %24 = icmp sgt i64 %23, 0
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %87

27:                                               ; preds = %25
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @MIN(i64 %33, i64 %34)
  %36 = call i64 @MIN(i64 %32, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %11, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i64, i64* %10, align 8
  %41 = sdiv i64 %39, %40
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = sdiv i64 %42, %43
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %27
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %10, align 8
  %50 = srem i64 %48, %49
  %51 = sub nsw i64 %47, %50
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %46, %27
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64 (%struct.TYPE_8__*, i32)*, i64 (%struct.TYPE_8__*, i32)** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call i64 %57(%struct.TYPE_8__* %58, i32 0)
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @ESP_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %52
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = bitcast {}** %67 to i64 (%struct.TYPE_8__*, i8*, i64, i64)**
  %69 = load i64 (%struct.TYPE_8__*, i8*, i64, i64)*, i64 (%struct.TYPE_8__*, i8*, i64, i64)** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i64 %69(%struct.TYPE_8__* %70, i8* %71, i64 %72, i64 %73)
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %7, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i64, i64* %11, align 8
  %81 = add nsw i64 %79, %80
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %63, %52
  br label %18

87:                                               ; preds = %25
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @ESP_OK, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i64 (%struct.TYPE_9__*, i64, i64)*, i64 (%struct.TYPE_9__*, i64, i64)** %95, align 8
  %97 = icmp ne i64 (%struct.TYPE_9__*, i64, i64)* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i64 (%struct.TYPE_9__*, i64, i64)*, i64 (%struct.TYPE_9__*, i64, i64)** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i64 %103(%struct.TYPE_9__* %106, i64 %107, i64 %108)
  store i64 %109, i64* %9, align 8
  br label %110

110:                                              ; preds = %98, %91, %87
  %111 = load i64, i64* %9, align 8
  ret i64 %111
}

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
