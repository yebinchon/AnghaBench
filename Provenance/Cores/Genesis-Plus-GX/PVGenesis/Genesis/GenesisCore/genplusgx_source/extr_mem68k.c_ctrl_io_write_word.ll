; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_ctrl_io_write_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_mem68k.c_ctrl_io_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_18__, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 (i32, i32)* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }

@m68k = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_MCD = common dso_local global i32 0, align 4
@scd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cart = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@svp = common dso_local global %struct.TYPE_26__* null, align 8
@SSP_XST = common dso_local global i64 0, align 8
@SSP_PM0 = common dso_local global i64 0, align 8
@SSP_WAIT_PM0 = common dso_local global i32 0, align 4
@v_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctrl_io_write_word(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 255
  switch i32 %7, label %285 [
    i32 0, label %8
    i32 17, label %23
    i32 18, label %29
    i32 32, label %35
    i32 48, label %228
    i32 64, label %233
    i32 80, label %246
    i32 16, label %281
    i32 19, label %281
    i32 65, label %281
    i32 68, label %281
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 224
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 15
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 255
  %18 = call i32 @io_68k_write(i32 %15, i32 %17)
  br label %289

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @m68k_unused_16_w(i32 %20, i32 %21)
  br label %289

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 1
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @m68k, i32 0, i32 0), align 8
  %28 = call i32 @gen_zbusreq_w(i32 %26, i8* %27)
  br label %289

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = lshr i32 %30, 8
  %32 = and i32 %31, 1
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @m68k, i32 0, i32 0), align 8
  %34 = call i32 @gen_zreset_w(i32 %32, i8* %33)
  br label %289

35:                                               ; preds = %2
  %36 = load i32, i32* @system_hw, align 4
  %37 = load i32, i32* @SYSTEM_MCD, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %224

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 62
  switch i32 %41, label %204 [
    i32 0, label %42
    i32 2, label %105
    i32 6, label %188
    i32 14, label %197
  ]

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %46
  %55 = call i32 (...) @s68k_pulse_reset()
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (...) @s68k_pulse_halt()
  br label %64

62:                                               ; preds = %56
  %63 = call i32 (...) @s68k_clear_halt()
  br label %64

64:                                               ; preds = %62, %60
  br label %67

65:                                               ; preds = %42
  %66 = call i32 (...) @s68k_pulse_halt()
  br label %67

67:                                               ; preds = %65, %64
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 256
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %67
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i64 25
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %71
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 0), align 8
  %87 = or i32 %86, 4
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 0), align 8
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 0), align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i64 25
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %88, %93
  %95 = ashr i32 %94, 1
  %96 = call i32 @s68k_update_irq(i32 %95)
  br label %97

97:                                               ; preds = %79, %71
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32, i32* %4, align 4
  %100 = and i32 %99, 255
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  br label %289

105:                                              ; preds = %39
  %106 = call i32 @m68k_poll_sync(i32 2)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 4), align 4
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, 192
  %110 = shl i32 %109, 11
  %111 = add i32 %107, %110
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @m68k, i32 0, i32 1), align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 3, i32 0), align 8
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  store i32 %111, i32* %117, align 4
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @m68k, i32 0, i32 1), align 8
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 3, i32 0), align 8
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 65536
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @m68k, i32 0, i32 1), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 3, i32 0), align 8
  %128 = add nsw i32 %127, 3
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  store i32 %125, i32* %131, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i64 1
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %159

139:                                              ; preds = %105
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, 2
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 1), align 4
  br label %158

144:                                              ; preds = %139
  %145 = load i32, i32* %4, align 4
  %146 = or i32 %145, 2
  store i32 %146, i32* %4, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 1
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, -65475
  %152 = load i32, i32* %4, align 4
  %153 = and i32 %152, 65474
  %154 = or i32 %151, %153
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i64 1
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 4
  br label %289

158:                                              ; preds = %143
  br label %176

159:                                              ; preds = %105
  %160 = load i32, i32* %4, align 4
  %161 = and i32 %160, 2
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %159
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 1), align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i64 1
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, -65476
  %169 = load i32, i32* %4, align 4
  %170 = and i32 %169, 65474
  %171 = or i32 %168, %170
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i64 1
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  br label %289

175:                                              ; preds = %159
  br label %176

176:                                              ; preds = %175, %158
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i64 1
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, -65473
  %182 = load i32, i32* %4, align 4
  %183 = and i32 %182, 65472
  %184 = or i32 %181, %183
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i64 1
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  store i32 %184, i32* %187, align 4
  br label %289

