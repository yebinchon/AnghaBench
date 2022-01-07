; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_autosave.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_autosave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@system_hw = common dso_local global i64 0, align 8
@SYSTEM_MCD = common dso_local global i64 0, align 8
@scd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@brm_crc = common dso_local global i64* null, align 8
@brm_format = common dso_local global i64 0, align 8
@brm_filename = common dso_local global i32* null, align 8
@region_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CART_BRAM = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@rom_filename = common dso_local global i32 0, align 4
@SILENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slot_autosave(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %126, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @system_hw, align 8
  %13 = load i64, i64* @SYSTEM_MCD, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %126

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %17 = call i64 @crc32(i32 0, i64 %16, i32 8192)
  %18 = load i64*, i64** @brm_crc, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %24 = add nsw i64 %23, 8192
  %25 = sub nsw i64 %24, 32
  %26 = load i64, i64* @brm_format, align 8
  %27 = add nsw i64 %26, 32
  %28 = call i32 @memcmp(i64 %25, i64 %27, i32 32)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %22
  %31 = load i32*, i32** @brm_filename, align 8
  %32 = load i32, i32* @region_code, align 4
  %33 = xor i32 %32, 64
  %34 = ashr i32 %33, 6
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @fopen(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @fwrite(i64 %43, i32 8192, i32 1, i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @fclose(i32* %46)
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %49 = call i64 @crc32(i32 0, i64 %48, i32 8192)
  %50 = load i64*, i64** @brm_crc, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %42, %30
  br label %53

53:                                               ; preds = %52, %22
  br label %54

54:                                               ; preds = %53, %15
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 2), align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %125

57:                                               ; preds = %54
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %60 = add nsw i32 %59, 1
  %61 = call i64 @crc32(i32 0, i64 %58, i32 %60)
  %62 = load i64*, i64** @brm_crc, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %57
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = add nsw i64 %70, 1
  %72 = sub nsw i64 %71, 32
  %73 = load i64, i64* @brm_format, align 8
  %74 = add nsw i64 %73, 32
  %75 = call i32 @memcmp(i64 %72, i64 %74, i32 32)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %124, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @CART_BRAM, align 4
  %79 = call i32* @fopen(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %79, i32** %6, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %123

82:                                               ; preds = %77
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %89, %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @CHUNKSIZE, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* @CHUNKSIZE, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @fwrite(i64 %93, i32 %94, i32 1, i32* %95)
  %97 = load i32, i32* @CHUNKSIZE, align 4
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* @CHUNKSIZE, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %85

103:                                              ; preds = %85
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = load i32, i32* %7, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @fwrite(i64 %110, i32 %111, i32 1, i32* %112)
  br label %114

114:                                              ; preds = %106, %103
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @fclose(i32* %115)
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %119 = add nsw i32 %118, 1
  %120 = call i64 @crc32(i32 0, i64 %117, i32 %119)
  %121 = load i64*, i64** @brm_crc, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 1
  store i64 %120, i64* %122, align 8
  br label %123

123:                                              ; preds = %114, %77
  br label %124

124:                                              ; preds = %123, %66
  br label %125

125:                                              ; preds = %124, %57, %54
  br label %126

126:                                              ; preds = %125, %11, %2
  %127 = load i32, i32* %3, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %131 = and i32 %130, 2
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %3, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %138 = and i32 %137, 1
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136, %129
  br label %149

141:                                              ; preds = %136, %133
  %142 = load i32, i32* @rom_filename, align 4
  %143 = call i64 @strlen(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  store i32 1, i32* @SILENT, align 4
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @slot_save(i32 %146, i32 %147)
  store i32 0, i32* @SILENT, align 4
  br label %149

149:                                              ; preds = %140, %145, %141
  ret void
}

declare dso_local i64 @crc32(i32, i64, i32) #1

declare dso_local i32 @memcmp(i64, i64, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fwrite(i64, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @slot_save(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
