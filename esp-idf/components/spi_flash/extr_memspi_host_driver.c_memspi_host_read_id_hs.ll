; ModuleID = '/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_memspi_host_driver.c_memspi_host_read_id_hs.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/spi_flash/extr_memspi_host_driver.c_memspi_host_read_id_hs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32, i32*, i32, i32, i32 }

@CMD_RDID = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"raw_chip_id: %X\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"no response\0A\00", align 1
@ESP_ERR_FLASH_NO_RESPONSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"chip_id: %X\0A\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memspi_host_read_id_hs(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i32 24, i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %13 = load i32, i32* @CMD_RDID, align 4
  store i32 %13, i32* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)*, i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)** %15, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = call i32 %16(%struct.TYPE_7__* %17, %struct.TYPE_6__* %6)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @TAG, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ESP_EARLY_LOGV(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 16777215
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28, %2
  %32 = load i32, i32* @TAG, align 4
  %33 = call i32 @ESP_EARLY_LOGE(i32 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ESP_ERR_FLASH_NO_RESPONSE, align 4
  store i32 %34, i32* %3, align 4
  br label %53

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 16
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 65280
  %42 = or i32 %39, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @TAG, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ESP_EARLY_LOGV(i32 %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @ESP_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %35, %31
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ESP_EARLY_LOGV(i32, i8*, i32) #2

declare dso_local i32 @ESP_EARLY_LOGE(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
