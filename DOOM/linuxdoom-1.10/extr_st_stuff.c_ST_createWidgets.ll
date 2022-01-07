; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_createWidgets.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_createWidgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i64 }

@w_ready = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ST_AMMOX = common dso_local global i32 0, align 4
@ST_AMMOY = common dso_local global i32 0, align 4
@tallnum = common dso_local global i32 0, align 4
@plyr = common dso_local global %struct.TYPE_10__* null, align 8
@weaponinfo = common dso_local global %struct.TYPE_8__* null, align 8
@st_statusbaron = common dso_local global i32 0, align 4
@ST_AMMOWIDTH = common dso_local global i32 0, align 4
@w_health = common dso_local global i32 0, align 4
@ST_HEALTHX = common dso_local global i32 0, align 4
@ST_HEALTHY = common dso_local global i32 0, align 4
@tallpercent = common dso_local global i32 0, align 4
@w_armsbg = common dso_local global i32 0, align 4
@ST_ARMSBGX = common dso_local global i32 0, align 4
@ST_ARMSBGY = common dso_local global i32 0, align 4
@armsbg = common dso_local global i32 0, align 4
@st_notdeathmatch = common dso_local global i32 0, align 4
@w_arms = common dso_local global i32* null, align 8
@ST_ARMSX = common dso_local global i64 0, align 8
@ST_ARMSXSPACE = common dso_local global i32 0, align 4
@ST_ARMSY = common dso_local global i64 0, align 8
@ST_ARMSYSPACE = common dso_local global i32 0, align 4
@arms = common dso_local global i32* null, align 8
@st_armson = common dso_local global i32 0, align 4
@w_frags = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ST_FRAGSX = common dso_local global i32 0, align 4
@ST_FRAGSY = common dso_local global i32 0, align 4
@st_fragscount = common dso_local global i32 0, align 4
@st_fragson = common dso_local global i32 0, align 4
@ST_FRAGSWIDTH = common dso_local global i32 0, align 4
@w_faces = common dso_local global i32 0, align 4
@ST_FACESX = common dso_local global i64 0, align 8
@ST_FACESY = common dso_local global i64 0, align 8
@faces = common dso_local global i32 0, align 4
@st_faceindex = common dso_local global i32 0, align 4
@w_armor = common dso_local global i32 0, align 4
@ST_ARMORX = common dso_local global i32 0, align 4
@ST_ARMORY = common dso_local global i32 0, align 4
@w_keyboxes = common dso_local global i32* null, align 8
@ST_KEY0X = common dso_local global i64 0, align 8
@ST_KEY0Y = common dso_local global i64 0, align 8
@keys = common dso_local global i32 0, align 4
@keyboxes = common dso_local global i32* null, align 8
@ST_KEY1X = common dso_local global i64 0, align 8
@ST_KEY1Y = common dso_local global i64 0, align 8
@ST_KEY2X = common dso_local global i64 0, align 8
@ST_KEY2Y = common dso_local global i64 0, align 8
@w_ammo = common dso_local global %struct.TYPE_9__* null, align 8
@ST_AMMO0X = common dso_local global i32 0, align 4
@ST_AMMO0Y = common dso_local global i32 0, align 4
@shortnum = common dso_local global i32 0, align 4
@ST_AMMO0WIDTH = common dso_local global i32 0, align 4
@ST_AMMO1X = common dso_local global i32 0, align 4
@ST_AMMO1Y = common dso_local global i32 0, align 4
@ST_AMMO1WIDTH = common dso_local global i32 0, align 4
@ST_AMMO2X = common dso_local global i32 0, align 4
@ST_AMMO2Y = common dso_local global i32 0, align 4
@ST_AMMO2WIDTH = common dso_local global i32 0, align 4
@ST_AMMO3X = common dso_local global i32 0, align 4
@ST_AMMO3Y = common dso_local global i32 0, align 4
@ST_AMMO3WIDTH = common dso_local global i32 0, align 4
@w_maxammo = common dso_local global %struct.TYPE_9__* null, align 8
@ST_MAXAMMO0X = common dso_local global i32 0, align 4
@ST_MAXAMMO0Y = common dso_local global i32 0, align 4
@ST_MAXAMMO0WIDTH = common dso_local global i32 0, align 4
@ST_MAXAMMO1X = common dso_local global i32 0, align 4
@ST_MAXAMMO1Y = common dso_local global i32 0, align 4
@ST_MAXAMMO1WIDTH = common dso_local global i32 0, align 4
@ST_MAXAMMO2X = common dso_local global i32 0, align 4
@ST_MAXAMMO2Y = common dso_local global i32 0, align 4
@ST_MAXAMMO2WIDTH = common dso_local global i32 0, align 4
@ST_MAXAMMO3X = common dso_local global i32 0, align 4
@ST_MAXAMMO3Y = common dso_local global i32 0, align 4
@ST_MAXAMMO3WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_createWidgets() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @ST_AMMOX, align 4
  %3 = load i32, i32* @ST_AMMOY, align 4
  %4 = load i32, i32* @tallnum, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** @weaponinfo, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %7, i64 %14
  %16 = load i32, i32* @ST_AMMOWIDTH, align 4
  %17 = call i32 @STlib_initNum(%struct.TYPE_9__* @w_ready, i32 %2, i32 %3, i32 %4, i32* %15, i32* @st_statusbaron, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @w_ready, i32 0, i32 0), align 8
  %21 = load i32, i32* @ST_HEALTHX, align 4
  %22 = load i32, i32* @ST_HEALTHY, align 4
  %23 = load i32, i32* @tallnum, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = load i32, i32* @tallpercent, align 4
  %27 = call i32 @STlib_initPercent(i32* @w_health, i32 %21, i32 %22, i32 %23, i32* %25, i32* @st_statusbaron, i32 %26)
  %28 = load i32, i32* @ST_ARMSBGX, align 4
  %29 = load i32, i32* @ST_ARMSBGY, align 4
  %30 = load i32, i32* @armsbg, align 4
  %31 = call i32 @STlib_initBinIcon(i32* @w_armsbg, i32 %28, i32 %29, i32 %30, i32* @st_notdeathmatch, i32* @st_statusbaron)
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %67, %0
  %33 = load i32, i32* %1, align 4
  %34 = icmp slt i32 %33, 6
  br i1 %34, label %35, label %70

