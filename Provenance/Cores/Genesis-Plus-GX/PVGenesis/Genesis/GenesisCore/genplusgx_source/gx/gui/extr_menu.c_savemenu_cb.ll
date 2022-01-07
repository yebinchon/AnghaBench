; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_savemenu_cb.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_menu.c_savemenu_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32*, i64 }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@Star_full_png = common dso_local global i32 0, align 4
@sram = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"Backup Memory\00", align 1
@buttons_saves = common dso_local global %struct.TYPE_13__* null, align 8
@DARK_GREY = common dso_local global i64 0, align 8
@slots = common dso_local global %struct.TYPE_11__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%d/%02d/%02d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Backup Memory disabled\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Slot %d\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Empty Slot\00", align 1
@config = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @savemenu_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savemenu_cb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [16 x i8], align 16
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = load i32, i32* @Star_full_png, align 4
  %5 = call %struct.TYPE_9__* @gxTextureOpenPNG(i32 %4, i32 0)
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sram, i32 0, i32 2), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %154

8:                                                ; preds = %0
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 16
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 16
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %17, %24
  %26 = add nsw i64 %25, 16
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %30, %34
  %36 = load i64, i64* @DARK_GREY, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @FONT_write(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 16, i64 %13, i64 %26, i64 %35, i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %123

44:                                               ; preds = %8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %53, i32 %57)
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %63, %67
  %69 = sub nsw i64 %68, 16
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 28
  %79 = sdiv i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %73, %80
  %82 = add nsw i64 %81, 12
  %83 = load i64, i64* @DARK_GREY, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @FONT_alignRight(i8* %59, i32 12, i64 %69, i64 %82, i32 %84)
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %94)
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %100, %104
  %106 = sub nsw i64 %105, 16
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 28
  %116 = sdiv i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %110, %117
  %119 = add nsw i64 %118, 28
  %120 = load i64, i64* @DARK_GREY, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @FONT_alignRight(i8* %96, i32 12, i64 %106, i64 %119, i32 %121)
  br label %123

123:                                              ; preds = %44, %8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sram, i32 0, i32 0), align 8
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sram, i32 0, i32 1), align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = call i64 @crc32(i32 0, i32* %126, i32 65536)
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %138, %141
  %143 = sdiv i32 %142, 2
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %134, %144
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @gxDrawTexture(%struct.TYPE_9__* %130, i32 22, i64 %145, i32 %148, i32 %151, i32 255)
  br label %153

153:                                              ; preds = %129, %123
  br label %184

154:                                              ; preds = %0
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %162, %166
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, 16
  %177 = sdiv i32 %176, 2
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %171, %178
  %180 = add nsw i64 %179, 16
  %181 = load i64, i64* @DARK_GREY, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @FONT_writeCenter(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 16, i64 %158, i64 %167, i64 %180, i32 %182)
  br label %184

184:                                              ; preds = %154, %153
  store i32 1, i32* %1, align 4
  br label %185

185:                                              ; preds = %420, %184
  %186 = load i32, i32* %1, align 4
  %187 = icmp slt i32 %186, 5
  br i1 %187, label %188, label %423

188:                                              ; preds = %185
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %190 = load i32, i32* %1, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 5
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %345

