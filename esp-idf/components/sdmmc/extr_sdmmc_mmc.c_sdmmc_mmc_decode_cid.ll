; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_mmc.c_sdmmc_mmc_decode_cid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_mmc.c_sdmmc_mmc_decode_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i32, i64, i32 }

@MMC_CSD_MMCVER_1_0 = common dso_local global i32 0, align 4
@MMC_CSD_MMCVER_1_4 = common dso_local global i32 0, align 4
@MMC_CSD_MMCVER_2_0 = common dso_local global i32 0, align 4
@MMC_CSD_MMCVER_3_1 = common dso_local global i32 0, align 4
@MMC_CSD_MMCVER_4_0 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdmmc_mmc_decode_cid(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MMC_CSD_MMCVER_1_0, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MMC_CSD_MMCVER_1_4, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10, %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @MMC_CID_MID_V1(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @MMC_CID_PNM_V1_CPY(i32 %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @MMC_CID_REV_V1(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i8* @MMC_CID_PSN_V1(i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @MMC_CID_MDT_V1(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %73

38:                                               ; preds = %10
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MMC_CSD_MMCVER_2_0, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MMC_CSD_MMCVER_3_1, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @MMC_CSD_MMCVER_4_0, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @MMC_CID_MID_V2(i32 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @MMC_CID_OID_V2(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @MMC_CID_PNM_V1_CPY(i32 %59, i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i8* @MMC_CID_PSN_V1(i32 %66)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %50, %46
  br label %73

73:                                               ; preds = %72, %14
  %74 = load i32, i32* @ESP_OK, align 4
  ret i32 %74
}

declare dso_local i32 @MMC_CID_MID_V1(i32) #1

declare dso_local i32 @MMC_CID_PNM_V1_CPY(i32, i32) #1

declare dso_local i64 @MMC_CID_REV_V1(i32) #1

declare dso_local i8* @MMC_CID_PSN_V1(i32) #1

declare dso_local i64 @MMC_CID_MDT_V1(i32) #1

declare dso_local i32 @MMC_CID_MID_V2(i32) #1

declare dso_local i64 @MMC_CID_OID_V2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