188:                                              ; preds = %39
  %189 = load i32, i32* %4, align 4
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @m68k, i32 0, i32 1), align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i64 0
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 114
  %195 = sext i32 %194 to i64
  %196 = inttoptr i64 %195 to i32*
  store i32 %189, i32* %196, align 4
  br label %289

197:                                              ; preds = %39
  %198 = call i32 @m68k_poll_sync(i32 14)
  %199 = load i32, i32* %4, align 4
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i64 7
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 1
  store i32 %199, i32* %203, align 4
  br label %289

204:                                              ; preds = %39
  %205 = load i32, i32* %3, align 4
  %206 = and i32 %205, 48
  %207 = icmp eq i32 %206, 16
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i32, i32* %3, align 4
  %210 = and i32 %209, 30
  %211 = call i32 @m68k_poll_sync(i32 %210)
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @scd, i32 0, i32 2), align 8
  %214 = load i32, i32* %3, align 4
  %215 = lshr i32 %214, 1
  %216 = and i32 %215, 255
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  store i32 %212, i32* %219, align 4
  br label %289

220:                                              ; preds = %204
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* %4, align 4
  %223 = call i32 @m68k_unused_16_w(i32 %221, i32 %222)
  br label %289

224:                                              ; preds = %35
  %225 = load i32, i32* %3, align 4
  %226 = load i32, i32* %4, align 4
  %227 = call i32 @m68k_unused_16_w(i32 %225, i32 %226)
  br label %289

228:                                              ; preds = %2
  %229 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cart, i32 0, i32 0, i32 0), align 8
  %230 = load i32, i32* %3, align 4
  %231 = load i32, i32* %4, align 4
  %232 = call i32 %229(i32 %230, i32 %231)
  br label %289

233:                                              ; preds = %2
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @config, i32 0, i32 0), align 4
  %235 = and i32 %234, 1
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load i32, i32* %3, align 4
  %239 = and i32 %238, 3
  %240 = load i32, i32* %4, align 4
  %241 = call i32 @gen_tmss_w(i32 %239, i32 %240)
  br label %289

242:                                              ; preds = %233
  %243 = load i32, i32* %3, align 4
  %244 = load i32, i32* %4, align 4
  %245 = call i32 @m68k_unused_16_w(i32 %243, i32 %244)
  br label %289

246:                                              ; preds = %2
  %247 = load i32, i32* %3, align 4
  %248 = and i32 %247, 253
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %277, label %250

250:                                              ; preds = %246
  %251 = load i32, i32* %4, align 4
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** @svp, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %254, align 8
  %256 = load i64, i64* @SSP_XST, align 8
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  store i32 %251, i32* %259, align 4
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** @svp, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 1
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %262, align 8
  %264 = load i64, i64* @SSP_PM0, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = or i32 %268, 2
  store i32 %269, i32* %267, align 4
  %270 = load i32, i32* @SSP_WAIT_PM0, align 4
  %271 = xor i32 %270, -1
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** @svp, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %271
  store i32 %276, i32* %274, align 8
  br label %289

277:                                              ; preds = %246
  %278 = load i32, i32* %3, align 4
  %279 = load i32, i32* %4, align 4
  %280 = call i32 @m68k_unused_16_w(i32 %278, i32 %279)
  br label %289

281:                                              ; preds = %2, %2, %2, %2
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* %4, align 4
  %284 = call i32 @m68k_unused_16_w(i32 %282, i32 %283)
  br label %289

285:                                              ; preds = %2
  %286 = load i32, i32* %3, align 4
  %287 = load i32, i32* %4, align 4
  %288 = call i32 @m68k_lockup_w_16(i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %285, %281, %277, %250, %242, %237, %228, %224, %220, %208, %197, %188, %176, %163, %144, %98, %29, %23, %19, %12
  ret void
}

declare dso_local i32 @io_68k_write(i32, i32) #1

declare dso_local i32 @m68k_unused_16_w(i32, i32) #1

declare dso_local i32 @gen_zbusreq_w(i32, i8*) #1

declare dso_local i32 @gen_zreset_w(i32, i8*) #1

declare dso_local i32 @s68k_pulse_reset(...) #1

declare dso_local i32 @s68k_pulse_halt(...) #1

declare dso_local i32 @s68k_clear_halt(...) #1

declare dso_local i32 @s68k_update_irq(i32) #1

declare dso_local i32 @m68k_poll_sync(i32) #1

declare dso_local i32 @gen_tmss_w(i32, i32) #1

declare dso_local i32 @m68k_lockup_w_16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
