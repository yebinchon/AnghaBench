; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_loadrom.c_load_rom.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_loadrom.c_load_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { i32*, i32, i32 }

@cart = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@cdd = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SYSTEM_MCD = common dso_local global i32 0, align 4
@system_hw = common dso_local global i32 0, align 4
@SYSTEM_SMS = common dso_local global i32 0, align 4
@SYSTEM_GG = common dso_local global i32 0, align 4
@system_bios = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SMS\00", align 1
@SYSTEM_SMS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"GG\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SG\00", align 1
@SYSTEM_SG = common dso_local global i32 0, align 4
@SYSTEM_MD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"MDX\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ESAGM GE ARDVI E\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ESAGG NESESI\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"SEGA\00", align 1
@scd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@romtype = common dso_local global i32 0, align 4
@rominfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"SEGA PICO\00", align 1
@SYSTEM_PICO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@region_code = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"FLUX\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"WONDER LIBRARY\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"T-5740\00", align 1
@config = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c".iso\00", align 1
@cdc = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@SYSTEM_PBC = common dso_local global i32 0, align 4
@SYSTEM_GGMS = common dso_local global i32 0, align 4
@old_system = common dso_local global i32* null, align 8
@input = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SYSTEM_MENACER = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [8 x i8] c"MENACER\00", align 1
@SYSTEM_MD_GAMEPAD = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"T2 ; THE ARCADE GAME\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"BODY COUNT\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"CORPSE KILLER\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"CRIME PATROL\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"MAD DOG II THE LOST GOLD\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"MAD DOG MCCREE\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"WHO SHOT JOHNNY ROCK?\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"LETHAL ENFORCERS\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"SNATCHER\00", align 1
@SYSTEM_JUSTIFIER = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [13 x i8] c"GUN FIGHTERS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_rom(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i32 (...) @ggenie_shutdown()
  %9 = call i32 (...) @areplay_shutdown()
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 0), align 8
  %11 = icmp sgt i32 %10, 8388608
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cdd, i32 0, i32 0), align 8
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %16 = bitcast i32* %15 to i8*
  %17 = call i32 @cdd_load(i8* %14, i8* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %673

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @SYSTEM_MCD, align 4
  store i32 %25, i32* @system_hw, align 4
  br label %203

26:                                               ; preds = %21
  %27 = load i8*, i8** %3, align 8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %30 = call i32 @load_archive(i8* %27, i32* %28, i32 8, i8* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @SYSTEM_SMS, align 4
  %35 = or i32 16, %34
  %36 = load i32, i32* @SYSTEM_GG, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* @system_bios, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* @system_bios, align 4
  store i32 0, i32* %2, align 4
  br label %673

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 8388608
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @system_bios, align 4
  %46 = and i32 %45, -17
  store i32 %46, i32* @system_bios, align 4
  br label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %48, 4194304
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* @SYSTEM_SMS, align 4
  %52 = load i32, i32* @SYSTEM_GG, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* @system_bios, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* @system_bios, align 4
  br label %57

57:                                               ; preds = %50, %47
  br label %58

58:                                               ; preds = %57, %44
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %60, align 1
  %62 = and i32 %61, -538976289
  store i32 %62, i32* %60, align 1
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %64 = call i64 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %63, i32 3)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @SYSTEM_SMS2, align 4
  store i32 %67, i32* @system_hw, align 4
  br label %158

68:                                               ; preds = %58
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %70 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 2)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @SYSTEM_GG, align 4
  store i32 %73, i32* @system_hw, align 4
  br label %157

74:                                               ; preds = %68
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %76 = call i64 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 2)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @SYSTEM_SG, align 4
  store i32 %79, i32* @system_hw, align 4
  br label %156

80:                                               ; preds = %74
  %81 = load i32, i32* @SYSTEM_MD, align 4
  store i32 %81, i32* @system_hw, align 4
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %83 = call i64 @memcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %82, i32 3)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %109, label %85

85:                                               ; preds = %80
  store i32 4, i32* %4, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, 64
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %86

106:                                              ; preds = %86
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %107, 5
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %80
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 256
  %112 = bitcast i32* %111 to i8*
  %113 = call i64 @memcmp(i8* %112, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 16)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 256
  %118 = bitcast i32* %117 to i8*
  %119 = call i64 @memcmp(i8* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 12)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %155, label %121

121:                                              ; preds = %115, %109
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %151, %121
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %154

