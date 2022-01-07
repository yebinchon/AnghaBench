; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_TouchSpecialThing.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_inter.c_P_TouchSpecialThing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i32, i32, %struct.TYPE_15__* }

@FRACUNIT = common dso_local global i32 0, align 4
@sfx_itemup = common dso_local global i32 0, align 4
@GOTARMOR = common dso_local global i32 0, align 4
@GOTMEGA = common dso_local global i32 0, align 4
@GOTHTHBONUS = common dso_local global i32 0, align 4
@GOTARMBONUS = common dso_local global i32 0, align 4
@GOTSUPER = common dso_local global i32 0, align 4
@sfx_getpow = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@commercial = common dso_local global i32 0, align 4
@GOTMSPHERE = common dso_local global i32 0, align 4
@it_bluecard = common dso_local global i64 0, align 8
@GOTBLUECARD = common dso_local global i32 0, align 4
@netgame = common dso_local global i32 0, align 4
@it_yellowcard = common dso_local global i64 0, align 8
@GOTYELWCARD = common dso_local global i32 0, align 4
@it_redcard = common dso_local global i64 0, align 8
@GOTREDCARD = common dso_local global i32 0, align 4
@it_blueskull = common dso_local global i64 0, align 8
@GOTBLUESKUL = common dso_local global i32 0, align 4
@it_yellowskull = common dso_local global i64 0, align 8
@GOTYELWSKUL = common dso_local global i32 0, align 4
@it_redskull = common dso_local global i64 0, align 8
@GOTREDSKULL = common dso_local global i32 0, align 4
@GOTSTIM = common dso_local global i32 0, align 4
@GOTMEDINEED = common dso_local global i32 0, align 4
@GOTMEDIKIT = common dso_local global i32 0, align 4
@pw_invulnerability = common dso_local global i32 0, align 4
@GOTINVUL = common dso_local global i32 0, align 4
@pw_strength = common dso_local global i32 0, align 4
@GOTBERSERK = common dso_local global i32 0, align 4
@wp_fist = common dso_local global i32 0, align 4
@pw_invisibility = common dso_local global i32 0, align 4
@GOTINVIS = common dso_local global i32 0, align 4
@pw_ironfeet = common dso_local global i32 0, align 4
@GOTSUIT = common dso_local global i32 0, align 4
@pw_allmap = common dso_local global i32 0, align 4
@GOTMAP = common dso_local global i32 0, align 4
@pw_infrared = common dso_local global i32 0, align 4
@GOTVISOR = common dso_local global i32 0, align 4
@MF_DROPPED = common dso_local global i32 0, align 4
@am_clip = common dso_local global i32 0, align 4
@GOTCLIP = common dso_local global i32 0, align 4
@GOTCLIPBOX = common dso_local global i32 0, align 4
@am_misl = common dso_local global i32 0, align 4
@GOTROCKET = common dso_local global i32 0, align 4
@GOTROCKBOX = common dso_local global i32 0, align 4
@am_cell = common dso_local global i32 0, align 4
@GOTCELL = common dso_local global i32 0, align 4
@GOTCELLBOX = common dso_local global i32 0, align 4
@am_shell = common dso_local global i32 0, align 4
@GOTSHELLS = common dso_local global i32 0, align 4
@GOTSHELLBOX = common dso_local global i32 0, align 4
@NUMAMMO = common dso_local global i32 0, align 4
@GOTBACKPACK = common dso_local global i32 0, align 4
@wp_bfg = common dso_local global i32 0, align 4
@GOTBFG9000 = common dso_local global i32 0, align 4
@sfx_wpnup = common dso_local global i32 0, align 4
@wp_chaingun = common dso_local global i32 0, align 4
@GOTCHAINGUN = common dso_local global i32 0, align 4
@wp_chainsaw = common dso_local global i32 0, align 4
@GOTCHAINSAW = common dso_local global i32 0, align 4
@wp_missile = common dso_local global i32 0, align 4
@GOTLAUNCHER = common dso_local global i32 0, align 4
@wp_plasma = common dso_local global i32 0, align 4
@GOTPLASMA = common dso_local global i32 0, align 4
@wp_shotgun = common dso_local global i32 0, align 4
@GOTSHOTGUN = common dso_local global i32 0, align 4
@wp_supershotgun = common dso_local global i32 0, align 4
@GOTSHOTGUN2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"P_SpecialThing: Unknown gettable thing\00", align 1
@MF_COUNTITEM = common dso_local global i32 0, align 4
@BONUSADD = common dso_local global i64 0, align 8
@players = common dso_local global %struct.TYPE_15__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_TouchSpecialThing(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FRACUNIT, align 4
  %24 = mul nsw i32 -8, %23
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  br label %635

27:                                               ; preds = %21
  %28 = load i32, i32* @sfx_itemup, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %5, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %635

37:                                               ; preds = %27
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %603 [
    i32 162, label %41
    i32 161, label %50
    i32 158, label %59
    i32 157, label %82
    i32 132, label %106
    i32 147, label %130
    i32 159, label %151
    i32 129, label %171
    i32 139, label %191
    i32 154, label %211
    i32 128, label %231
    i32 137, label %251
    i32 131, label %271
    i32 148, label %280
    i32 144, label %299
    i32 141, label %310
    i32 145, label %331
    i32 130, label %342
    i32 142, label %353
    i32 140, label %364
    i32 151, label %375
    i32 163, label %400
    i32 138, label %410
    i32 155, label %420
    i32 153, label %430
    i32 152, label %440
    i32 134, label %450
    i32 136, label %460
    i32 156, label %470
    i32 160, label %511
    i32 146, label %522
    i32 150, label %538
    i32 149, label %549
    i32 143, label %560
    i32 133, label %571
    i32 135, label %587
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = call i32 @P_GiveArmor(%struct.TYPE_15__* %42, i32 1)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %635

46:                                               ; preds = %41
  %47 = load i32, i32* @GOTARMOR, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  br label %605

50:                                               ; preds = %37
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = call i32 @P_GiveArmor(%struct.TYPE_15__* %51, i32 2)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %635

55:                                               ; preds = %50
  %56 = load i32, i32* @GOTMEGA, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  br label %605

59:                                               ; preds = %37
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 200
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  store i32 200, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 11
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @GOTHTHBONUS, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  br label %605

82:                                               ; preds = %37
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 200
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i32 200, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %82
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* @GOTARMBONUS, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  br label %605

106:                                              ; preds = %37
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 100
  store i32 %110, i32* %108, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 200
  br i1 %114, label %115, label %118

115:                                              ; preds = %106
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  store i32 200, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %106
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 11
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* @GOTSUPER, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @sfx_getpow, align 4
  store i32 %129, i32* %8, align 4
  br label %605

130:                                              ; preds = %37
  %131 = load i32, i32* @gamemode, align 4
  %132 = load i32, i32* @commercial, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %635

135:                                              ; preds = %130
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  store i32 200, i32* %137, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 11
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  store i32 %140, i32* %144, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %146 = call i32 @P_GiveArmor(%struct.TYPE_15__* %145, i32 2)
  %147 = load i32, i32* @GOTMSPHERE, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @sfx_getpow, align 4
  store i32 %150, i32* %8, align 4
  br label %605

151:                                              ; preds = %37
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 10
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @it_bluecard, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* @GOTBLUECARD, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %151
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = load i64, i64* @it_bluecard, align 8
  %166 = call i32 @P_GiveCard(%struct.TYPE_15__* %164, i64 %165)
  %167 = load i32, i32* @netgame, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  br label %605

170:                                              ; preds = %163
  br label %635

171:                                              ; preds = %37
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 10
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* @it_yellowcard, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* @GOTYELWCARD, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 7
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %179, %171
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = load i64, i64* @it_yellowcard, align 8
  %186 = call i32 @P_GiveCard(%struct.TYPE_15__* %184, i64 %185)
  %187 = load i32, i32* @netgame, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  br label %605

190:                                              ; preds = %183
  br label %635

191:                                              ; preds = %37
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 10
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @it_redcard, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %191
  %200 = load i32, i32* @GOTREDCARD, align 4
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 7
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %191
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %205 = load i64, i64* @it_redcard, align 8
  %206 = call i32 @P_GiveCard(%struct.TYPE_15__* %204, i64 %205)
  %207 = load i32, i32* @netgame, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %203
  br label %605

210:                                              ; preds = %203
  br label %635

211:                                              ; preds = %37
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 10
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* @it_blueskull, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %211
  %220 = load i32, i32* @GOTBLUESKUL, align 4
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %211
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %225 = load i64, i64* @it_blueskull, align 8
  %226 = call i32 @P_GiveCard(%struct.TYPE_15__* %224, i64 %225)
  %227 = load i32, i32* @netgame, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %223
  br label %605

230:                                              ; preds = %223
  br label %635

231:                                              ; preds = %37
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 10
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @it_yellowskull, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %243, label %239

239:                                              ; preds = %231
  %240 = load i32, i32* @GOTYELWSKUL, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 7
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %239, %231
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %245 = load i64, i64* @it_yellowskull, align 8
  %246 = call i32 @P_GiveCard(%struct.TYPE_15__* %244, i64 %245)
  %247 = load i32, i32* @netgame, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %243
  br label %605

250:                                              ; preds = %243
  br label %635

251:                                              ; preds = %37
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 10
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @it_redskull, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %251
  %260 = load i32, i32* @GOTREDSKULL, align 4
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 7
  store i32 %260, i32* %262, align 8
  br label %263

263:                                              ; preds = %259, %251
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %265 = load i64, i64* @it_redskull, align 8
  %266 = call i32 @P_GiveCard(%struct.TYPE_15__* %264, i64 %265)
  %267 = load i32, i32* @netgame, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %270, label %269

269:                                              ; preds = %263
  br label %605

270:                                              ; preds = %263
  br label %635

271:                                              ; preds = %37
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %273 = call i32 @P_GiveBody(%struct.TYPE_15__* %272, i32 10)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %271
  br label %635

276:                                              ; preds = %271
  %277 = load i32, i32* @GOTSTIM, align 4
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 7
  store i32 %277, i32* %279, align 8
  br label %605

280:                                              ; preds = %37
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %282 = call i32 @P_GiveBody(%struct.TYPE_15__* %281, i32 25)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  br label %635

285:                                              ; preds = %280
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %288, 25
  br i1 %289, label %290, label %294

290:                                              ; preds = %285
  %291 = load i32, i32* @GOTMEDINEED, align 4
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 7
  store i32 %291, i32* %293, align 8
  br label %298

294:                                              ; preds = %285
  %295 = load i32, i32* @GOTMEDIKIT, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 7
  store i32 %295, i32* %297, align 8
  br label %298

298:                                              ; preds = %294, %290
  br label %605

299:                                              ; preds = %37
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %301 = load i32, i32* @pw_invulnerability, align 4
  %302 = call i32 @P_GivePower(%struct.TYPE_15__* %300, i32 %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %299
  br label %635

305:                                              ; preds = %299
  %306 = load i32, i32* @GOTINVUL, align 4
  %307 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %307, i32 0, i32 7
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* @sfx_getpow, align 4
  store i32 %309, i32* %8, align 4
  br label %605

310:                                              ; preds = %37
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %312 = load i32, i32* @pw_strength, align 4
  %313 = call i32 @P_GivePower(%struct.TYPE_15__* %311, i32 %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %316, label %315

315:                                              ; preds = %310
  br label %635

316:                                              ; preds = %310
  %317 = load i32, i32* @GOTBERSERK, align 4
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 7
  store i32 %317, i32* %319, align 8
  %320 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @wp_fist, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %316
  %326 = load i32, i32* @wp_fist, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 8
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %325, %316
  %330 = load i32, i32* @sfx_getpow, align 4
  store i32 %330, i32* %8, align 4
  br label %605

331:                                              ; preds = %37
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %333 = load i32, i32* @pw_invisibility, align 4
  %334 = call i32 @P_GivePower(%struct.TYPE_15__* %332, i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %331
  br label %635

337:                                              ; preds = %331
  %338 = load i32, i32* @GOTINVIS, align 4
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 7
  store i32 %338, i32* %340, align 8
  %341 = load i32, i32* @sfx_getpow, align 4
  store i32 %341, i32* %8, align 4
  br label %605

342:                                              ; preds = %37
  %343 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %344 = load i32, i32* @pw_ironfeet, align 4
  %345 = call i32 @P_GivePower(%struct.TYPE_15__* %343, i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %342
  br label %635

348:                                              ; preds = %342
  %349 = load i32, i32* @GOTSUIT, align 4
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 7
  store i32 %349, i32* %351, align 8
  %352 = load i32, i32* @sfx_getpow, align 4
  store i32 %352, i32* %8, align 4
  br label %605

353:                                              ; preds = %37
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %355 = load i32, i32* @pw_allmap, align 4
  %356 = call i32 @P_GivePower(%struct.TYPE_15__* %354, i32 %355)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %353
  br label %635

359:                                              ; preds = %353
  %360 = load i32, i32* @GOTMAP, align 4
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 7
  store i32 %360, i32* %362, align 8
  %363 = load i32, i32* @sfx_getpow, align 4
  store i32 %363, i32* %8, align 4
  br label %605

364:                                              ; preds = %37
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %366 = load i32, i32* @pw_infrared, align 4
  %367 = call i32 @P_GivePower(%struct.TYPE_15__* %365, i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  br label %635

370:                                              ; preds = %364
  %371 = load i32, i32* @GOTVISOR, align 4
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 7
  store i32 %371, i32* %373, align 8
  %374 = load i32, i32* @sfx_getpow, align 4
  store i32 %374, i32* %8, align 4
  br label %605

375:                                              ; preds = %37
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @MF_DROPPED, align 4
  %380 = and i32 %378, %379
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %375
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %384 = load i32, i32* @am_clip, align 4
  %385 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %383, i32 %384, i32 0)
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %382
  br label %635

388:                                              ; preds = %382
  br label %396

389:                                              ; preds = %375
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %391 = load i32, i32* @am_clip, align 4
  %392 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %390, i32 %391, i32 1)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %389
  br label %635

395:                                              ; preds = %389
  br label %396

396:                                              ; preds = %395, %388
  %397 = load i32, i32* @GOTCLIP, align 4
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 7
  store i32 %397, i32* %399, align 8
  br label %605

400:                                              ; preds = %37
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %402 = load i32, i32* @am_clip, align 4
  %403 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %401, i32 %402, i32 5)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %400
  br label %635

406:                                              ; preds = %400
  %407 = load i32, i32* @GOTCLIPBOX, align 4
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 7
  store i32 %407, i32* %409, align 8
  br label %605

410:                                              ; preds = %37
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %412 = load i32, i32* @am_misl, align 4
  %413 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %411, i32 %412, i32 1)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %410
  br label %635

416:                                              ; preds = %410
  %417 = load i32, i32* @GOTROCKET, align 4
  %418 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 7
  store i32 %417, i32* %419, align 8
  br label %605

420:                                              ; preds = %37
  %421 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %422 = load i32, i32* @am_misl, align 4
  %423 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %421, i32 %422, i32 5)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %420
  br label %635

426:                                              ; preds = %420
  %427 = load i32, i32* @GOTROCKBOX, align 4
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 7
  store i32 %427, i32* %429, align 8
  br label %605

430:                                              ; preds = %37
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %432 = load i32, i32* @am_cell, align 4
  %433 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %431, i32 %432, i32 1)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %430
  br label %635

436:                                              ; preds = %430
  %437 = load i32, i32* @GOTCELL, align 4
  %438 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 7
  store i32 %437, i32* %439, align 8
  br label %605

440:                                              ; preds = %37
  %441 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %442 = load i32, i32* @am_cell, align 4
  %443 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %441, i32 %442, i32 5)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %440
  br label %635

