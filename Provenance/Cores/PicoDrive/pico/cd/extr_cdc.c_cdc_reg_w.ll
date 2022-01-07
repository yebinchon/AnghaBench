; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_reg_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_cdc.c_cdc_reg_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i8, i32, i32, i32, i8*, i8*, i32, i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@BIT_DTEIEN = common dso_local global i8 0, align 1
@cdc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@BIT_DTEI = common dso_local global i32 0, align 4
@BIT_DECIEN = common dso_local global i8 0, align 1
@BIT_DECI = common dso_local global i32 0, align 4
@PCDS_IEN5 = common dso_local global i32 0, align 4
@EL_INTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cdc pending irq 5\00", align 1
@BIT_DOUTEN = common dso_local global i8 0, align 1
@BIT_DTBSY = common dso_local global i32 0, align 4
@BIT_DTEN = common dso_local global i32 0, align 4
@pcm_ram_dma_w = common dso_local global i32 0, align 4
@prg_ram_dma_w = common dso_local global i32 0, align 4
@word_ram_0_dma_w = common dso_local global i32 0, align 4
@word_ram_1_dma_w = common dso_local global i32 0, align 4
@word_ram_2M_dma_w = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"invalid CDC tranfer destination (%d)\00", align 1
@PCD_EVENT_DMA = common dso_local global i32 0, align 4
@BIT_DECEN = common dso_local global i8 0, align 1
@BIT_AUTORQ = common dso_local global i8 0, align 1
@BIT_MODRQ = common dso_local global i8 0, align 1
@BIT_FORMRQ = common dso_local global i8 0, align 1
@EL_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdc_reg_w(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 5
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 15
  switch i32 %8, label %360 [
    i32 1, label %9
    i32 2, label %68
    i32 3, label %79
    i32 4, label %91
    i32 5, label %102
    i32 6, label %114
    i32 7, label %211
    i32 8, label %221
    i32 9, label %232
    i32 10, label %244
    i32 11, label %292
    i32 12, label %330
    i32 13, label %341
    i32 14, label %353
    i32 15, label %358
  ]

9:                                                ; preds = %1
  %10 = load i8, i8* %2, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @BIT_DTEIEN, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %18 = load i32, i32* @BIT_DTEI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16, %9
  %22 = load i8, i8* %2, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @BIT_DECIEN, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %30 = load i32, i32* @BIT_DECI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %28, %16
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 51
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PCDS_IEN5, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @EL_INTS, align 4
  %44 = call i32 (i32, i8*, ...) @elprintf(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @SekInterruptS68k(i32 5)
  br label %46

46:                                               ; preds = %42, %33
  br label %49

47:                                               ; preds = %28, %21
  %48 = call i32 @SekInterruptClearS68k(i32 5)
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i8, i8* %2, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @BIT_DOUTEN, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @BIT_DTBSY, align 4
  %58 = load i32, i32* @BIT_DTEN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %61 = or i32 %60, %59
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  br label %62

62:                                               ; preds = %56, %49
  %63 = load i8, i8* %2, align 1
  store i8 %63, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  store i32 2, i32* %67, align 4
  br label %361

68:                                               ; preds = %1
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %70 = and i32 %69, 65280
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %71 = load i8, i8* %2, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %74 = or i32 %73, %72
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 3, i32* %78, align 4
  br label %361

79:                                               ; preds = %1
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %81 = and i32 %80, 255
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %82 = load i8, i8* %2, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %86 = or i32 %85, %84
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  store i32 4, i32* %90, align 4
  br label %361

91:                                               ; preds = %1
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %93 = and i32 %92, 65280
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %94 = load i8, i8* %2, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 5, i32* %101, align 4
  br label %361

102:                                              ; preds = %1
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %104 = and i32 %103, 255
  store i32 %104, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %105 = load i8, i8* %2, align 1
  %106 = zext i8 %105 to i32
  %107 = shl i32 %106, 8
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 3), align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  store i32 6, i32* %113, align 4
  br label %361

114:                                              ; preds = %1
  %115 = load i8, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 1), align 4
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @BIT_DOUTEN, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %206

121:                                              ; preds = %114
  %122 = load i32, i32* @BIT_DTBSY, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %125 = and i32 %124, %123
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %127 = and i32 %126, 4095
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 7
  store i32 %133, i32* %131, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 7
  switch i32 %139, label %188 [
    i32 2, label %140
    i32 3, label %140
    i32 4, label %151
    i32 5, label %153
    i32 7, label %155
  ]

140:                                              ; preds = %121, %121
  %141 = load i32, i32* @BIT_DTEN, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %144 = and i32 %143, %142
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 4
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, 64
  store i32 %150, i32* %148, align 4
  br label %197

151:                                              ; preds = %121
  %152 = load i32, i32* @pcm_ram_dma_w, align 4
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  br label %197

153:                                              ; preds = %121
  %154 = load i32, i32* @prg_ram_dma_w, align 4
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  br label %197

155:                                              ; preds = %121
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 3
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %176

163:                                              ; preds = %155
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 1
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = load i32, i32* @word_ram_0_dma_w, align 4
  store i32 %172, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  br label %175

173:                                              ; preds = %163
  %174 = load i32, i32* @word_ram_1_dma_w, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  br label %175

175:                                              ; preds = %173, %171
  br label %187

176:                                              ; preds = %155
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 2
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i32, i32* @word_ram_2M_dma_w, align 4
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  br label %186

186:                                              ; preds = %184, %176
  br label %187

187:                                              ; preds = %186, %175
  br label %197

