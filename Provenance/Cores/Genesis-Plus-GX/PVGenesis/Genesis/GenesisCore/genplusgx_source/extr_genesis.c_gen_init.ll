; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_genesis.c_gen_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_genesis.c_gen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i8* }
%struct.TYPE_6__ = type { i32*, i32 }

@z80_irq_callback = common dso_local global i32 0, align 4
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@m68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@work_ram = common dso_local global i8* null, align 8
@m68k_lockup_r_8 = common dso_local global i32* null, align 8
@m68k_lockup_r_16 = common dso_local global i32* null, align 8
@m68k_lockup_w_8 = common dso_local global i32* null, align 8
@m68k_lockup_w_16 = common dso_local global i32* null, align 8
@zbank_lockup_r = common dso_local global i32 0, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_6__* null, align 8
@zbank_lockup_w = common dso_local global i32* null, align 8
@vdp_read_byte = common dso_local global i32* null, align 8
@vdp_read_word = common dso_local global i32* null, align 8
@vdp_write_byte = common dso_local global i32* null, align 8
@vdp_write_word = common dso_local global i32* null, align 8
@zbank_read_vdp = common dso_local global i32 0, align 4
@zbank_write_vdp = common dso_local global i32* null, align 8
@zbank_unused_r = common dso_local global i32 0, align 4
@SYSTEM_PICO = common dso_local global i32 0, align 4
@pico_read_byte = common dso_local global i32* null, align 8
@pico_read_word = common dso_local global i32* null, align 8
@m68k_unused_8_w = common dso_local global i8* null, align 8
@m68k_unused_16_w = common dso_local global i8* null, align 8
@m68k_read_bus_8 = common dso_local global i32* null, align 8
@m68k_read_bus_16 = common dso_local global i32* null, align 8
@pico_current = common dso_local global i64 0, align 8
@ctrl_io_read_byte = common dso_local global i32* null, align 8
@ctrl_io_read_word = common dso_local global i32* null, align 8
@ctrl_io_write_byte = common dso_local global i32* null, align 8
@ctrl_io_write_word = common dso_local global i32* null, align 8
@zbank_read_ctrl_io = common dso_local global i32 0, align 4
@zbank_write_ctrl_io = common dso_local global i32* null, align 8
@zram = common dso_local global i32* null, align 8
@z80_readmap = common dso_local global i32** null, align 8
@z80_memory_w = common dso_local global i32 0, align 4
@z80_writemem = common dso_local global i32 0, align 4
@z80_memory_r = common dso_local global i32 0, align 4
@z80_readmem = common dso_local global i32 0, align 4
@z80_unused_port_w = common dso_local global i32 0, align 4
@z80_writeport = common dso_local global i32 0, align 4
@z80_unused_port_r = common dso_local global i32 0, align 4
@z80_readport = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@z80_md_port_w = common dso_local global i32 0, align 4
@z80_md_port_r = common dso_local global i32 0, align 4
@z80_gg_port_w = common dso_local global i32 0, align 4
@z80_gg_port_r = common dso_local global i32 0, align 4
@z80_ms_port_w = common dso_local global i32 0, align 4
@z80_ms_port_r = common dso_local global i32 0, align 4
@z80_m3_port_w = common dso_local global i32 0, align 4
@z80_m3_port_r = common dso_local global i32 0, align 4
@z80_sg_port_w = common dso_local global i32 0, align 4
@z80_sg_port_r = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @z80_irq_callback, align 4
  %3 = call i32 @z80_init(i32 0, i32 %2)
  %4 = load i32, i32* @system_hw, align 4
  %5 = and i32 %4, 131
  %6 = load i32, i32* @SYSTEM_MD, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %247

8:                                                ; preds = %0
  %9 = call i32 (...) @m68k_init()
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 1), align 8
  store i32 128, i32* %1, align 4
  br label %11

11:                                               ; preds = %57, %8
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 224
  br i1 %13, label %14, label %60