446:                                              ; preds = %440
  %447 = load i32, i32* @GOTCELLBOX, align 4
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 7
  store i32 %447, i32* %449, align 8
  br label %605

450:                                              ; preds = %37
  %451 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %452 = load i32, i32* @am_shell, align 4
  %453 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %451, i32 %452, i32 1)
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %456, label %455

455:                                              ; preds = %450
  br label %635

456:                                              ; preds = %450
  %457 = load i32, i32* @GOTSHELLS, align 4
  %458 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %458, i32 0, i32 7
  store i32 %457, i32* %459, align 8
  br label %605

460:                                              ; preds = %37
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %462 = load i32, i32* @am_shell, align 4
  %463 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %461, i32 %462, i32 5)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %460
  br label %635

466:                                              ; preds = %460
  %467 = load i32, i32* @GOTSHELLBOX, align 4
  %468 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %468, i32 0, i32 7
  store i32 %467, i32* %469, align 8
  br label %605

470:                                              ; preds = %37
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %495, label %475

475:                                              ; preds = %470
  store i32 0, i32* %6, align 4
  br label %476

476:                                              ; preds = %489, %475
  %477 = load i32, i32* %6, align 4
  %478 = load i32, i32* @NUMAMMO, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %492

480:                                              ; preds = %476
  %481 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %481, i32 0, i32 4
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %6, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = mul nsw i32 %487, 2
  store i32 %488, i32* %486, align 4
  br label %489

