; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_qio_mode.c_execute_flash_command.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_flash_qio_mode.c_execute_flash_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8**, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i64 }

@SPIFLASH = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@g_rom_spiflash_dummy_len_plus = common dso_local global i64* null, align 8
@SPI_MEM_WP_REG_M = common dso_local global i8* null, align 8
@SPI_WP_REG_M = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*, i64, i64)* @execute_flash_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @execute_flash_command(i64 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 1, i32 0), align 8
  store i8* %10, i8** %9, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 1), align 4
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 7, i32 0), align 8
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 7, i32 1), align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 2), align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 3), align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  store i8* %18, i8** %20, align 8
  %21 = load i64*, i64** @g_rom_spiflash_dummy_len_plus, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 0), align 8
  %29 = load i64*, i64** @g_rom_spiflash_dummy_len_plus, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 3, i32 0), align 8
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 4, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 3, i32 0), align 8
  br label %34

34:                                               ; preds = %33, %28
  br label %35

35:                                               ; preds = %34, %4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 2, i32 0), align 8
  br label %36

36:                                               ; preds = %39, %35
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 2, i32 0), align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %36

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 1, i32 0), align 8
  %42 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @SPIFLASH, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  ret i8* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
