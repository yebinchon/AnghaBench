; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_NORSRAMInit.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/ThirdParty/SPL/src/extr_stm32f4xx_fsmc.c_FSMC_NORSRAMInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64 }

@FSMC_Bank1 = common dso_local global %struct.TYPE_11__* null, align 8
@FSMC_MemoryType_NOR = common dso_local global i32 0, align 4
@BCR_FACCEN_SET = common dso_local global i64 0, align 8
@FSMC_ExtendedMode_Enable = common dso_local global i32 0, align 4
@FSMC_Bank1E = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FSMC_NORSRAMInit(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @IS_FSMC_NORSRAM_BANK(i64 %5)
  %7 = call i32 @assert_param(i32 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 14
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @IS_FSMC_MUX(i64 %10)
  %12 = call i32 @assert_param(i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IS_FSMC_MEMORY(i32 %15)
  %17 = call i32 @assert_param(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IS_FSMC_MEMORY_WIDTH(i32 %20)
  %22 = call i32 @assert_param(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IS_FSMC_BURSTMODE(i32 %25)
  %27 = call i32 @assert_param(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @IS_FSMC_ASYNWAIT(i32 %30)
  %32 = call i32 @assert_param(i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IS_FSMC_WAIT_POLARITY(i32 %35)
  %37 = call i32 @assert_param(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @IS_FSMC_WRAP_MODE(i32 %40)
  %42 = call i32 @assert_param(i32 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IS_FSMC_WAIT_SIGNAL_ACTIVE(i32 %45)
  %47 = call i32 @assert_param(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @IS_FSMC_WRITE_OPERATION(i32 %50)
  %52 = call i32 @assert_param(i32 %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @IS_FSMC_WAITE_SIGNAL(i32 %55)
  %57 = call i32 @assert_param(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IS_FSMC_EXTENDED_MODE(i32 %60)
  %62 = call i32 @assert_param(i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @IS_FSMC_WRITE_BURST(i32 %65)
  %67 = call i32 @assert_param(i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 13
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @IS_FSMC_ADDRESS_SETUP_TIME(i64 %72)
  %74 = call i32 @assert_param(i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 13
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @IS_FSMC_ADDRESS_HOLD_TIME(i32 %79)
  %81 = call i32 @assert_param(i32 %80)
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 13
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @IS_FSMC_DATASETUP_TIME(i32 %86)
  %88 = call i32 @assert_param(i32 %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 13
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @IS_FSMC_TURNAROUND_TIME(i32 %93)
  %95 = call i32 @assert_param(i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 13
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @IS_FSMC_CLK_DIV(i32 %100)
  %102 = call i32 @assert_param(i32 %101)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 13
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @IS_FSMC_DATA_LATENCY(i32 %107)
  %109 = call i32 @assert_param(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 13
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @IS_FSMC_ACCESS_MODE(i32 %114)
  %116 = call i32 @assert_param(i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 14
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %120, %123
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %124, %127
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %128, %131
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %132, %135
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %136, %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %140, %143
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %144, %147
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %148, %151
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %152, %155
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %156, %159
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 8
  %164 = or i32 %160, %163
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank1, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %164, i32* %171, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @FSMC_MemoryType_NOR, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %189

177:                                              ; preds = %1
  %178 = load i64, i64* @BCR_FACCEN_SET, align 8
  %179 = trunc i64 %178 to i32
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank1, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %179
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %177, %1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 13
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 6
  %194 = load i64, i64* %193, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 13
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = shl i32 %200, 4
  %202 = or i32 %195, %201
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 13
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = shl i32 %207, 8
  %209 = or i32 %202, %208
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 13
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = shl i32 %214, 16
  %216 = or i32 %209, %215
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 13
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = shl i32 %221, 20
  %223 = or i32 %216, %222
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 13
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = shl i32 %228, 24
  %230 = or i32 %223, %229
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 13
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %230, %235
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** @FSMC_Bank1, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, 1
  %244 = getelementptr inbounds i32, i32* %239, i64 %243
  store i32 %236, i32* %244, align 4
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 10
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @FSMC_ExtendedMode_Enable, align 4
  %249 = icmp eq i32 %247, %248
  br i1 %249, label %250, label %340

250:                                              ; preds = %189
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 12
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @IS_FSMC_ADDRESS_SETUP_TIME(i64 %255)
  %257 = call i32 @assert_param(i32 %256)
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 12
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @IS_FSMC_ADDRESS_HOLD_TIME(i32 %262)
  %264 = call i32 @assert_param(i32 %263)
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 12
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @IS_FSMC_DATASETUP_TIME(i32 %269)
  %271 = call i32 @assert_param(i32 %270)
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %272, i32 0, i32 12
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @IS_FSMC_CLK_DIV(i32 %276)
  %278 = call i32 @assert_param(i32 %277)
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i32 0, i32 12
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @IS_FSMC_DATA_LATENCY(i32 %283)
  %285 = call i32 @assert_param(i32 %284)
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 12
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = call i32 @IS_FSMC_ACCESS_MODE(i32 %290)
  %292 = call i32 @assert_param(i32 %291)
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 12
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = trunc i64 %297 to i32
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 12
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = shl i32 %303, 4
  %305 = or i32 %298, %304
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 12
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = shl i32 %310, 8
  %312 = or i32 %305, %311
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %313, i32 0, i32 12
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = shl i32 %317, 20
  %319 = or i32 %312, %318
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 12
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = shl i32 %324, 24
  %326 = or i32 %319, %325
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 12
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = or i32 %326, %331
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FSMC_Bank1E, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i32*, i32** %334, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = getelementptr inbounds i32, i32* %335, i64 %338
  store i32 %332, i32* %339, align 4
  br label %348

340:                                              ; preds = %189
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** @FSMC_Bank1E, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  store i32 268435455, i32* %347, align 4
  br label %348

348:                                              ; preds = %340, %250
  ret void
}

declare dso_local i32 @assert_param(i32) #1

declare dso_local i32 @IS_FSMC_NORSRAM_BANK(i64) #1

declare dso_local i32 @IS_FSMC_MUX(i64) #1

declare dso_local i32 @IS_FSMC_MEMORY(i32) #1

declare dso_local i32 @IS_FSMC_MEMORY_WIDTH(i32) #1

declare dso_local i32 @IS_FSMC_BURSTMODE(i32) #1

declare dso_local i32 @IS_FSMC_ASYNWAIT(i32) #1

declare dso_local i32 @IS_FSMC_WAIT_POLARITY(i32) #1

declare dso_local i32 @IS_FSMC_WRAP_MODE(i32) #1

declare dso_local i32 @IS_FSMC_WAIT_SIGNAL_ACTIVE(i32) #1

declare dso_local i32 @IS_FSMC_WRITE_OPERATION(i32) #1

declare dso_local i32 @IS_FSMC_WAITE_SIGNAL(i32) #1

declare dso_local i32 @IS_FSMC_EXTENDED_MODE(i32) #1

declare dso_local i32 @IS_FSMC_WRITE_BURST(i32) #1

declare dso_local i32 @IS_FSMC_ADDRESS_SETUP_TIME(i64) #1

declare dso_local i32 @IS_FSMC_ADDRESS_HOLD_TIME(i32) #1

declare dso_local i32 @IS_FSMC_DATASETUP_TIME(i32) #1

declare dso_local i32 @IS_FSMC_TURNAROUND_TIME(i32) #1

declare dso_local i32 @IS_FSMC_CLK_DIV(i32) #1

declare dso_local i32 @IS_FSMC_DATA_LATENCY(i32) #1

declare dso_local i32 @IS_FSMC_ACCESS_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