35:                                               ; preds = %32
  %36 = load i32*, i32** @w_arms, align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i64, i64* @ST_ARMSX, align 8
  %41 = load i32, i32* %1, align 4
  %42 = srem i32 %41, 3
  %43 = load i32, i32* @ST_ARMSXSPACE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = load i64, i64* @ST_ARMSY, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sdiv i32 %48, 3
  %50 = load i32, i32* @ST_ARMSYSPACE, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load i32*, i32** @arms, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = call i32 @STlib_initMultIcon(i32* %39, i64 %46, i64 %53, i32 %58, i32* %65, i32* @st_armson)
  br label %67

67:                                               ; preds = %35
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %32

70:                                               ; preds = %32
  %71 = load i32, i32* @ST_FRAGSX, align 4
  %72 = load i32, i32* @ST_FRAGSY, align 4
  %73 = load i32, i32* @tallnum, align 4
  %74 = load i32, i32* @ST_FRAGSWIDTH, align 4
  %75 = call i32 @STlib_initNum(%struct.TYPE_9__* @w_frags, i32 %71, i32 %72, i32 %73, i32* @st_fragscount, i32* @st_fragson, i32 %74)
  %76 = load i64, i64* @ST_FACESX, align 8
  %77 = load i64, i64* @ST_FACESY, align 8
  %78 = load i32, i32* @faces, align 4
  %79 = call i32 @STlib_initMultIcon(i32* @w_faces, i64 %76, i64 %77, i32 %78, i32* @st_faceindex, i32* @st_statusbaron)
  %80 = load i32, i32* @ST_ARMORX, align 4
  %81 = load i32, i32* @ST_ARMORY, align 4
  %82 = load i32, i32* @tallnum, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = load i32, i32* @tallpercent, align 4
  %86 = call i32 @STlib_initPercent(i32* @w_armor, i32 %80, i32 %81, i32 %82, i32* %84, i32* @st_statusbaron, i32 %85)
  %87 = load i32*, i32** @w_keyboxes, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i64, i64* @ST_KEY0X, align 8
  %90 = load i64, i64* @ST_KEY0Y, align 8
  %91 = load i32, i32* @keys, align 4
  %92 = load i32*, i32** @keyboxes, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = call i32 @STlib_initMultIcon(i32* %88, i64 %89, i64 %90, i32 %91, i32* %93, i32* @st_statusbaron)
  %95 = load i32*, i32** @w_keyboxes, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i64, i64* @ST_KEY1X, align 8
  %98 = load i64, i64* @ST_KEY1Y, align 8
  %99 = load i32, i32* @keys, align 4
  %100 = load i32*, i32** @keyboxes, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = call i32 @STlib_initMultIcon(i32* %96, i64 %97, i64 %98, i32 %99, i32* %101, i32* @st_statusbaron)
  %103 = load i32*, i32** @w_keyboxes, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i64, i64* @ST_KEY2X, align 8
  %106 = load i64, i64* @ST_KEY2Y, align 8
  %107 = load i32, i32* @keys, align 4
  %108 = load i32*, i32** @keyboxes, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = call i32 @STlib_initMultIcon(i32* %104, i64 %105, i64 %106, i32 %107, i32* %109, i32* @st_statusbaron)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_ammo, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 0
  %113 = load i32, i32* @ST_AMMO0X, align 4
  %114 = load i32, i32* @ST_AMMO0Y, align 4
  %115 = load i32, i32* @shortnum, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* @ST_AMMO0WIDTH, align 4
  %121 = call i32 @STlib_initNum(%struct.TYPE_9__* %112, i32 %113, i32 %114, i32 %115, i32* %119, i32* @st_statusbaron, i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_ammo, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 1
  %124 = load i32, i32* @ST_AMMO1X, align 4
  %125 = load i32, i32* @ST_AMMO1Y, align 4
  %126 = load i32, i32* @shortnum, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* @ST_AMMO1WIDTH, align 4
  %132 = call i32 @STlib_initNum(%struct.TYPE_9__* %123, i32 %124, i32 %125, i32 %126, i32* %130, i32* @st_statusbaron, i32 %131)
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_ammo, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 2
  %135 = load i32, i32* @ST_AMMO2X, align 4
  %136 = load i32, i32* @ST_AMMO2Y, align 4
  %137 = load i32, i32* @shortnum, align 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* @ST_AMMO2WIDTH, align 4
  %143 = call i32 @STlib_initNum(%struct.TYPE_9__* %134, i32 %135, i32 %136, i32 %137, i32* %141, i32* @st_statusbaron, i32 %142)
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_ammo, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 3
  %146 = load i32, i32* @ST_AMMO3X, align 4
  %147 = load i32, i32* @ST_AMMO3Y, align 4
  %148 = load i32, i32* @shortnum, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  %153 = load i32, i32* @ST_AMMO3WIDTH, align 4
  %154 = call i32 @STlib_initNum(%struct.TYPE_9__* %145, i32 %146, i32 %147, i32 %148, i32* %152, i32* @st_statusbaron, i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_maxammo, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 0
  %157 = load i32, i32* @ST_MAXAMMO0X, align 4
  %158 = load i32, i32* @ST_MAXAMMO0Y, align 4
  %159 = load i32, i32* @shortnum, align 4
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* @ST_MAXAMMO0WIDTH, align 4
  %165 = call i32 @STlib_initNum(%struct.TYPE_9__* %156, i32 %157, i32 %158, i32 %159, i32* %163, i32* @st_statusbaron, i32 %164)
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_maxammo, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 1
  %168 = load i32, i32* @ST_MAXAMMO1X, align 4
  %169 = load i32, i32* @ST_MAXAMMO1Y, align 4
  %170 = load i32, i32* @shortnum, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 1
  %175 = load i32, i32* @ST_MAXAMMO1WIDTH, align 4
  %176 = call i32 @STlib_initNum(%struct.TYPE_9__* %167, i32 %168, i32 %169, i32 %170, i32* %174, i32* @st_statusbaron, i32 %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_maxammo, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i64 2
  %179 = load i32, i32* @ST_MAXAMMO2X, align 4
  %180 = load i32, i32* @ST_MAXAMMO2Y, align 4
  %181 = load i32, i32* @shortnum, align 4
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 2
  %186 = load i32, i32* @ST_MAXAMMO2WIDTH, align 4
  %187 = call i32 @STlib_initNum(%struct.TYPE_9__* %178, i32 %179, i32 %180, i32 %181, i32* %185, i32* @st_statusbaron, i32 %186)
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** @w_maxammo, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 3
  %190 = load i32, i32* @ST_MAXAMMO3X, align 4
  %191 = load i32, i32* @ST_MAXAMMO3Y, align 4
  %192 = load i32, i32* @shortnum, align 4
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @plyr, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  %197 = load i32, i32* @ST_MAXAMMO3WIDTH, align 4
  %198 = call i32 @STlib_initNum(%struct.TYPE_9__* %189, i32 %190, i32 %191, i32 %192, i32* %196, i32* @st_statusbaron, i32 %197)
  ret void
}

declare dso_local i32 @STlib_initNum(%struct.TYPE_9__*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @STlib_initPercent(i32*, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @STlib_initBinIcon(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @STlib_initMultIcon(i32*, i64, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
