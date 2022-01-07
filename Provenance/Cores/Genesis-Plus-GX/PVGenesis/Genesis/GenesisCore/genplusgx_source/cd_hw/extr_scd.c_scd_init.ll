; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_scd.c_scd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32*, i32* }

@scd = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@m68k = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@zbank_memory_map = common dso_local global %struct.TYPE_11__* null, align 8
@m68k_unused_8_w = common dso_local global i32* null, align 8
@m68k_unused_16_w = common dso_local global i32* null, align 8
@zbank_unused_w = common dso_local global i32* null, align 8
@s68k = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@prg_ram_write_byte = common dso_local global i32* null, align 8
@prg_ram_write_word = common dso_local global i32* null, align 8
@s68k_read_bus_8 = common dso_local global i32* null, align 8
@s68k_read_bus_16 = common dso_local global i32* null, align 8
@s68k_unused_8_w = common dso_local global i32* null, align 8
@s68k_unused_16_w = common dso_local global i32* null, align 8
@bram_read_byte = common dso_local global i32* null, align 8
@bram_read_word = common dso_local global i32* null, align 8
@bram_write_byte = common dso_local global i32* null, align 8
@bram_write_word = common dso_local global i32* null, align 8
@scd_read_byte = common dso_local global i32* null, align 8
@scd_read_word = common dso_local global i32* null, align 8
@scd_write_byte = common dso_local global i32* null, align 8
@scd_write_word = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 5, i32 0), align 8
  store i32 %3, i32* %2, align 4
  %4 = call i32 (...) @cd_cart_init()
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %1, align 4
  br label %6

6:                                                ; preds = %103, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 32
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %106

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, 2
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 3), align 8
  %17 = load i32, i32* %1, align 4
  %18 = and i32 %17, 1
  %19 = shl i32 %18, 16
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  store i32* %21, i32** %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @zbank_memory_map, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @zbank_memory_map, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  br label %102

57:                                               ; preds = %11
  %58 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 4), align 8
  %59 = load i32, i32* %1, align 4
  %60 = and i32 %59, 1
  %61 = shl i32 %60, 16
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  store i32* %63, i32** %68, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  %79 = load i32*, i32** @m68k_unused_8_w, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32* %79, i32** %84, align 8
  %85 = load i32*, i32** @m68k_unused_16_w, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32* %85, i32** %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @zbank_memory_map, align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32* null, i32** %95, align 8
  %96 = load i32*, i32** @zbank_unused_w, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** @zbank_memory_map, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32* %96, i32** %101, align 8
  br label %102

102:                                              ; preds = %57, %15
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %1, align 4
  br label %6

106:                                              ; preds = %6
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 32
  store i32 %108, i32* %1, align 4
  br label %109

109:                                              ; preds = %156, %106
  %110 = load i32, i32* %1, align 4
  %111 = load i32, i32* %2, align 4
  %112 = add nsw i32 %111, 64
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %159

114:                                              ; preds = %109
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 1), align 8
  %116 = load i32, i32* %1, align 4
  %117 = and i32 %116, 3
  %118 = shl i32 %117, 16
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 4
  store i32* %120, i32** %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  store i32* null, i32** %130, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32* null, i32** %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @m68k, i32 0, i32 0), align 8
  %142 = load i32, i32* %1, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** @zbank_memory_map, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @zbank_memory_map, align 8
  %152 = load i32, i32* %1, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32* null, i32** %155, align 8
  br label %156

156:                                              ; preds = %114
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %1, align 4
  br label %109

159:                                              ; preds = %109
  store i32 0, i32* %1, align 4
  br label %160

160:                                              ; preds = %208, %159
  %161 = load i32, i32* %1, align 4
  %162 = icmp slt i32 %161, 8
  br i1 %162, label %163, label %211

163:                                              ; preds = %160
  %164 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 3), align 8
  %165 = load i32, i32* %1, align 4
  %166 = shl i32 %165, 16
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %170 = load i32, i32* %1, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 4
  store i32* %168, i32** %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 3
  store i32* null, i32** %178, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %180 = load i32, i32* %1, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  store i32* null, i32** %183, align 8
  %184 = load i32, i32* %1, align 4
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %186, label %188

186:                                              ; preds = %163
  %187 = load i32*, i32** @prg_ram_write_byte, align 8
  br label %189

188:                                              ; preds = %163
  br label %189

189:                                              ; preds = %188, %186
  %190 = phi i32* [ %187, %186 ], [ null, %188 ]
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %192 = load i32, i32* %1, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32* %190, i32** %195, align 8
  %196 = load i32, i32* %1, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %200

198:                                              ; preds = %189
  %199 = load i32*, i32** @prg_ram_write_word, align 8
  br label %201

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i32* [ %199, %198 ], [ null, %200 ]
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  store i32* %202, i32** %207, align 8
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %1, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %1, align 4
  br label %160

