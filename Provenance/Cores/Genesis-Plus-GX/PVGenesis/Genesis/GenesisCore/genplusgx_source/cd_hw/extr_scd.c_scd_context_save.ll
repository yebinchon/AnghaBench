; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_context_save.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_context_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__, %struct.TYPE_15__ }

@scd = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@m68k = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@s68k = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@M68K_REG_D0 = common dso_local global i32 0, align 4
@M68K_REG_D1 = common dso_local global i32 0, align 4
@M68K_REG_D2 = common dso_local global i32 0, align 4
@M68K_REG_D3 = common dso_local global i32 0, align 4
@M68K_REG_D4 = common dso_local global i32 0, align 4
@M68K_REG_D5 = common dso_local global i32 0, align 4
@M68K_REG_D6 = common dso_local global i32 0, align 4
@M68K_REG_D7 = common dso_local global i32 0, align 4
@M68K_REG_A0 = common dso_local global i32 0, align 4
@M68K_REG_A1 = common dso_local global i32 0, align 4
@M68K_REG_A2 = common dso_local global i32 0, align 4
@M68K_REG_A3 = common dso_local global i32 0, align 4
@M68K_REG_A4 = common dso_local global i32 0, align 4
@M68K_REG_A5 = common dso_local global i32 0, align 4
@M68K_REG_A6 = common dso_local global i32 0, align 4
@M68K_REG_A7 = common dso_local global i32 0, align 4
@M68K_REG_PC = common dso_local global i32 0, align 4
@M68K_REG_SR = common dso_local global i32 0, align 4
@M68K_REG_USP = common dso_local global i32 0, align 4
@M68K_REG_ISP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scd_context_save(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_15__, align 4
  %4 = alloca %struct.TYPE_15__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca %struct.TYPE_15__, align 4
  %17 = alloca %struct.TYPE_15__, align 4
  %18 = alloca %struct.TYPE_15__, align 4
  %19 = alloca %struct.TYPE_15__, align 4
  %20 = alloca %struct.TYPE_15__, align 4
  %21 = alloca %struct.TYPE_15__, align 4
  %22 = alloca %struct.TYPE_15__, align 4
  %23 = alloca %struct.TYPE_15__, align 4
  %24 = alloca %struct.TYPE_15__, align 4
  %25 = alloca %struct.TYPE_15__, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 3), align 8
  %27 = call i32 @save_param(%struct.TYPE_15__* %26, i32 8)
  %28 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 8), i32 4)
  %29 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 7), i32 4)
  %30 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 6), i32 4)
  %31 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 5), i32 4)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i64 @gfx_context_save(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i64 @cdc_context_save(i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i64 @cdd_context_save(i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i64 @pcm_context_save(i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 4), align 8
  %69 = call i32 @save_param(%struct.TYPE_15__* %68, i32 8)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 3), align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 2), align 8
  %79 = call i32 @save_param(%struct.TYPE_15__* %78, i32 8)
  br label %83

80:                                               ; preds = %1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 1), align 8
  %82 = call i32 @save_param(%struct.TYPE_15__* %81, i32 8)
  br label %83