196:                                              ; preds = %188
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %198 = load i32, i32* %1, align 4
  %199 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %198)
  %200 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %202 = load i32, i32* %1, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %206, 16
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %209 = load i32, i32* %1, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %215 = load i32, i32* %1, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = sub nsw i32 %219, 16
  %221 = sdiv i32 %220, 2
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %213, %222
  %224 = add nsw i64 %223, 16
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %226 = load i32, i32* %1, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %232 = load i32, i32* %1, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %230, %236
  %238 = load i64, i64* @DARK_GREY, align 8
  %239 = trunc i64 %238 to i32
  %240 = call i32 @FONT_write(i8* %200, i32 16, i64 %207, i64 %224, i64 %237, i32 %239)
  %241 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %243 = load i32, i32* %1, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %249 = load i32, i32* %1, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %255 = load i32, i32* %1, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %247, i32 %253, i32 %259)
  %261 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %263 = load i32, i32* %1, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %269 = load i32, i32* %1, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 3
  %273 = load i64, i64* %272, align 8
  %274 = add nsw i64 %267, %273
  %275 = sub nsw i64 %274, 16
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %277 = load i32, i32* %1, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %283 = load i32, i32* %1, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = sub nsw i32 %287, 28
  %289 = sdiv i32 %288, 2
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %281, %290
  %292 = add nsw i64 %291, 12
  %293 = load i64, i64* @DARK_GREY, align 8
  %294 = trunc i64 %293 to i32
  %295 = call i32 @FONT_alignRight(i8* %261, i32 12, i64 %275, i64 %292, i32 %294)
  %296 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %298 = load i32, i32* %1, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** @slots, align 8
  %304 = load i32, i32* %1, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %302, i32 %308)
  %310 = getelementptr inbounds [16 x i8], [16 x i8]* %2, i64 0, i64 0
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %312 = load i32, i32* %1, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 2
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %318 = load i32, i32* %1, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %316, %322
  %324 = sub nsw i64 %323, 16
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %326 = load i32, i32* %1, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i64 %327
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %332 = load i32, i32* %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = sub nsw i32 %336, 28
  %338 = sdiv i32 %337, 2
  %339 = sext i32 %338 to i64
  %340 = add nsw i64 %330, %339
  %341 = add nsw i64 %340, 28
  %342 = load i64, i64* @DARK_GREY, align 8
  %343 = trunc i64 %342 to i32
  %344 = call i32 @FONT_alignRight(i8* %310, i32 12, i64 %324, i64 %341, i32 %343)
  br label %387

345:                                              ; preds = %188
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %347 = load i32, i32* %1, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %349, i32 0, i32 2
  %351 = load i64, i64* %350, align 8
  %352 = add nsw i64 %351, 16
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %354 = load i32, i32* %1, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %360 = load i32, i32* %1, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sub nsw i32 %364, 16
  %366 = sdiv i32 %365, 2
  %367 = sext i32 %366 to i64
  %368 = add nsw i64 %358, %367
  %369 = add nsw i64 %368, 16
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %371 = load i32, i32* %1, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 2
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %377 = load i32, i32* %1, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i64 %378
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = sext i32 %381 to i64
  %383 = add nsw i64 %375, %382
  %384 = load i64, i64* @DARK_GREY, align 8
  %385 = trunc i64 %384 to i32
  %386 = call i32 @FONT_write(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 16, i64 %352, i64 %369, i64 %383, i32 %385)
  br label %387

387:                                              ; preds = %345, %196
  %388 = load i32, i32* %1, align 4
  %389 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @config, i32 0, i32 0), align 4
  %390 = icmp eq i32 %388, %389
  br i1 %390, label %391, label %419

391:                                              ; preds = %387
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %394 = load i32, i32* %1, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load %struct.TYPE_13__*, %struct.TYPE_13__** @buttons_saves, align 8
  %400 = load i32, i32* %1, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %404, %407
  %409 = sdiv i32 %408, 2
  %410 = sext i32 %409 to i64
  %411 = add nsw i64 %398, %410
  %412 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @gxDrawTexture(%struct.TYPE_9__* %392, i32 22, i64 %411, i32 %414, i32 %417, i32 255)
  br label %419

419:                                              ; preds = %391, %387
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %1, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %1, align 4
  br label %185

423:                                              ; preds = %185
  %424 = call i32 @gxTextureClose(%struct.TYPE_9__** %3)
  ret void
}

declare dso_local %struct.TYPE_9__* @gxTextureOpenPNG(i32, i32) #1

declare dso_local i32 @FONT_write(i8*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @FONT_alignRight(i8*, i32, i64, i64, i32) #1

declare dso_local i64 @crc32(i32, i32*, i32) #1

declare dso_local i32 @gxDrawTexture(%struct.TYPE_9__*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @FONT_writeCenter(i8*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @gxTextureClose(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