489:                                              ; preds = %480
  %490 = load i32, i32* %6, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %6, align 4
  br label %476

492:                                              ; preds = %476
  %493 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %494 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %493, i32 0, i32 3
  store i32 1, i32* %494, align 4
  br label %495

495:                                              ; preds = %492, %470
  store i32 0, i32* %6, align 4
  br label %496

496:                                              ; preds = %504, %495
  %497 = load i32, i32* %6, align 4
  %498 = load i32, i32* @NUMAMMO, align 4
  %499 = icmp slt i32 %497, %498
  br i1 %499, label %500, label %507

500:                                              ; preds = %496
  %501 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %502 = load i32, i32* %6, align 4
  %503 = call i32 @P_GiveAmmo(%struct.TYPE_15__* %501, i32 %502, i32 1)
  br label %504

504:                                              ; preds = %500
  %505 = load i32, i32* %6, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %6, align 4
  br label %496

507:                                              ; preds = %496
  %508 = load i32, i32* @GOTBACKPACK, align 4
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 7
  store i32 %508, i32* %510, align 8
  br label %605

511:                                              ; preds = %37
  %512 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %513 = load i32, i32* @wp_bfg, align 4
  %514 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %512, i32 %513, i32 0)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %517, label %516

516:                                              ; preds = %511
  br label %635