126:                                              ; preds = %122
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  store i8* %133, i8** %7, align 8
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i8*, i8** %7, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %126
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %4, align 4
  br label %122

154:                                              ; preds = %122
  br label %155

155:                                              ; preds = %154, %115
  br label %156

156:                                              ; preds = %155, %78
  br label %157

157:                                              ; preds = %156, %72
  br label %158

158:                                              ; preds = %157, %66
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 256
  %161 = bitcast i32* %160 to i8*
  %162 = call i64 @memcmp(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %202

164:                                              ; preds = %158
  %165 = load i32, i32* %5, align 4
  %166 = sdiv i32 %165, 512
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %202

169:                                              ; preds = %164
  %170 = load i32, i32* %5, align 4
  %171 = srem i32 %170, 512
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %202, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = sub nsw i32 %174, 512
  store i32 %175, i32* %5, align 4
  %176 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %177 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 512
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @memcpy(i32* %176, i32* %178, i32 %179)
  %181 = load i32, i32* @system_hw, align 4
  %182 = load i32, i32* @SYSTEM_MD, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %185

185:                                              ; preds = %197, %184
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* %5, align 4
  %188 = sdiv i32 %187, 16384
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %200

190:                                              ; preds = %185
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %192 = load i32, i32* %4, align 4
  %193 = mul nsw i32 %192, 16384
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = call i32 @deinterleave_block(i32* %195)
  br label %197

197:                                              ; preds = %190
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %185

200:                                              ; preds = %185
  br label %201

201:                                              ; preds = %200, %173
  br label %202

202:                                              ; preds = %201, %169, %164, %158
  br label %203

203:                                              ; preds = %202, %24
  %204 = load i32, i32* %5, align 4
  store i32 %204, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 0), align 8
  %205 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %206 = bitcast i32* %205 to i8*
  %207 = call i32 @getrominfo(i8* %206)
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %209 = bitcast i32* %208 to i8*
  %210 = call i32 @get_region(i8* %209)
  %211 = load i32, i32* @system_hw, align 4
  %212 = load i32, i32* @SYSTEM_MCD, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %203
  %215 = call i64 (...) @load_bios()
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %214
  %218 = call i32 (...) @cdd_unload()
  store i32 0, i32* %2, align 4
  br label %673

219:                                              ; preds = %214
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1, i32 0), align 8
  br label %220

220:                                              ; preds = %219, %203
  %221 = load i32, i32* @system_hw, align 4
  store i32 %221, i32* @romtype, align 4
  %222 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 4), align 4
  %223 = call i32* @strstr(i32 %222, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @SYSTEM_PICO, align 4
  store i32 %226, i32* @system_hw, align 4
  br label %280

227:                                              ; preds = %220
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 3), align 4
  %229 = call i32* @strstr(i32 %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %243

231:                                              ; preds = %227
  %232 = load i32, i32* @SYSTEM_MCD, align 4
  store i32 %232, i32* @system_hw, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1, i32 0), align 8
  %233 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 0), align 8
  %234 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cart, i32 0, i32 1), align 8
  %235 = call i32 @memcpy(i32* %233, i32* %234, i32 8)
  %236 = load i32, i32* @system_bios, align 4
  %237 = or i32 %236, 16
  store i32 %237, i32* @system_bios, align 4
  %238 = load i32, i32* @system_bios, align 4
  %239 = and i32 %238, 240
  %240 = load i32, i32* @region_code, align 4
  %241 = ashr i32 %240, 4
  %242 = or i32 %239, %241
  store i32 %242, i32* @system_bios, align 4
  br label %279

243:                                              ; preds = %227
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 2), align 4
  %245 = call i32* @strstr(i32 %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %246 = icmp ne i32* %245, null
  br i1 %246, label %255, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 2), align 4
  %249 = call i32* @strstr(i32 %248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %250 = icmp ne i32* %249, null
  br i1 %250, label %255, label %251

251:                                              ; preds = %247
  %252 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 1), align 4
  %253 = call i32* @strstr(i32 %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %278

255:                                              ; preds = %251, %247, %243
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %255
  %259 = load i32, i32* @SYSTEM_MCD, align 4
  store i32 %259, i32* @system_hw, align 4
  %260 = call i64 (...) @load_bios()
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %258
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scd, i32 0, i32 1, i32 0), align 8
  %263 = load i8*, i8** %3, align 8
  %264 = load i8*, i8** %3, align 8
  %265 = call i32 @strlen(i8* %264)
  %266 = sub nsw i32 %265, 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %263, i64 %267
  %269 = call i32 @strncpy(i8* %268, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %270 = load i8*, i8** %3, align 8
  %271 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cdc, i32 0, i32 0), align 8
  %272 = inttoptr i64 %271 to i8*
  %273 = call i32 @cdd_load(i8* %270, i8* %272)
  br label %276

