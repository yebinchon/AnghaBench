; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_bram_save.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_bram_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@scd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@brm_crc = common dso_local global i64* null, align 8
@brm_format = common dso_local global i64 0, align 8
@region_code = common dso_local global i32 0, align 4
@CD_BRAM_JP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@CD_BRAM_EU = common dso_local global i32 0, align 4
@CD_BRAM_US = common dso_local global i32 0, align 4
@CART_BRAM = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bram_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bram_save() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %5 = call i64 @crc32(i32 0, i64 %4, i32 8192)
  %6 = load i64*, i64** @brm_crc, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %0
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %12 = add nsw i64 %11, 8192
  %13 = sub nsw i64 %12, 32
  %14 = load i64, i64* @brm_format, align 8
  %15 = add nsw i64 %14, 32
  %16 = call i32 @memcmp(i64 %13, i64 %15, i32 32)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* @region_code, align 4
  switch i32 %19, label %29 [
    i32 129, label %20
    i32 130, label %23
    i32 128, label %26
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @CD_BRAM_JP, align 4
  %22 = call i32* @fopen(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %1, align 8
  br label %30

23:                                               ; preds = %18
  %24 = load i32, i32* @CD_BRAM_EU, align 4
  %25 = call i32* @fopen(i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %1, align 8
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @CD_BRAM_US, align 4
  %28 = call i32* @fopen(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %1, align 8
  br label %30

29:                                               ; preds = %18
  br label %116

30:                                               ; preds = %26, %23, %20
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @fwrite(i64 %34, i32 8192, i32 1, i32* %35)
  %37 = load i32*, i32** %1, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %40 = call i64 @crc32(i32 0, i64 %39, i32 8192)
  %41 = load i64*, i64** @brm_crc, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %30
  br label %44

44:                                               ; preds = %43, %10
  br label %45

45:                                               ; preds = %44, %0
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 2), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %116

48:                                               ; preds = %45
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %51 = add nsw i32 %50, 1
  %52 = call i64 @crc32(i32 0, i64 %49, i32 %51)
  %53 = load i64*, i64** @brm_crc, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %116

57:                                               ; preds = %48
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = add nsw i64 %61, 1
  %63 = sub nsw i64 %62, 32
  %64 = load i64, i64* @brm_format, align 8
  %65 = add nsw i64 %64, 32
  %66 = call i32 @memcmp(i64 %63, i64 %65, i32 32)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %115, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @CART_BRAM, align 4
  %70 = call i32* @fopen(i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %70, i32** %1, align 8
  %71 = load i32*, i32** %1, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %114

73:                                               ; preds = %68
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %80, %73
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* @CHUNKSIZE, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* @CHUNKSIZE, align 4
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @fwrite(i64 %84, i32 %85, i32 1, i32* %86)
  %88 = load i32, i32* @CHUNKSIZE, align 4
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @CHUNKSIZE, align 4
  %92 = load i32, i32* %2, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %2, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i32, i32* %2, align 4
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @fwrite(i64 %101, i32 %102, i32 1, i32* %103)
  br label %105

105:                                              ; preds = %97, %94
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %110 = add nsw i32 %109, 1
  %111 = call i64 @crc32(i32 0, i64 %108, i32 %110)
  %112 = load i64*, i64** @brm_crc, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %105, %68
  br label %115

115:                                              ; preds = %114, %57
  br label %116

116:                                              ; preds = %29, %115, %48, %45
  ret void
}

declare dso_local i64 @crc32(i32, i64, i32) #1

declare dso_local i32 @memcmp(i64, i64, i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fwrite(i64, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