517:                                              ; preds = %511
  %518 = load i32, i32* @GOTBFG9000, align 4
  %519 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %519, i32 0, i32 7
  store i32 %518, i32* %520, align 8
  %521 = load i32, i32* @sfx_wpnup, align 4
  store i32 %521, i32* %8, align 4
  br label %605

522:                                              ; preds = %37
  %523 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %524 = load i32, i32* @wp_chaingun, align 4
  %525 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %526 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %525, i32 0, i32 4
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @MF_DROPPED, align 4
  %529 = and i32 %527, %528
  %530 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %523, i32 %524, i32 %529)
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %533, label %532

532:                                              ; preds = %522
  br label %635

533:                                              ; preds = %522
  %534 = load i32, i32* @GOTCHAINGUN, align 4
  %535 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %536 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %535, i32 0, i32 7
  store i32 %534, i32* %536, align 8
  %537 = load i32, i32* @sfx_wpnup, align 4
  store i32 %537, i32* %8, align 4
  br label %605

538:                                              ; preds = %37
  %539 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %540 = load i32, i32* @wp_chainsaw, align 4
  %541 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %539, i32 %540, i32 0)
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %544, label %543

543:                                              ; preds = %538
  br label %635

544:                                              ; preds = %538
  %545 = load i32, i32* @GOTCHAINSAW, align 4
  %546 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %546, i32 0, i32 7
  store i32 %545, i32* %547, align 8
  %548 = load i32, i32* @sfx_wpnup, align 4
  store i32 %548, i32* %8, align 4
  br label %605

