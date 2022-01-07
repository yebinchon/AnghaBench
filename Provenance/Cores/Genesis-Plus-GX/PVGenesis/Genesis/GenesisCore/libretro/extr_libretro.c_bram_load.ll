; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_bram_load.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/libretro/extr_libretro.c_bram_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64* }
%struct.TYPE_3__ = type { i32, i64*, i64 }

@region_code = common dso_local global i32 0, align 4
@CD_BRAM_JP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CD_BRAM_EU = common dso_local global i32 0, align 4
@CD_BRAM_US = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@brm_crc = common dso_local global i64* null, align 8
@brm_format = common dso_local global i32* null, align 8
@CART_BRAM = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bram_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bram_load() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @region_code, align 4
  switch i32 %4, label %14 [
    i32 129, label %5
    i32 130, label %8
    i32 128, label %11
  ]

5:                                                ; preds = %0
  %6 = load i32, i32* @CD_BRAM_JP, align 4
  %7 = call i32* @fopen(i32 %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  br label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @CD_BRAM_EU, align 4
  %10 = call i32* @fopen(i32 %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %1, align 8
  br label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @CD_BRAM_US, align 4
  %13 = call i32* @fopen(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %1, align 8
  br label %15

14:                                               ; preds = %0
  br label %165

15:                                               ; preds = %11, %8, %5
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @fread(i64* %19, i32 8192, i32 1, i32* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @fclose(i32* %22)
  %24 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %25 = call i64 @crc32(i32 0, i64* %24, i32 8192)
  %26 = load i64*, i64** @brm_crc, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  store i64 %25, i64* %27, align 8
  br label %31

28:                                               ; preds = %15
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 8191
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %18
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 8192
  %34 = getelementptr inbounds i64, i64* %33, i64 -32
  %35 = load i32*, i32** @brm_format, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 32
  %37 = call i64 @memcmp(i64* %34, i32* %36, i32 32)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %41 = call i32 @memset(i64* %40, i32 0, i32 8128)
  %42 = load i32*, i32** @brm_format, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 22
  store i32 0, i32* %43, align 4
  %44 = load i32*, i32** @brm_format, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 20
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** @brm_format, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 18
  store i32 0, i32* %47, align 4
  %48 = load i32*, i32** @brm_format, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 16
  store i32 0, i32* %49, align 4
  %50 = load i32*, i32** @brm_format, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 23
  store i32 -3, i32* %51, align 4
  %52 = load i32*, i32** @brm_format, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 21
  store i32 -3, i32* %53, align 4
  %54 = load i32*, i32** @brm_format, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 19
  store i32 -3, i32* %55, align 4
  %56 = load i32*, i32** @brm_format, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 17
  store i32 -3, i32* %57, align 4
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 1), align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 8192
  %60 = getelementptr inbounds i64, i64* %59, i64 -64
  %61 = load i32*, i32** @brm_format, align 8
  %62 = call i32 @memcpy(i64* %60, i32* %61, i32 64)
  %63 = load i64*, i64** @brm_crc, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %39, %31
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 2), align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %165

68:                                               ; preds = %65
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
  %81 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i32, i32* @CHUNKSIZE, align 4
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @fread(i64* %84, i32 %85, i32 1, i32* %86)
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
  %98 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i32, i32* %2, align 4
  %103 = load i32*, i32** %1, align 8
  %104 = call i32 @fread(i64* %101, i32 %102, i32 1, i32* %103)
  br label %105

105:                                              ; preds = %97, %94
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %110 = add nsw i32 %109, 1
  %111 = call i64 @crc32(i32 0, i64* %108, i32 %110)
  %112 = load i64*, i64** @brm_crc, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %105, %68
  %115 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = getelementptr inbounds i64, i64* %119, i64 -32
  %121 = load i32*, i32** @brm_format, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 32
  %123 = call i64 @memcmp(i64* %120, i32* %122, i32 32)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %164

125:                                              ; preds = %114
  %126 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %128 = add nsw i32 %127, 1
  %129 = call i32 @memset(i64* %126, i32 0, i32 %128)
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %131 = add nsw i32 %130, 1
  %132 = sdiv i32 %131, 64
  %133 = sub nsw i32 %132, 3
  %134 = ashr i32 %133, 8
  %135 = load i32*, i32** @brm_format, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 22
  store i32 %134, i32* %136, align 4
  %137 = load i32*, i32** @brm_format, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 20
  store i32 %134, i32* %138, align 4
  %139 = load i32*, i32** @brm_format, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 18
  store i32 %134, i32* %140, align 4
  %141 = load i32*, i32** @brm_format, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 16
  store i32 %134, i32* %142, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %144 = add nsw i32 %143, 1
  %145 = sdiv i32 %144, 64
  %146 = sub nsw i32 %145, 3
  %147 = and i32 %146, 255
  %148 = load i32*, i32** @brm_format, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 23
  store i32 %147, i32* %149, align 4
  %150 = load i32*, i32** @brm_format, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 21
  store i32 %147, i32* %151, align 4
  %152 = load i32*, i32** @brm_format, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 19
  store i32 %147, i32* %153, align 4
  %154 = load i32*, i32** @brm_format, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 17
  store i32 %147, i32* %155, align 4
  %156 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 1), align 8
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scd, i32 0, i32 0, i32 0), align 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = getelementptr inbounds i64, i64* %160, i64 -64
  %162 = load i32*, i32** @brm_format, align 8
  %163 = call i32 @memcpy(i64* %161, i32* %162, i32 64)
  br label %164

164:                                              ; preds = %125, %114
  br label %165

165:                                              ; preds = %14, %164, %65
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fread(i64*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @crc32(i32, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
