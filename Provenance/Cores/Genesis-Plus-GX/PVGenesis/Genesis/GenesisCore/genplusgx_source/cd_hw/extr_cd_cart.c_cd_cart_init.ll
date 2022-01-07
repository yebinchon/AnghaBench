; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cd_cart.c_cd_cart_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cd_cart.c_cd_cart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8*, i32, i8*, i32* }
%struct.TYPE_8__ = type { i8*, i8* }

@scd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@sram = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cart_id_read_byte = common dso_local global i8* null, align 8
@cart_id_read_word = common dso_local global i32 0, align 4
@m68k_unused_8_w = common dso_local global i8* null, align 8
@m68k_unused_16_w = common dso_local global i32 0, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_8__* null, align 8
@zbank_unused_w = common dso_local global i8* null, align 8
@cart_ram_read_byte = common dso_local global i8* null, align 8
@cart_ram_read_word = common dso_local global i32 0, align 4
@cart_ram_write_byte = common dso_local global i8* null, align 8
@cart_ram_write_word = common dso_local global i32 0, align 4
@cart_prot_read_byte = common dso_local global i8* null, align 8
@cart_prot_read_word = common dso_local global i32 0, align 4
@cart_prot_write_byte = common dso_local global i8* null, align 8
@cart_prot_write_word = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cd_cart_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 3), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 0), align 8
  br label %6

5:                                                ; preds = %0
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 0), align 8
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 0), align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %164

9:                                                ; preds = %6
  %10 = call i32 @memset(i32* @sram, i32 0, i32 4)
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 4), align 8
  %12 = call i32 @memset(i32* %11, i32 0, i32 8)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 0), align 8
  %14 = add nsw i32 %13, 13
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 2), align 8
  store i32 64, i32* %1, align 4
  br label %17

17:                                               ; preds = %62, %9
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 96
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load i8*, i8** @cart_id_read_byte, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i8* %26, i8** %31, align 8
  %32 = load i32, i32* @cart_id_read_word, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 %32, i32* %37, align 8
  %38 = load i8*, i8** @m68k_unused_8_w, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i8* %38, i8** %43, align 8
  %44 = load i32, i32* @m68k_unused_16_w, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 8
  %50 = load i8*, i8** @cart_id_read_byte, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load i8*, i8** @zbank_unused_w, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  br label %62

62:                                               ; preds = %20
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %17

65:                                               ; preds = %17
  store i32 96, i32* %1, align 4
  br label %66

66:                                               ; preds = %111, %65
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %67, 112
  br i1 %68, label %69, label %114

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  store i32* null, i32** %74, align 8
  %75 = load i8*, i8** @cart_ram_read_byte, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i8* %75, i8** %80, align 8
  %81 = load i32, i32* @cart_ram_read_word, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i32 %81, i32* %86, align 8
  %87 = load i8*, i8** @cart_ram_write_byte, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store i8* %87, i8** %92, align 8
  %93 = load i32, i32* @cart_ram_write_word, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 8
  %99 = load i8*, i8** @cart_ram_read_byte, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  %105 = load i8*, i8** @cart_ram_write_byte, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %107 = load i32, i32* %1, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i8* %105, i8** %110, align 8
  br label %111

111:                                              ; preds = %69
  %112 = load i32, i32* %1, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %1, align 4
  br label %66

114:                                              ; preds = %66
  store i32 112, i32* %1, align 4
  br label %115

115:                                              ; preds = %160, %114
  %116 = load i32, i32* %1, align 4
  %117 = icmp slt i32 %116, 128
  br i1 %117, label %118, label %163

118:                                              ; preds = %115
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 4
  store i32* null, i32** %123, align 8
  %124 = load i8*, i8** @cart_prot_read_byte, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  store i8* %124, i8** %129, align 8
  %130 = load i32, i32* @cart_prot_read_word, align 4
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  store i32 %130, i32* %135, align 8
  %136 = load i8*, i8** @cart_prot_write_byte, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %138 = load i32, i32* %1, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i8* %136, i8** %141, align 8
  %142 = load i32, i32* @cart_prot_write_word, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %144 = load i32, i32* %1, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %142, i32* %147, align 8
  %148 = load i8*, i8** @cart_prot_read_byte, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  store i8* %148, i8** %153, align 8
  %154 = load i8*, i8** @cart_prot_write_byte, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i8* %154, i8** %159, align 8
  br label %160

160:                                              ; preds = %118
  %161 = load i32, i32* %1, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %1, align 4
  br label %115

163:                                              ; preds = %115
  br label %262

164:                                              ; preds = %6
  %165 = call i32 (...) @md_cart_init()
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 3), align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %261, label %168

168:                                              ; preds = %164
  store i32 0, i32* %1, align 4
  br label %169

169:                                              ; preds = %257, %168
  %170 = load i32, i32* %1, align 4
  %171 = icmp slt i32 %170, 64
  br i1 %171, label %172, label %260

172:                                              ; preds = %169
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 4
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 64
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 4
  store i32* %178, i32** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %186 = load i32, i32* %1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %192 = load i32, i32* %1, align 4
  %193 = add nsw i32 %192, 64
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  store i8* %190, i8** %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %204 = load i32, i32* %1, align 4
  %205 = add nsw i32 %204, 64
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  store i32 %202, i32* %208, align 8
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %210 = load i32, i32* %1, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %216 = load i32, i32* %1, align 4
  %217 = add nsw i32 %216, 64
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  store i8* %214, i8** %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %222 = load i32, i32* %1, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %228 = load i32, i32* %1, align 4
  %229 = add nsw i32 %228, 64
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i32 %226, i32* %232, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %240 = load i32, i32* %1, align 4
  %241 = add nsw i32 %240, 64
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  store i8* %238, i8** %244, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %246 = load i32, i32* %1, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %252 = load i32, i32* %1, align 4
  %253 = add nsw i32 %252, 64
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  store i8* %250, i8** %256, align 8
  br label %257

257:                                              ; preds = %172
  %258 = load i32, i32* %1, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %1, align 4
  br label %169

260:                                              ; preds = %169
  br label %261

261:                                              ; preds = %260, %164
  br label %262

262:                                              ; preds = %261, %163
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @md_cart_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