549:                                              ; preds = %37
  %550 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %551 = load i32, i32* @wp_missile, align 4
  %552 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %550, i32 %551, i32 0)
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %555, label %554

554:                                              ; preds = %549
  br label %635

555:                                              ; preds = %549
  %556 = load i32, i32* @GOTLAUNCHER, align 4
  %557 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %557, i32 0, i32 7
  store i32 %556, i32* %558, align 8
  %559 = load i32, i32* @sfx_wpnup, align 4
  store i32 %559, i32* %8, align 4
  br label %605

560:                                              ; preds = %37
  %561 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %562 = load i32, i32* @wp_plasma, align 4
  %563 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %561, i32 %562, i32 0)
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %566, label %565

565:                                              ; preds = %560
  br label %635

566:                                              ; preds = %560
  %567 = load i32, i32* @GOTPLASMA, align 4
  %568 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %568, i32 0, i32 7
  store i32 %567, i32* %569, align 8
  %570 = load i32, i32* @sfx_wpnup, align 4
  store i32 %570, i32* %8, align 4
  br label %605

571:                                              ; preds = %37
  %572 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %573 = load i32, i32* @wp_shotgun, align 4
  %574 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %574, i32 0, i32 4
  %576 = load i32, i32* %575, align 4
  %577 = load i32, i32* @MF_DROPPED, align 4
  %578 = and i32 %576, %577
  %579 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %572, i32 %573, i32 %578)
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %571
  br label %635