274:                                              ; preds = %258
  %275 = load i32, i32* @SYSTEM_MD, align 4
  store i32 %275, i32* @system_hw, align 4
  br label %276

276:                                              ; preds = %274, %262
  br label %277

277:                                              ; preds = %276, %255
  br label %278

278:                                              ; preds = %277, %251
  br label %279

279:                                              ; preds = %278, %231
  br label %280

280:                                              ; preds = %279, %225
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %282 = load i32, i32* @SYSTEM_MD, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %292

284:                                              ; preds = %280
  %285 = load i32, i32* @system_hw, align 4
  %286 = load i32, i32* @SYSTEM_MD, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* @SYSTEM_PBC, align 4
  store i32 %290, i32* @system_hw, align 4
  br label %291

291:                                              ; preds = %289, %284
  br label %310

292:                                              ; preds = %280
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %294 = load i32, i32* @SYSTEM_GG, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = load i32, i32* @system_hw, align 4
  %298 = load i32, i32* @SYSTEM_GG, align 4
  %299 = icmp ne i32 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %296
  %301 = load i32, i32* @SYSTEM_GGMS, align 4
  store i32 %301, i32* @system_hw, align 4
  br label %302

302:                                              ; preds = %300, %296
  br label %309

303:                                              ; preds = %292
  %304 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @config, i32 0, i32 0), align 4
  store i32 %307, i32* @system_hw, align 4
  br label %308

308:                                              ; preds = %306, %303
  br label %309

309:                                              ; preds = %308, %302
  br label %310

310:                                              ; preds = %309, %291
  %311 = load i32*, i32** @old_system, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, -1
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load i32*, i32** @old_system, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 0
  store i32 %318, i32* %320, align 4
  br label %321

321:                                              ; preds = %315, %310
  %322 = load i32*, i32** @old_system, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, -1
  br i1 %325, label %326, label %332

326:                                              ; preds = %321
  %327 = load i32*, i32** @old_system, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  store i32 %329, i32* %331, align 4
  br label %332