14:                                               ; preds = %11
  %15 = load i8*, i8** @work_ram, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i8* %15, i8** %20, align 8
  %21 = load i32*, i32** @m68k_lockup_r_8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i32* %21, i32** %26, align 8
  %27 = load i32*, i32** @m68k_lockup_r_16, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32* %27, i32** %32, align 8
  %33 = load i32*, i32** @m68k_lockup_w_8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32* %33, i32** %38, align 8
  %39 = load i32*, i32** @m68k_lockup_w_16, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32* %39, i32** %44, align 8
  %45 = load i32, i32* @zbank_lockup_r, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %45, i32* %50, align 8
  %51 = load i32*, i32** @zbank_lockup_w, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32* %51, i32** %56, align 8
  br label %57

57:                                               ; preds = %14
  %58 = load i32, i32* %1, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %1, align 4
  br label %11

60:                                               ; preds = %11
  store i32 192, i32* %1, align 4
  br label %61

61:                                               ; preds = %101, %60
  %62 = load i32, i32* %1, align 4
  %63 = icmp slt i32 %62, 224
  br i1 %63, label %64, label %104

64:                                               ; preds = %61
  %65 = load i32*, i32** @vdp_read_byte, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i32* %65, i32** %70, align 8
  %71 = load i32*, i32** @vdp_read_word, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32* %71, i32** %76, align 8
  %77 = load i32*, i32** @vdp_write_byte, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  store i32* %77, i32** %82, align 8
  %83 = load i32*, i32** @vdp_write_word, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32* %83, i32** %88, align 8
  %89 = load i32, i32* @zbank_read_vdp, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 8
  %95 = load i32*, i32** @zbank_write_vdp, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32* %95, i32** %100, align 8
  br label %101

101:                                              ; preds = %64
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 8
  store i32 %103, i32* %1, align 4
  br label %61

104:                                              ; preds = %61
  store i32 224, i32* %1, align 4
  br label %105

105:                                              ; preds = %146, %104
  %106 = load i32, i32* %1, align 4
  %107 = icmp slt i32 %106, 256
  br i1 %107, label %108, label %149

108:                                              ; preds = %105
  %109 = load i8*, i8** @work_ram, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 4
  store i8* %109, i8** %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  store i32* null, i32** %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %131 = load i32, i32* %1, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* @zbank_unused_r, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %108
  %147 = load i32, i32* %1, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %1, align 4
  br label %105

149:                                              ; preds = %105
  %150 = load i32, i32* @system_hw, align 4
  %151 = load i32, i32* @SYSTEM_PICO, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %190

153:                                              ; preds = %149
  %154 = load i32*, i32** @pico_read_byte, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i64 128
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 3
  store i32* %154, i32** %157, align 8
  %158 = load i32*, i32** @pico_read_word, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 128
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store i32* %158, i32** %161, align 8
  %162 = load i8*, i8** @m68k_unused_8_w, align 8
  %163 = bitcast i8* %162 to i32*
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 128
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  store i32* %163, i32** %166, align 8
  %167 = load i8*, i8** @m68k_unused_16_w, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 128
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32* %168, i32** %171, align 8
  %172 = load i32*, i32** @m68k_read_bus_8, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 161
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 3
  store i32* %172, i32** %175, align 8
  %176 = load i32*, i32** @m68k_read_bus_16, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 161
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  store i32* %176, i32** %179, align 8
  %180 = load i8*, i8** @m68k_unused_8_w, align 8
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 161
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  store i32* %181, i32** %184, align 8
  %185 = load i8*, i8** @m68k_unused_16_w, align 8
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 161
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32* %186, i32** %189, align 8
  store i64 0, i64* @pico_current, align 8
  br label %237

190:                                              ; preds = %149
  %191 = load i32*, i32** @ctrl_io_read_byte, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 161
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  store i32* %191, i32** %194, align 8
  %195 = load i32*, i32** @ctrl_io_read_word, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i64 161
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  store i32* %195, i32** %198, align 8
  %199 = load i32*, i32** @ctrl_io_write_byte, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i64 161
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 1
  store i32* %199, i32** %202, align 8
  %203 = load i32*, i32** @ctrl_io_write_word, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 161
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store i32* %203, i32** %206, align 8
  %207 = load i32, i32* @zbank_read_ctrl_io, align 4
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i64 161
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 8
  %211 = load i32*, i32** @zbank_write_ctrl_io, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i64 161
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  store i32* %211, i32** %214, align 8
  store i32 0, i32* %1, align 4
  br label %215

