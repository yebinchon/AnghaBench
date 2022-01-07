; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_cmd.c_sdmmc_send_cmd_send_csd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_cmd.c_sdmmc_send_cmd_send_csd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32*, i32, i32 }

@SCF_CMD_READ = common dso_local global i32 0, align 4
@SCF_CMD_ADTC = common dso_local global i32 0, align 4
@SCF_RSP_R1 = common dso_local global i32 0, align 4
@SCF_CMD_AC = common dso_local global i32 0, align 4
@SCF_RSP_R2 = common dso_local global i32 0, align 4
@MMC_SEND_CSD = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdmmc_send_cmd_send_csd(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @host_is_spi(%struct.TYPE_8__* %11)
  store i32 %12, i32* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @SCF_CMD_READ, align 4
  %18 = load i32, i32* @SCF_CMD_ADTC, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SCF_RSP_R1, align 4
  %21 = or i32 %19, %20
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @SCF_CMD_AC, align 4
  %24 = load i32, i32* @SCF_RSP_R2, align 4
  %25 = or i32 %23, %24
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %21, %16 ], [ %25, %22 ]
  store i32 %27, i32* %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i64 8, i64 0
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %28, align 4
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  br label %42

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32* [ %40, %38 ], [ null, %41 ]
  store i32* %43, i32** %35, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @MMC_ARG_RCA(i32 %51)
  br label %53

53:                                               ; preds = %48, %47
  %54 = phi i32 [ 0, %47 ], [ %52, %48 ]
  store i32 %54, i32* %44, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 5
  %56 = load i32, i32* @MMC_SEND_CSD, align 4
  store i32 %56, i32* %55, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = call i64 @sdmmc_send_cmd(%struct.TYPE_8__* %57, %struct.TYPE_7__* %8)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @ESP_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %3, align 8
  br label %89

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %10, align 8
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @sdmmc_flip_byte_order(i32* %70, i32 8)
  %72 = load i32*, i32** %6, align 8
  store i32* %72, i32** %10, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @sdmmc_mmc_decode_csd(i32* %80, i32* %81)
  store i64 %82, i64* %9, align 8
  br label %87

83:                                               ; preds = %73
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call i64 @sdmmc_decode_csd(i32* %84, i32* %85)
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %87, %62
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32 @host_is_spi(%struct.TYPE_8__*) #1

declare dso_local i32 @MMC_ARG_RCA(i32) #1

declare dso_local i64 @sdmmc_send_cmd(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @sdmmc_flip_byte_order(i32*, i32) #1

declare dso_local i64 @sdmmc_mmc_decode_csd(i32*, i32*) #1

declare dso_local i64 @sdmmc_decode_csd(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