332:                                              ; preds = %326, %321
  %333 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 1
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = inttoptr i64 %336 to i8*
  %338 = load i8*, i8** @SYSTEM_MENACER, align 8
  %339 = icmp eq i8* %337, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 64, i32 0
  store i32 %341, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  %342 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %343 = call i32* @strstr(i32 %342, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %376

345:                                              ; preds = %332
  %346 = load i32*, i32** @old_system, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %356

350:                                              ; preds = %345
  %351 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %352 = getelementptr inbounds i32, i32* %351, i64 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32*, i32** @old_system, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  store i32 %353, i32* %355, align 4
  br label %356

356:                                              ; preds = %350, %345
  %357 = load i32*, i32** @old_system, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp eq i32 %359, -1
  br i1 %360, label %361, label %367

361:                                              ; preds = %356
  %362 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 1
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** @old_system, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 1
  store i32 %364, i32* %366, align 4
  br label %367

367:                                              ; preds = %361, %356
  %368 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %369 = ptrtoint i8* %368 to i32
  %370 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  store i32 %369, i32* %371, align 4
  %372 = load i8*, i8** @SYSTEM_MENACER, align 8
  %373 = ptrtoint i8* %372 to i32
  %374 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 1
  store i32 %373, i32* %375, align 4
  store i32 82, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %672

376:                                              ; preds = %332
  %377 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %378 = call i32* @strstr(i32 %377, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %379 = icmp ne i32* %378, null
  br i1 %379, label %380, label %411

380:                                              ; preds = %376
  %381 = load i32*, i32** @old_system, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, -1
  br i1 %384, label %385, label %391

385:                                              ; preds = %380
  %386 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32*, i32** @old_system, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  store i32 %388, i32* %390, align 4
  br label %391

391:                                              ; preds = %385, %380
  %392 = load i32*, i32** @old_system, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 1
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, -1
  br i1 %395, label %396, label %402

396:                                              ; preds = %391
  %397 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32*, i32** @old_system, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 1
  store i32 %399, i32* %401, align 4
  br label %402

402:                                              ; preds = %396, %391
  %403 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %404 = ptrtoint i8* %403 to i32
  %405 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  store i32 %404, i32* %406, align 4
  %407 = load i8*, i8** @SYSTEM_MENACER, align 8
  %408 = ptrtoint i8* %407 to i32
  %409 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 1
  store i32 %408, i32* %410, align 4
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 -8, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %671

411:                                              ; preds = %376
  %412 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %413 = call i32* @strstr(i32 %412, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %414 = icmp ne i32* %413, null
  br i1 %414, label %415, label %446

415:                                              ; preds = %411
  %416 = load i32*, i32** @old_system, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 0
  %418 = load i32, i32* %417, align 4
  %419 = icmp eq i32 %418, -1
  br i1 %419, label %420, label %426

420:                                              ; preds = %415
  %421 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32*, i32** @old_system, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 0
  store i32 %423, i32* %425, align 4
  br label %426

426:                                              ; preds = %420, %415
  %427 = load i32*, i32** @old_system, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  %429 = load i32, i32* %428, align 4
  %430 = icmp eq i32 %429, -1
  br i1 %430, label %431, label %437

431:                                              ; preds = %426
  %432 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 1
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** @old_system, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 1
  store i32 %434, i32* %436, align 4
  br label %437

437:                                              ; preds = %431, %426
  %438 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %439 = ptrtoint i8* %438 to i32
  %440 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 0
  store i32 %439, i32* %441, align 4
  %442 = load i8*, i8** @SYSTEM_MENACER, align 8
  %443 = ptrtoint i8* %442 to i32
  %444 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 1
  store i32 %443, i32* %445, align 4
  store i32 68, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 -24, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %670

446:                                              ; preds = %411
  %447 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %448 = call i32* @strstr(i32 %447, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %449 = icmp ne i32* %448, null
  br i1 %449, label %450, label %481

450:                                              ; preds = %446
  %451 = load i32*, i32** @old_system, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 0
  %453 = load i32, i32* %452, align 4
  %454 = icmp eq i32 %453, -1
  br i1 %454, label %455, label %461

455:                                              ; preds = %450
  %456 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 0
  %458 = load i32, i32* %457, align 4
  %459 = load i32*, i32** @old_system, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 0
  store i32 %458, i32* %460, align 4
  br label %461

461:                                              ; preds = %455, %450
  %462 = load i32*, i32** @old_system, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 1
  %464 = load i32, i32* %463, align 4
  %465 = icmp eq i32 %464, -1
  br i1 %465, label %466, label %472

466:                                              ; preds = %461
  %467 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 1
  %469 = load i32, i32* %468, align 4
  %470 = load i32*, i32** @old_system, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 1
  store i32 %469, i32* %471, align 4
  br label %472

472:                                              ; preds = %466, %461
  %473 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %474 = ptrtoint i8* %473 to i32
  %475 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 0
  store i32 %474, i32* %476, align 4
  %477 = load i8*, i8** @SYSTEM_MENACER, align 8
  %478 = ptrtoint i8* %477 to i32
  %479 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 1
  store i32 %478, i32* %480, align 4
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 -8, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %669

481:                                              ; preds = %446
  %482 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %483 = call i32* @strstr(i32 %482, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %484 = icmp ne i32* %483, null
  br i1 %484, label %485, label %516

485:                                              ; preds = %481
  %486 = load i32*, i32** @old_system, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 0
  %488 = load i32, i32* %487, align 4
  %489 = icmp eq i32 %488, -1
  br i1 %489, label %490, label %496

490:                                              ; preds = %485
  %491 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 0
  %493 = load i32, i32* %492, align 4
  %494 = load i32*, i32** @old_system, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 0
  store i32 %493, i32* %495, align 4
  br label %496

496:                                              ; preds = %490, %485
  %497 = load i32*, i32** @old_system, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 1
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %499, -1
  br i1 %500, label %501, label %507

501:                                              ; preds = %496
  %502 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 1
  %504 = load i32, i32* %503, align 4
  %505 = load i32*, i32** @old_system, align 8
  %506 = getelementptr inbounds i32, i32* %505, i64 1
  store i32 %504, i32* %506, align 4
  br label %507

507:                                              ; preds = %501, %496
  %508 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %509 = ptrtoint i8* %508 to i32
  %510 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %511 = getelementptr inbounds i32, i32* %510, i64 0
  store i32 %509, i32* %511, align 4
  %512 = load i8*, i8** @SYSTEM_MENACER, align 8
  %513 = ptrtoint i8* %512 to i32
  %514 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 1
  store i32 %513, i32* %515, align 4
  store i32 61, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %668

516:                                              ; preds = %481
  %517 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %518 = call i32* @strstr(i32 %517, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %519 = icmp ne i32* %518, null
  br i1 %519, label %520, label %551

520:                                              ; preds = %516
  %521 = load i32*, i32** @old_system, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 0
  %523 = load i32, i32* %522, align 4
  %524 = icmp eq i32 %523, -1
  br i1 %524, label %525, label %531

525:                                              ; preds = %520
  %526 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %527 = getelementptr inbounds i32, i32* %526, i64 0
  %528 = load i32, i32* %527, align 4
  %529 = load i32*, i32** @old_system, align 8
  %530 = getelementptr inbounds i32, i32* %529, i64 0
  store i32 %528, i32* %530, align 4
  br label %531

531:                                              ; preds = %525, %520
  %532 = load i32*, i32** @old_system, align 8
  %533 = getelementptr inbounds i32, i32* %532, i64 1
  %534 = load i32, i32* %533, align 4
  %535 = icmp eq i32 %534, -1
  br i1 %535, label %536, label %542

536:                                              ; preds = %531
  %537 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %538 = getelementptr inbounds i32, i32* %537, i64 1
  %539 = load i32, i32* %538, align 4
  %540 = load i32*, i32** @old_system, align 8
  %541 = getelementptr inbounds i32, i32* %540, i64 1
  store i32 %539, i32* %541, align 4
  br label %542

542:                                              ; preds = %536, %531
  %543 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %544 = ptrtoint i8* %543 to i32
  %545 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %546 = getelementptr inbounds i32, i32* %545, i64 0
  store i32 %544, i32* %546, align 4
  %547 = load i8*, i8** @SYSTEM_MENACER, align 8
  %548 = ptrtoint i8* %547 to i32
  %549 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 1
  store i32 %548, i32* %550, align 4
  store i32 70, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 18, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %667

551:                                              ; preds = %516
  %552 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %553 = call i32* @strstr(i32 %552, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %554 = icmp ne i32* %553, null
  br i1 %554, label %555, label %586

555:                                              ; preds = %551
  %556 = load i32*, i32** @old_system, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 0
  %558 = load i32, i32* %557, align 4
  %559 = icmp eq i32 %558, -1
  br i1 %559, label %560, label %566

560:                                              ; preds = %555
  %561 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %562 = getelementptr inbounds i32, i32* %561, i64 0
  %563 = load i32, i32* %562, align 4
  %564 = load i32*, i32** @old_system, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  store i32 %563, i32* %565, align 4
  br label %566

566:                                              ; preds = %560, %555
  %567 = load i32*, i32** @old_system, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 1
  %569 = load i32, i32* %568, align 4
  %570 = icmp eq i32 %569, -1
  br i1 %570, label %571, label %577

571:                                              ; preds = %566
  %572 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %573 = getelementptr inbounds i32, i32* %572, i64 1
  %574 = load i32, i32* %573, align 4
  %575 = load i32*, i32** @old_system, align 8
  %576 = getelementptr inbounds i32, i32* %575, i64 1
  store i32 %574, i32* %576, align 4
  br label %577

577:                                              ; preds = %571, %566
  %578 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %579 = ptrtoint i8* %578 to i32
  %580 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %581 = getelementptr inbounds i32, i32* %580, i64 0
  store i32 %579, i32* %581, align 4
  %582 = load i8*, i8** @SYSTEM_MENACER, align 8
  %583 = ptrtoint i8* %582 to i32
  %584 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 1
  store i32 %583, i32* %585, align 4
  store i32 49, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %666

586:                                              ; preds = %551
  %587 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %588 = call i32* @strstr(i32 %587, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %589 = icmp ne i32* %588, null
  br i1 %589, label %590, label %621

590:                                              ; preds = %586
  %591 = load i32*, i32** @old_system, align 8
  %592 = getelementptr inbounds i32, i32* %591, i64 0
  %593 = load i32, i32* %592, align 4
  %594 = icmp eq i32 %593, -1
  br i1 %594, label %595, label %601

595:                                              ; preds = %590
  %596 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 0
  %598 = load i32, i32* %597, align 4
  %599 = load i32*, i32** @old_system, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  store i32 %598, i32* %600, align 4
  br label %601

601:                                              ; preds = %595, %590
  %602 = load i32*, i32** @old_system, align 8
  %603 = getelementptr inbounds i32, i32* %602, i64 1
  %604 = load i32, i32* %603, align 4
  %605 = icmp eq i32 %604, -1
  br i1 %605, label %606, label %612

606:                                              ; preds = %601
  %607 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %608 = getelementptr inbounds i32, i32* %607, i64 1
  %609 = load i32, i32* %608, align 4
  %610 = load i32*, i32** @old_system, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 1
  store i32 %609, i32* %611, align 4
  br label %612

612:                                              ; preds = %606, %601
  %613 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %614 = ptrtoint i8* %613 to i32
  %615 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 0
  store i32 %614, i32* %616, align 4
  %617 = load i8*, i8** @SYSTEM_MENACER, align 8
  %618 = ptrtoint i8* %617 to i32
  %619 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %620 = getelementptr inbounds i32, i32* %619, i64 1
  store i32 %618, i32* %620, align 4
  store i32 60, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 30, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %665

621:                                              ; preds = %586
  %622 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %623 = call i32* @strstr(i32 %622, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %624 = icmp ne i32* %623, null
  br i1 %624, label %629, label %625

625:                                              ; preds = %621
  %626 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %627 = call i32* @strstr(i32 %626, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %628 = icmp ne i32* %627, null
  br i1 %628, label %629, label %664

629:                                              ; preds = %625, %621
  %630 = load i32*, i32** @old_system, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 0
  %632 = load i32, i32* %631, align 4
  %633 = icmp eq i32 %632, -1
  br i1 %633, label %634, label %640

634:                                              ; preds = %629
  %635 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %636 = getelementptr inbounds i32, i32* %635, i64 0
  %637 = load i32, i32* %636, align 4
  %638 = load i32*, i32** @old_system, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 0
  store i32 %637, i32* %639, align 4
  br label %640

640:                                              ; preds = %634, %629
  %641 = load i32*, i32** @old_system, align 8
  %642 = getelementptr inbounds i32, i32* %641, i64 1
  %643 = load i32, i32* %642, align 4
  %644 = icmp eq i32 %643, -1
  br i1 %644, label %645, label %651

645:                                              ; preds = %640
  %646 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %647 = getelementptr inbounds i32, i32* %646, i64 1
  %648 = load i32, i32* %647, align 4
  %649 = load i32*, i32** @old_system, align 8
  %650 = getelementptr inbounds i32, i32* %649, i64 1
  store i32 %648, i32* %650, align 4
  br label %651

651:                                              ; preds = %645, %640
  %652 = load i8*, i8** @SYSTEM_MD_GAMEPAD, align 8
  %653 = ptrtoint i8* %652 to i32
  %654 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 0
  store i32 %653, i32* %655, align 4
  %656 = load i32, i32* @SYSTEM_JUSTIFIER, align 4
  %657 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 0), align 8
  %658 = getelementptr inbounds i32, i32* %657, i64 1
  store i32 %656, i32* %658, align 4
  %659 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @rominfo, i32 0, i32 0), align 4
  %660 = call i32* @strstr(i32 %659, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0))
  %661 = icmp ne i32* %660, null
  %662 = zext i1 %661 to i64
  %663 = select i1 %661, i32 24, i32 0
  store i32 %663, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 1), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @input, i32 0, i32 2), align 4
  br label %664

664:                                              ; preds = %651, %625
  br label %665

665:                                              ; preds = %664, %612
  br label %666

666:                                              ; preds = %665, %577
  br label %667

667:                                              ; preds = %666, %542
  br label %668

668:                                              ; preds = %667, %507
  br label %669

669:                                              ; preds = %668, %472
  br label %670

670:                                              ; preds = %669, %437
  br label %671

671:                                              ; preds = %670, %402
  br label %672

672:                                              ; preds = %671, %367
  store i32 1, i32* %2, align 4
  br label %673

673:                                              ; preds = %672, %217, %33, %20
  %674 = load i32, i32* %2, align 4
  ret i32 %674
}

declare dso_local i32 @ggenie_shutdown(...) #1

declare dso_local i32 @areplay_shutdown(...) #1

declare dso_local i32 @cdd_load(i8*, i8*) #1

declare dso_local i32 @load_archive(i8*, i32*, i32, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @deinterleave_block(i32*) #1

declare dso_local i32 @getrominfo(i8*) #1

declare dso_local i32 @get_region(i8*) #1

declare dso_local i64 @load_bios(...) #1

declare dso_local i32 @cdd_unload(...) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