215:                                              ; preds = %229, %190
  %216 = load i32, i32* %1, align 4
  %217 = icmp slt i32 %216, 64
  br i1 %217, label %218, label %232

218:                                              ; preds = %215
  %219 = load i32*, i32** @zram, align 8
  %220 = load i32, i32* %1, align 4
  %221 = and i32 %220, 7
  %222 = shl i32 %221, 10
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %219, i64 %223
  %225 = load i32**, i32*** @z80_readmap, align 8
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  store i32* %224, i32** %228, align 8
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %1, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %1, align 4
  br label %215

232:                                              ; preds = %215
  %233 = load i32, i32* @z80_memory_w, align 4
  store i32 %233, i32* @z80_writemem, align 4
  %234 = load i32, i32* @z80_memory_r, align 4
  store i32 %234, i32* @z80_readmem, align 4
  %235 = load i32, i32* @z80_unused_port_w, align 4
  store i32 %235, i32* @z80_writeport, align 4
  %236 = load i32, i32* @z80_unused_port_r, align 4
  store i32 %236, i32* @z80_readport, align 4
  br label %237

237:                                              ; preds = %232, %153
  %238 = load i32, i32* @system_hw, align 4
  %239 = load i32, i32* @SYSTEM_MCD, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = call i32 (...) @s68k_init()
  %243 = call i32 (...) @scd_init()
  br label %246

244:                                              ; preds = %237
  %245 = call i32 (...) @md_cart_init()
  br label %246

246:                                              ; preds = %244, %241
  br label %267

247:                                              ; preds = %0
  %248 = call i32 (...) @sms_cart_init()
  %249 = load i32, i32* @system_hw, align 4
  switch i32 %249, label %266 [
    i32 131, label %250
    i32 134, label %253
    i32 133, label %253
    i32 129, label %257
    i32 128, label %257
    i32 132, label %260
    i32 130, label %263
  ]

250:                                              ; preds = %247
  %251 = load i32, i32* @z80_md_port_w, align 4
  store i32 %251, i32* @z80_writeport, align 4
  %252 = load i32, i32* @z80_md_port_r, align 4
  store i32 %252, i32* @z80_readport, align 4
  br label %266

253:                                              ; preds = %247, %247
  %254 = call i32 (...) @sms_cart_init()
  %255 = load i32, i32* @z80_gg_port_w, align 4
  store i32 %255, i32* @z80_writeport, align 4
  %256 = load i32, i32* @z80_gg_port_r, align 4
  store i32 %256, i32* @z80_readport, align 4
  br label %266

257:                                              ; preds = %247, %247
  %258 = load i32, i32* @z80_ms_port_w, align 4
  store i32 %258, i32* @z80_writeport, align 4
  %259 = load i32, i32* @z80_ms_port_r, align 4
  store i32 %259, i32* @z80_readport, align 4
  br label %266

260:                                              ; preds = %247
  %261 = load i32, i32* @z80_m3_port_w, align 4
  store i32 %261, i32* @z80_writeport, align 4
  %262 = load i32, i32* @z80_m3_port_r, align 4
  store i32 %262, i32* @z80_readport, align 4
  br label %266

263:                                              ; preds = %247
  %264 = load i32, i32* @z80_sg_port_w, align 4
  store i32 %264, i32* @z80_writeport, align 4
  %265 = load i32, i32* @z80_sg_port_r, align 4
  store i32 %265, i32* @z80_readport, align 4
  br label %266

266:                                              ; preds = %247, %263, %260, %257, %253, %250
  br label %267

267:                                              ; preds = %266, %246
  ret void
}

declare dso_local i32 @z80_init(i32, i32) #1

declare dso_local i32 @m68k_init(...) #1

declare dso_local i32 @s68k_init(...) #1

declare dso_local i32 @scd_init(...) #1

declare dso_local i32 @md_cart_init(...) #1

declare dso_local i32 @sms_cart_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