211:                                              ; preds = %160
  store i32 8, i32* %1, align 4
  br label %212

212:                                              ; preds = %247, %211
  %213 = load i32, i32* %1, align 4
  %214 = icmp slt i32 %213, 12
  br i1 %214, label %215, label %250

215:                                              ; preds = %212
  %216 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 1), align 8
  %217 = load i32, i32* %1, align 4
  %218 = and i32 %217, 3
  %219 = shl i32 %218, 16
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %216, i64 %220
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %223 = load i32, i32* %1, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 4
  store i32* %221, i32** %226, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 3
  store i32* null, i32** %231, align 8
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %233 = load i32, i32* %1, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 2
  store i32* null, i32** %236, align 8
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %238 = load i32, i32* %1, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  store i32* null, i32** %241, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i32* null, i32** %246, align 8
  br label %247

247:                                              ; preds = %215
  %248 = load i32, i32* %1, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %1, align 4
  br label %212

250:                                              ; preds = %212
  store i32 12, i32* %1, align 4
  br label %251

251:                                              ; preds = %290, %250
  %252 = load i32, i32* %1, align 4
  %253 = icmp slt i32 %252, 253
  br i1 %253, label %254, label %293

254:                                              ; preds = %251
  %255 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 1), align 8
  %256 = load i32, i32* %1, align 4
  %257 = and i32 %256, 3
  %258 = shl i32 %257, 16
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %262 = load i32, i32* %1, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 4
  store i32* %260, i32** %265, align 8
  %266 = load i32*, i32** @s68k_read_bus_8, align 8
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %268 = load i32, i32* %1, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 3
  store i32* %266, i32** %271, align 8
  %272 = load i32*, i32** @s68k_read_bus_16, align 8
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %274 = load i32, i32* %1, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 2
  store i32* %272, i32** %277, align 8
  %278 = load i32*, i32** @s68k_unused_8_w, align 8
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %280 = load i32, i32* %1, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  store i32* %278, i32** %283, align 8
  %284 = load i32*, i32** @s68k_unused_16_w, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %286 = load i32, i32* %1, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  store i32* %284, i32** %289, align 8
  br label %290

290:                                              ; preds = %254
  %291 = load i32, i32* %1, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %1, align 4
  br label %251

293:                                              ; preds = %251
  store i32 253, i32* %1, align 4
  br label %294

294:                                              ; preds = %327, %293
  %295 = load i32, i32* %1, align 4
  %296 = icmp slt i32 %295, 255
  br i1 %296, label %297, label %330

297:                                              ; preds = %294
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %299 = load i32, i32* %1, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 4
  store i32* null, i32** %302, align 8
  %303 = load i32*, i32** @bram_read_byte, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %305 = load i32, i32* %1, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  store i32* %303, i32** %308, align 8
  %309 = load i32*, i32** @bram_read_word, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %311 = load i32, i32* %1, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 2
  store i32* %309, i32** %314, align 8
  %315 = load i32*, i32** @bram_write_byte, align 8
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %317 = load i32, i32* %1, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  store i32* %315, i32** %320, align 8
  %321 = load i32*, i32** @bram_write_word, align 8
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %323 = load i32, i32* %1, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 0
  store i32* %321, i32** %326, align 8
  br label %327

327:                                              ; preds = %297
  %328 = load i32, i32* %1, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %1, align 4
  br label %294

330:                                              ; preds = %294
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i64 255
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 4
  store i32* null, i32** %333, align 8
  %334 = load i32*, i32** @scd_read_byte, align 8
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i64 255
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 3
  store i32* %334, i32** %337, align 8
  %338 = load i32*, i32** @scd_read_word, align 8
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i64 255
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 2
  store i32* %338, i32** %341, align 8
  %342 = load i32*, i32** @scd_write_byte, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i64 255
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  store i32* %342, i32** %345, align 8
  %346 = load i32*, i32** @scd_write_word, align 8
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s68k, i32 0, i32 0), align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i64 255
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  store i32* %346, i32** %349, align 8
  %350 = call i32 (...) @cdc_init()
  %351 = call i32 (...) @gfx_init()
  %352 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 3), align 8
  %353 = call i32 @memset(i32* %352, i32 0, i32 8)
  %354 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 2), align 8
  %355 = call i32 @memset(i32* %354, i32 0, i32 8)
  %356 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 1), align 8
  %357 = call i32 @memset(i32* %356, i32 0, i32 8)
  %358 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @scd, i32 0, i32 0), align 8
  %359 = call i32 @memset(i32* %358, i32 0, i32 8)
  ret void
}

declare dso_local i32 @cd_cart_init(...) #1

declare dso_local i32 @cdc_init(...) #1

declare dso_local i32 @gfx_init(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