83:                                               ; preds = %80, %77
  %84 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @m68k, i32 0, i32 1), i32 4)
  %85 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s68k, i32 0, i32 3), i32 4)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @m68k, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 114
  %91 = inttoptr i64 %90 to %struct.TYPE_15__*
  %92 = bitcast %struct.TYPE_15__* %3 to i8*
  %93 = bitcast %struct.TYPE_15__* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  %94 = call i32 @save_param(%struct.TYPE_15__* %3, i32 2)
  %95 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s68k, i32 0, i32 2), i32 4)
  %96 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s68k, i32 0, i32 1), i32 4)
  %97 = call i32 @save_param(%struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @s68k, i32 0, i32 0), i32 4)
  %98 = load i32, i32* @M68K_REG_D0, align 4
  %99 = call i32 @s68k_get_reg(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = bitcast %struct.TYPE_15__* %4 to i8*
  %103 = bitcast %struct.TYPE_15__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %105 = load i32, i32* @M68K_REG_D1, align 4
  %106 = call i32 @s68k_get_reg(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = bitcast %struct.TYPE_15__* %4 to i8*
  %110 = bitcast %struct.TYPE_15__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 4, i1 false)
  %111 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %112 = load i32, i32* @M68K_REG_D2, align 4
  %113 = call i32 @s68k_get_reg(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = bitcast %struct.TYPE_15__* %4 to i8*
  %117 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %119 = load i32, i32* @M68K_REG_D3, align 4
  %120 = call i32 @s68k_get_reg(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = bitcast %struct.TYPE_15__* %4 to i8*
  %124 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 4, i1 false)
  %125 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %126 = load i32, i32* @M68K_REG_D4, align 4
  %127 = call i32 @s68k_get_reg(i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = bitcast %struct.TYPE_15__* %4 to i8*
  %131 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 4, i1 false)
  %132 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %133 = load i32, i32* @M68K_REG_D5, align 4
  %134 = call i32 @s68k_get_reg(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = bitcast %struct.TYPE_15__* %4 to i8*
  %138 = bitcast %struct.TYPE_15__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %137, i8* align 4 %138, i64 4, i1 false)
  %139 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %140 = load i32, i32* @M68K_REG_D6, align 4
  %141 = call i32 @s68k_get_reg(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = bitcast %struct.TYPE_15__* %4 to i8*
  %145 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 4, i1 false)
  %146 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %147 = load i32, i32* @M68K_REG_D7, align 4
  %148 = call i32 @s68k_get_reg(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  %151 = bitcast %struct.TYPE_15__* %4 to i8*
  %152 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 4, i1 false)
  %153 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %154 = load i32, i32* @M68K_REG_A0, align 4
  %155 = call i32 @s68k_get_reg(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = bitcast %struct.TYPE_15__* %4 to i8*
  %159 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %159, i64 4, i1 false)
  %160 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %161 = load i32, i32* @M68K_REG_A1, align 4
  %162 = call i32 @s68k_get_reg(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = bitcast %struct.TYPE_15__* %4 to i8*
  %166 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 4, i1 false)
  %167 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %168 = load i32, i32* @M68K_REG_A2, align 4
  %169 = call i32 @s68k_get_reg(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = bitcast %struct.TYPE_15__* %4 to i8*
  %173 = bitcast %struct.TYPE_15__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 4 %173, i64 4, i1 false)
  %174 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %175 = load i32, i32* @M68K_REG_A3, align 4
  %176 = call i32 @s68k_get_reg(i32 %175)
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = bitcast %struct.TYPE_15__* %4 to i8*
  %180 = bitcast %struct.TYPE_15__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 4, i1 false)
  %181 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %182 = load i32, i32* @M68K_REG_A4, align 4
  %183 = call i32 @s68k_get_reg(i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  %186 = bitcast %struct.TYPE_15__* %4 to i8*
  %187 = bitcast %struct.TYPE_15__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %186, i8* align 4 %187, i64 4, i1 false)
  %188 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %189 = load i32, i32* @M68K_REG_A5, align 4
  %190 = call i32 @s68k_get_reg(i32 %189)
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = bitcast %struct.TYPE_15__* %4 to i8*
  %194 = bitcast %struct.TYPE_15__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %193, i8* align 4 %194, i64 4, i1 false)
  %195 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %196 = load i32, i32* @M68K_REG_A6, align 4
  %197 = call i32 @s68k_get_reg(i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = bitcast %struct.TYPE_15__* %4 to i8*
  %201 = bitcast %struct.TYPE_15__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 4 %201, i64 4, i1 false)
  %202 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %203 = load i32, i32* @M68K_REG_A7, align 4
  %204 = call i32 @s68k_get_reg(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 4
  %207 = bitcast %struct.TYPE_15__* %4 to i8*
  %208 = bitcast %struct.TYPE_15__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %207, i8* align 4 %208, i64 4, i1 false)
  %209 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %210 = load i32, i32* @M68K_REG_PC, align 4
  %211 = call i32 @s68k_get_reg(i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 4
  %214 = bitcast %struct.TYPE_15__* %4 to i8*
  %215 = bitcast %struct.TYPE_15__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %214, i8* align 4 %215, i64 4, i1 false)
  %216 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %217 = load i32, i32* @M68K_REG_SR, align 4
  %218 = call i32 @s68k_get_reg(i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  %221 = bitcast %struct.TYPE_15__* %3 to i8*
  %222 = bitcast %struct.TYPE_15__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %221, i8* align 4 %222, i64 4, i1 false)
  %223 = call i32 @save_param(%struct.TYPE_15__* %3, i32 2)
  %224 = load i32, i32* @M68K_REG_USP, align 4
  %225 = call i32 @s68k_get_reg(i32 %224)
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 4
  %228 = bitcast %struct.TYPE_15__* %4 to i8*
  %229 = bitcast %struct.TYPE_15__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %228, i8* align 4 %229, i64 4, i1 false)
  %230 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %231 = load i32, i32* @M68K_REG_ISP, align 4
  %232 = call i32 @s68k_get_reg(i32 %231)
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  %235 = bitcast %struct.TYPE_15__* %4 to i8*
  %236 = bitcast %struct.TYPE_15__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %235, i8* align 4 %236, i64 4, i1 false)
  %237 = call i32 @save_param(%struct.TYPE_15__* %4, i32 4)
  %238 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @scd, i32 0, i32 0, i32 0), align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %83
  %241 = load i32*, i32** %2, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = call i64 @md_cart_context_save(i32* %244)
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %240, %83
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local i32 @save_param(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @gfx_context_save(i32*) #1

declare dso_local i64 @cdc_context_save(i32*) #1

declare dso_local i64 @cdd_context_save(i32*) #1

declare dso_local i64 @pcm_context_save(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @s68k_get_reg(i32) #1

declare dso_local i64 @md_cart_context_save(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