188:                                              ; preds = %121
  %189 = load i32, i32* @EL_ANOMALY, align 4
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 4
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 7
  %196 = call i32 (i32, i8*, ...) @elprintf(i32 %189, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %188, %187, %153, %151, %140
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 8), align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = load i32, i32* @PCD_EVENT_DMA, align 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %203 = sdiv i32 %202, 2
  %204 = call i32 @pcd_event_schedule_s68k(i32 %201, i32 %203)
  br label %205

205:                                              ; preds = %200, %197
  br label %206

206:                                              ; preds = %205, %114
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  store i32 7, i32* %210, align 4
  br label %361

211:                                              ; preds = %1
  %212 = load i32, i32* @BIT_DTEI, align 4
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %214 = or i32 %213, %212
  store i32 %214, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 0), align 8
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %216 = and i32 %215, 4095
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 2), align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 5
  store i32 8, i32* %220, align 4
  br label %361

221:                                              ; preds = %1
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %223 = and i32 %222, 65280
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %224 = load i8, i8* %2, align 1
  %225 = zext i8 %224 to i32
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %227 = or i32 %226, %225
  store i32 %227, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 5
  store i32 9, i32* %231, align 4
  br label %361

232:                                              ; preds = %1
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %234 = and i32 %233, 255
  store i32 %234, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %235 = load i8, i8* %2, align 1
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 8
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %239 = or i32 %238, %237
  store i32 %239, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 4), align 8
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 5
  store i32 10, i32* %243, align 4
  br label %361

244:                                              ; preds = %1
  %245 = load i8, i8* %2, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8, i8* @BIT_DECEN, align 1
  %248 = zext i8 %247 to i32
  %249 = and i32 %246, %248
  %250 = trunc i32 %249 to i8
  %251 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  store i8 %250, i8* %252, align 1
  %253 = load i8, i8* %2, align 1
  %254 = zext i8 %253 to i32
  %255 = load i8, i8* @BIT_AUTORQ, align 1
  %256 = zext i8 %255 to i32
  %257 = and i32 %254, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %244
  %260 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = load i8, i8* @BIT_MODRQ, align 1
  %265 = zext i8 %264 to i32
  %266 = and i32 %263, %265
  %267 = trunc i32 %266 to i8
  %268 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 2
  store i8 %267, i8* %269, align 1
  br label %284

270:                                              ; preds = %244
  %271 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 1
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = load i8, i8* @BIT_MODRQ, align 1
  %276 = zext i8 %275 to i32
  %277 = load i8, i8* @BIT_FORMRQ, align 1
  %278 = zext i8 %277 to i32
  %279 = or i32 %276, %278
  %280 = and i32 %274, %279
  %281 = trunc i32 %280 to i8
  %282 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 2
  store i8 %281, i8* %283, align 1
  br label %284

284:                                              ; preds = %270, %259
  %285 = load i8, i8* %2, align 1
  %286 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 0
  store i8 %285, i8* %287, align 1
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 5
  store i32 11, i32* %291, align 4
  br label %361

292:                                              ; preds = %1
  %293 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 0
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = load i8, i8* @BIT_AUTORQ, align 1
  %298 = zext i8 %297 to i32
  %299 = and i32 %296, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %292
  %302 = load i8, i8* %2, align 1
  %303 = zext i8 %302 to i32
  %304 = load i8, i8* @BIT_MODRQ, align 1
  %305 = zext i8 %304 to i32
  %306 = and i32 %303, %305
  %307 = trunc i32 %306 to i8
  %308 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 2
  store i8 %307, i8* %309, align 1
  br label %322

310:                                              ; preds = %292
  %311 = load i8, i8* %2, align 1
  %312 = zext i8 %311 to i32
  %313 = load i8, i8* @BIT_MODRQ, align 1
  %314 = zext i8 %313 to i32
  %315 = load i8, i8* @BIT_FORMRQ, align 1
  %316 = zext i8 %315 to i32
  %317 = or i32 %314, %316
  %318 = and i32 %312, %317
  %319 = trunc i32 %318 to i8
  %320 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 5), align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 2
  store i8 %319, i8* %321, align 1
  br label %322

322:                                              ; preds = %310, %301
  %323 = load i8, i8* %2, align 1
  %324 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 6), align 8
  %325 = getelementptr inbounds i8, i8* %324, i64 1
  store i8 %323, i8* %325, align 1
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 5
  store i32 12, i32* %329, align 4
  br label %361

330:                                              ; preds = %1
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %332 = and i32 %331, 65280
  store i32 %332, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %333 = load i8, i8* %2, align 1
  %334 = zext i8 %333 to i32
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %336 = or i32 %335, %334
  store i32 %336, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %338 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 5
  store i32 13, i32* %340, align 4
  br label %361

341:                                              ; preds = %1
  %342 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %343 = and i32 %342, 255
  store i32 %343, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %344 = load i8, i8* %2, align 1
  %345 = zext i8 %344 to i32
  %346 = shl i32 %345, 8
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %348 = or i32 %347, %346
  store i32 %348, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cdc, i32 0, i32 7), align 8
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 0
  %351 = load i32*, i32** %350, align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 5
  store i32 14, i32* %352, align 4
  br label %361

353:                                              ; preds = %1
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 5
  store i32 15, i32* %357, align 4
  br label %361

358:                                              ; preds = %1
  %359 = call i32 (...) @cdc_reset()
  br label %361

360:                                              ; preds = %1
  br label %361

361:                                              ; preds = %360, %358, %353, %341, %330, %322, %284, %232, %221, %211, %206, %102, %91, %79, %68, %62
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, ...) #1

declare dso_local i32 @SekInterruptS68k(i32) #1

declare dso_local i32 @SekInterruptClearS68k(i32) #1

declare dso_local i32 @pcd_event_schedule_s68k(i32, i32) #1

declare dso_local i32 @cdc_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
