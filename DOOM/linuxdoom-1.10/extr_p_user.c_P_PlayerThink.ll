; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_user.c_P_PlayerThink.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_user.c_P_PlayerThink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i32*, i64, i32, i32, i64, i64, %struct.TYPE_15__*, i64*, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i64, i64 }

@CF_NOCLIP = common dso_local global i32 0, align 4
@MF_NOCLIP = common dso_local global i32 0, align 4
@MF_JUSTATTACKED = common dso_local global i32 0, align 4
@PST_DEAD = common dso_local global i64 0, align 8
@BT_SPECIAL = common dso_local global i32 0, align 4
@BT_CHANGE = common dso_local global i32 0, align 4
@BT_WEAPONMASK = common dso_local global i64 0, align 8
@BT_WEAPONSHIFT = common dso_local global i64 0, align 8
@wp_fist = common dso_local global i64 0, align 8
@wp_chainsaw = common dso_local global i64 0, align 8
@pw_strength = common dso_local global i64 0, align 8
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@wp_shotgun = common dso_local global i64 0, align 8
@wp_supershotgun = common dso_local global i64 0, align 8
@wp_plasma = common dso_local global i64 0, align 8
@wp_bfg = common dso_local global i64 0, align 8
@shareware = common dso_local global i64 0, align 8
@BT_USE = common dso_local global i32 0, align 4
@pw_invulnerability = common dso_local global i64 0, align 8
@pw_invisibility = common dso_local global i64 0, align 8
@MF_SHADOW = common dso_local global i32 0, align 4
@pw_infrared = common dso_local global i64 0, align 8
@pw_ironfeet = common dso_local global i64 0, align 8
@INVERSECOLORMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_PlayerThink(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CF_NOCLIP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* @MF_NOCLIP, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 9
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 8
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* @MF_NOCLIP, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %21
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %19, %11
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 11
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %3, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MF_JUSTATTACKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %28
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i32 100, i32* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @MF_JUSTATTACKED, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 9
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %47
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %39, %28
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PST_DEAD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %62 = call i32 @P_DeathThink(%struct.TYPE_17__* %61)
  br label %408

63:                                               ; preds = %54
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 9
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  br label %80

77:                                               ; preds = %63
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = call i32 @P_MovePlayer(%struct.TYPE_17__* %78)
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = call i32 @P_CalcHeight(%struct.TYPE_17__* %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 9
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %95 = call i32 @P_PlayerInSpecialSector(%struct.TYPE_17__* %94)
  br label %96

96:                                               ; preds = %93, %80
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BT_SPECIAL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BT_CHANGE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %205

113:                                              ; preds = %106
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* @BT_WEAPONMASK, align 8
  %119 = and i64 %117, %118
  %120 = load i64, i64* @BT_WEAPONSHIFT, align 8
  %121 = lshr i64 %119, %120
  store i64 %121, i64* %4, align 8
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @wp_fist, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %113
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 10
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @wp_chainsaw, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %125
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @wp_chainsaw, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @pw_strength, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %139, %133
  %148 = load i64, i64* @wp_chainsaw, align 8
  store i64 %148, i64* %4, align 8
  br label %149

149:                                              ; preds = %147, %139, %125, %113
  %150 = load i64, i64* @gamemode, align 8
  %151 = load i64, i64* @commercial, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @wp_shotgun, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %153
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 10
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* @wp_supershotgun, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @wp_supershotgun, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = load i64, i64* @wp_supershotgun, align 8
  store i64 %172, i64* %4, align 8
  br label %173

173:                                              ; preds = %171, %165, %157, %153, %149
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 10
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %4, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %204

181:                                              ; preds = %173
  %182 = load i64, i64* %4, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %181
  %188 = load i64, i64* %4, align 8
  %189 = load i64, i64* @wp_plasma, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i64, i64* %4, align 8
  %193 = load i64, i64* @wp_bfg, align 8
  %194 = icmp ne i64 %192, %193
  br i1 %194, label %199, label %195

195:                                              ; preds = %191, %187
  %196 = load i64, i64* @gamemode, align 8
  %197 = load i64, i64* @shareware, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195, %191
  %200 = load i64, i64* %4, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 4
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %199, %195
  br label %204

204:                                              ; preds = %203, %181, %173
  br label %205

205:                                              ; preds = %204, %106
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @BT_USE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %205
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %212
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %219 = call i32 @P_UseLines(%struct.TYPE_17__* %218)
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 5
  store i32 1, i32* %221, align 8
  br label %222

222:                                              ; preds = %217, %212
  br label %226

223:                                              ; preds = %205
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 5
  store i32 0, i32* %225, align 8
  br label %226

226:                                              ; preds = %223, %222
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %228 = call i32 @P_MovePsprites(%struct.TYPE_17__* %227)
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @pw_strength, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %226
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 3
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @pw_strength, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %236, %226
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 3
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* @pw_invulnerability, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %244
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 3
  %255 = load i32*, i32** %254, align 8
  %256 = load i64, i64* @pw_invulnerability, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %252, %244
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* @pw_invisibility, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %260
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 3
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @pw_invisibility, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %273, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %268
  %278 = load i32, i32* @MF_SHADOW, align 4
  %279 = xor i32 %278, -1
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 9
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = and i32 %284, %279
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %277, %268
  br label %287

287:                                              ; preds = %286, %260
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* @pw_infrared, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %303

295:                                              ; preds = %287
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = load i64, i64* @pw_infrared, align 8
  %300 = getelementptr inbounds i32, i32* %298, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %295, %287
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load i64, i64* @pw_ironfeet, align 8
  %308 = getelementptr inbounds i32, i32* %306, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %319

311:                                              ; preds = %303
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* @pw_ironfeet, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %311, %303
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 8
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %319
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 8
  %327 = load i64, i64* %326, align 8
  %328 = add nsw i64 %327, -1
  store i64 %328, i64* %326, align 8
  br label %329

329:                                              ; preds = %324, %319
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 7
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %339

334:                                              ; preds = %329
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 7
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, -1
  store i64 %338, i64* %336, align 8
  br label %339

339:                                              ; preds = %334, %329
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = load i32*, i32** %341, align 8
  %343 = load i64, i64* @pw_invulnerability, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %372

347:                                              ; preds = %339
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 3
  %350 = load i32*, i32** %349, align 8
  %351 = load i64, i64* @pw_invulnerability, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = icmp sgt i32 %353, 128
  br i1 %354, label %364, label %355

355:                                              ; preds = %347
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 3
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* @pw_invulnerability, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %355, %347
  %365 = load i32, i32* @INVERSECOLORMAP, align 4
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 6
  store i32 %365, i32* %367, align 4
  br label %371

368:                                              ; preds = %355
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 6
  store i32 0, i32* %370, align 4
  br label %371

371:                                              ; preds = %368, %364
  br label %408

372:                                              ; preds = %339
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 3
  %375 = load i32*, i32** %374, align 8
  %376 = load i64, i64* @pw_infrared, align 8
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %404

380:                                              ; preds = %372
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 3
  %383 = load i32*, i32** %382, align 8
  %384 = load i64, i64* @pw_infrared, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = icmp sgt i32 %386, 128
  br i1 %387, label %397, label %388

388:                                              ; preds = %380
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 3
  %391 = load i32*, i32** %390, align 8
  %392 = load i64, i64* @pw_infrared, align 8
  %393 = getelementptr inbounds i32, i32* %391, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, 8
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %388, %380
  %398 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 6
  store i32 1, i32* %399, align 4
  br label %403

400:                                              ; preds = %388
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 6
  store i32 0, i32* %402, align 4
  br label %403

403:                                              ; preds = %400, %397
  br label %407

404:                                              ; preds = %372
  %405 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %405, i32 0, i32 6
  store i32 0, i32* %406, align 4
  br label %407

407:                                              ; preds = %404, %403
  br label %408

408:                                              ; preds = %60, %407, %371
  ret void
}

declare dso_local i32 @P_DeathThink(%struct.TYPE_17__*) #1

declare dso_local i32 @P_MovePlayer(%struct.TYPE_17__*) #1

declare dso_local i32 @P_CalcHeight(%struct.TYPE_17__*) #1

declare dso_local i32 @P_PlayerInSpecialSector(%struct.TYPE_17__*) #1

declare dso_local i32 @P_UseLines(%struct.TYPE_17__*) #1

declare dso_local i32 @P_MovePsprites(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