582:                                              ; preds = %571
  %583 = load i32, i32* @GOTSHOTGUN, align 4
  %584 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %584, i32 0, i32 7
  store i32 %583, i32* %585, align 8
  %586 = load i32, i32* @sfx_wpnup, align 4
  store i32 %586, i32* %8, align 4
  br label %605

587:                                              ; preds = %37
  %588 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %589 = load i32, i32* @wp_supershotgun, align 4
  %590 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %591 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %590, i32 0, i32 4
  %592 = load i32, i32* %591, align 4
  %593 = load i32, i32* @MF_DROPPED, align 4
  %594 = and i32 %592, %593
  %595 = call i32 @P_GiveWeapon(%struct.TYPE_15__* %588, i32 %589, i32 %594)
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %598, label %597

597:                                              ; preds = %587
  br label %635

598:                                              ; preds = %587
  %599 = load i32, i32* @GOTSHOTGUN2, align 4
  %600 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %600, i32 0, i32 7
  store i32 %599, i32* %601, align 8
  %602 = load i32, i32* @sfx_wpnup, align 4
  store i32 %602, i32* %8, align 4
  br label %605

603:                                              ; preds = %37
  %604 = call i32 @I_Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %605

605:                                              ; preds = %603, %598, %582, %566, %555, %544, %533, %517, %507, %466, %456, %446, %436, %426, %416, %406, %396, %370, %359, %348, %337, %329, %305, %298, %276, %269, %249, %229, %209, %189, %169, %135, %118, %102, %71, %55, %46
  %606 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %607 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %606, i32 0, i32 4
  %608 = load i32, i32* %607, align 4
  %609 = load i32, i32* @MF_COUNTITEM, align 4
  %610 = and i32 %608, %609
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %605
  %613 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %614 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %613, i32 0, i32 6
  %615 = load i32, i32* %614, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %614, align 4
  br label %617

617:                                              ; preds = %612, %605
  %618 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %619 = call i32 @P_RemoveMobj(%struct.TYPE_16__* %618)
  %620 = load i64, i64* @BONUSADD, align 8
  %621 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %622 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %621, i32 0, i32 5
  %623 = load i32, i32* %622, align 8
  %624 = sext i32 %623 to i64
  %625 = add nsw i64 %624, %620
  %626 = trunc i64 %625 to i32
  store i32 %626, i32* %622, align 8
  %627 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %628 = load %struct.TYPE_15__*, %struct.TYPE_15__** @players, align 8
  %629 = load i64, i64* @consoleplayer, align 8
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %628, i64 %629
  %631 = icmp eq %struct.TYPE_15__* %627, %630
  br i1 %631, label %632, label %635

632:                                              ; preds = %617
  %633 = load i32, i32* %8, align 4
  %634 = call i32 @S_StartSound(i32* null, i32 %633)
  br label %635

635:                                              ; preds = %26, %36, %45, %54, %134, %170, %190, %210, %230, %250, %270, %275, %284, %304, %315, %336, %347, %358, %369, %387, %394, %405, %415, %425, %435, %445, %455, %465, %516, %532, %543, %554, %565, %581, %597, %632, %617
  ret void
}

declare dso_local i32 @P_GiveArmor(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @P_GiveCard(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @P_GiveBody(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @P_GivePower(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @P_GiveAmmo(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @P_GiveWeapon(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @I_Error(i8*) #1

declare dso_local i32 @P_RemoveMobj(%struct.TYPE_16__*) #1

declare dso_local i32 @S_StartSound(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
