; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_autoload.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_slot.c_slot_autoload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i64* }
%struct.TYPE_4__ = type { i32, i64*, i64 }
%struct.TYPE_6__ = type { i32 }

@system_hw = common dso_local global i64 0, align 8
@SYSTEM_MCD = common dso_local global i64 0, align 8
@brm_filename = common dso_local global i32* null, align 8
@region_code = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@scd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@brm_crc = common dso_local global i64* null, align 8
@brm_format = common dso_local global i32* null, align 8
@CART_BRAM = common dso_local global i32 0, align 4
@CHUNKSIZE = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@rom_filename = common dso_local global i32 0, align 4
@SILENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slot_autoload(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %174, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @system_hw, align 8
  %12 = load i64, i64* @SYSTEM_MCD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %174

14:                                               ; preds = %10
  %15 = load i32*, i32** @brm_filename, align 8
  %16 = load i32, i32* @region_code, align 4
  %17 = xor i32 %16, 64
  %18 = ashr i32 %17, 6
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @fopen(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %14
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @fread(i64* %27, i32 8192, i32 1, i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @fclose(i32* %30)
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %33 = call i64 @crc32(i32 0, i64* %32, i32 8192)
  %34 = load i64*, i64** @brm_crc, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %33, i64* %35, align 8
  br label %39

36:                                               ; preds = %14
  %37 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 8191
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 8192
  %42 = getelementptr inbounds i64, i64* %41, i64 -32
  %43 = load i32*, i32** @brm_format, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 32
  %45 = call i64 @memcmp(i64* %42, i32* %44, i32 32)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %39
  %48 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %49 = call i32 @memset(i64* %48, i32 0, i32 8128)
  %50 = load i32*, i32** @brm_format, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 22
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** @brm_format, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 20
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** @brm_format, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 18
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** @brm_format, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 16
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** @brm_format, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 23
  store i32 -3, i32* %59, align 4
  %60 = load i32*, i32** @brm_format, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 21
  store i32 -3, i32* %61, align 4
  %62 = load i32*, i32** @brm_format, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 19
  store i32 -3, i32* %63, align 4
  %64 = load i32*, i32** @brm_format, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 17
  store i32 -3, i32* %65, align 4
  %66 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 1), align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 8192
  %68 = getelementptr inbounds i64, i64* %67, i64 -64
  %69 = load i32*, i32** @brm_format, align 8
  %70 = call i32 @memcpy(i64* %68, i32* %69, i32 64)
  %71 = load i64*, i64** @brm_crc, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %47, %39
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 2), align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %173

76:                                               ; preds = %73
  %77 = load i32, i32* @CART_BRAM, align 4
  %78 = call i32* @fopen(i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %78, i32** %5, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %122

81:                                               ; preds = %76
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %88, %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @CHUNKSIZE, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i32, i32* @CHUNKSIZE, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @fread(i64* %92, i32 %93, i32 1, i32* %94)
  %96 = load i32, i32* @CHUNKSIZE, align 4
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* @CHUNKSIZE, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i32, i32* %6, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @fread(i64* %109, i32 %110, i32 1, i32* %111)
  br label %113

113:                                              ; preds = %105, %102
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @fclose(i32* %114)
  %116 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %118 = add nsw i32 %117, 1
  %119 = call i64 @crc32(i32 0, i64* %116, i32 %118)
  %120 = load i64*, i64** @brm_crc, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %113, %76
  %123 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = getelementptr inbounds i64, i64* %127, i64 -32
  %129 = load i32*, i32** @brm_format, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 32
  %131 = call i64 @memcmp(i64* %128, i32* %130, i32 32)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %172

133:                                              ; preds = %122
  %134 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %136 = add nsw i32 %135, 1
  %137 = call i32 @memset(i64* %134, i32 0, i32 %136)
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %139 = add nsw i32 %138, 1
  %140 = sdiv i32 %139, 64
  %141 = sub nsw i32 %140, 3
  %142 = ashr i32 %141, 8
  %143 = load i32*, i32** @brm_format, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 22
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** @brm_format, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 20
  store i32 %142, i32* %146, align 4
  %147 = load i32*, i32** @brm_format, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 18
  store i32 %142, i32* %148, align 4
  %149 = load i32*, i32** @brm_format, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 16
  store i32 %142, i32* %150, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %152 = add nsw i32 %151, 1
  %153 = sdiv i32 %152, 64
  %154 = sub nsw i32 %153, 3
  %155 = and i32 %154, 255
  %156 = load i32*, i32** @brm_format, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 23
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** @brm_format, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 21
  store i32 %155, i32* %159, align 4
  %160 = load i32*, i32** @brm_format, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 19
  store i32 %155, i32* %161, align 4
  %162 = load i32*, i32** @brm_format, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 17
  store i32 %155, i32* %163, align 4
  %164 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 1), align 8
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scd, i32 0, i32 0, i32 0), align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = getelementptr inbounds i64, i64* %168, i64 -64
  %170 = load i32*, i32** @brm_format, align 8
  %171 = call i32 @memcpy(i64* %169, i32* %170, i32 64)
  br label %172

172:                                              ; preds = %133, %122
  br label %173

173:                                              ; preds = %172, %73
  br label %174

174:                                              ; preds = %173, %10, %2
  %175 = load i32, i32* %3, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %179 = and i32 %178, 2
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177, %174
  %182 = load i32, i32* %3, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %186 = and i32 %185, 1
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184, %177
  br label %197

189:                                              ; preds = %184, %181
  %190 = load i32, i32* @rom_filename, align 4
  %191 = call i64 @strlen(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  store i32 1, i32* @SILENT, align 4
  %194 = load i32, i32* %3, align 4
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @slot_load(i32 %194, i32 %195)
  store i32 0, i32* @SILENT, align 4
  br label %197

197:                                              ; preds = %188, %193, %189
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fread(i64*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @crc32(i32, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i32*, i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @slot_load(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
