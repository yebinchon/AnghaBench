; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_SetupLevel.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_p_setup.c_P_SetupLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32*, i64, i64, i64 }

@wminfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@totalsecret = common dso_local global i64 0, align 8
@totalitems = common dso_local global i64 0, align 8
@totalkills = common dso_local global i64 0, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@players = common dso_local global %struct.TYPE_4__* null, align 8
@consoleplayer = common dso_local global i64 0, align 8
@PU_LEVEL = common dso_local global i32 0, align 4
@PU_PURGELEVEL = common dso_local global i64 0, align 8
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"map0%i\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"map%i\00", align 1
@leveltime = common dso_local global i64 0, align 8
@ML_BLOCKMAP = common dso_local global i64 0, align 8
@ML_VERTEXES = common dso_local global i64 0, align 8
@ML_SECTORS = common dso_local global i64 0, align 8
@ML_SIDEDEFS = common dso_local global i64 0, align 8
@ML_LINEDEFS = common dso_local global i64 0, align 8
@ML_SSECTORS = common dso_local global i64 0, align 8
@ML_NODES = common dso_local global i64 0, align 8
@ML_SEGS = common dso_local global i64 0, align 8
@ML_REJECT = common dso_local global i64 0, align 8
@rejectmatrix = common dso_local global i32 0, align 4
@bodyqueslot = common dso_local global i64 0, align 8
@deathmatchstarts = common dso_local global i32 0, align 4
@deathmatch_p = common dso_local global i32 0, align 4
@ML_THINGS = common dso_local global i64 0, align 8
@deathmatch = common dso_local global i64 0, align 8
@playeringame = common dso_local global i64* null, align 8
@iquetail = common dso_local global i64 0, align 8
@iquehead = common dso_local global i64 0, align 8
@precache = common dso_local global i64 0, align 8
@MAXINT = common dso_local global i64 0, align 8
@debugfile = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @P_SetupLevel(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [9 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wminfo, i32 0, i32 1), align 8
  store i64 0, i64* @totalsecret, align 8
  store i64 0, i64* @totalitems, align 8
  store i64 0, i64* @totalkills, align 8
  store i32 180, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wminfo, i32 0, i32 0), align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %32, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @MAXPLAYERS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %37 = load i64, i64* @consoleplayer, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = call i32 (...) @S_Start()
  %41 = load i32, i32* @PU_LEVEL, align 4
  %42 = load i64, i64* @PU_PURGELEVEL, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @Z_FreeTags(i32 %41, i64 %43)
  %45 = call i32 (...) @P_InitThinkers()
  %46 = call i32 (...) @W_Reload()
  %47 = load i64, i64* @gamemode, align 8
  %48 = load i64, i64* @commercial, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 10
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %61

57:                                               ; preds = %50
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  br label %74

62:                                               ; preds = %35
  %63 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  store i8 69, i8* %63, align 1
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 48, %64
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 1
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 2
  store i8 77, i8* %68, align 1
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 48, %69
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 3
  store i8 %71, i8* %72, align 1
  %73 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 4
  store i8 0, i8* %73, align 1
  br label %74

74:                                               ; preds = %62, %61
  %75 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %76 = call i32 @W_GetNumForName(i8* %75)
  store i32 %76, i32* %11, align 4
  store i64 0, i64* @leveltime, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* @ML_BLOCKMAP, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @P_LoadBlockMap(i64 %80)
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @ML_VERTEXES, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @P_LoadVertexes(i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @ML_SECTORS, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @P_LoadSectors(i64 %90)
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* @ML_SIDEDEFS, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @P_LoadSideDefs(i64 %95)
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @ML_LINEDEFS, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @P_LoadLineDefs(i64 %100)
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* @ML_SSECTORS, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @P_LoadSubsectors(i64 %105)
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @ML_NODES, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @P_LoadNodes(i64 %110)
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* @ML_SEGS, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @P_LoadSegs(i64 %115)
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* @ML_REJECT, align 8
  %120 = add nsw i64 %118, %119
  %121 = load i32, i32* @PU_LEVEL, align 4
  %122 = call i32 @W_CacheLumpNum(i64 %120, i32 %121)
  store i32 %122, i32* @rejectmatrix, align 4
  %123 = call i32 (...) @P_GroupLines()
  store i64 0, i64* @bodyqueslot, align 8
  %124 = load i32, i32* @deathmatchstarts, align 4
  store i32 %124, i32* @deathmatch_p, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* @ML_THINGS, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @P_LoadThings(i64 %128)
  %130 = load i64, i64* @deathmatch, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %74
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %153, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @MAXPLAYERS, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load i64*, i64** @playeringame, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** @players, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @G_DeathMatchSpawnPlayer(i32 %150)
  br label %152

152:                                              ; preds = %144, %137
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %133

156:                                              ; preds = %133
  br label %157

157:                                              ; preds = %156, %74
  store i64 0, i64* @iquetail, align 8
  store i64 0, i64* @iquehead, align 8
  %158 = call i32 (...) @P_SpawnSpecials()
  %159 = load i64, i64* @precache, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = call i32 (...) @R_PrecacheLevel()
  br label %163

163:                                              ; preds = %161, %157
  ret void
}

declare dso_local i32 @S_Start(...) #1

declare dso_local i32 @Z_FreeTags(i32, i64) #1

declare dso_local i32 @P_InitThinkers(...) #1

declare dso_local i32 @W_Reload(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @W_GetNumForName(i8*) #1

declare dso_local i32 @P_LoadBlockMap(i64) #1

declare dso_local i32 @P_LoadVertexes(i64) #1

declare dso_local i32 @P_LoadSectors(i64) #1

declare dso_local i32 @P_LoadSideDefs(i64) #1

declare dso_local i32 @P_LoadLineDefs(i64) #1

declare dso_local i32 @P_LoadSubsectors(i64) #1

declare dso_local i32 @P_LoadNodes(i64) #1

declare dso_local i32 @P_LoadSegs(i64) #1

declare dso_local i32 @W_CacheLumpNum(i64, i32) #1

declare dso_local i32 @P_GroupLines(...) #1

declare dso_local i32 @P_LoadThings(i64) #1

declare dso_local i32 @G_DeathMatchSpawnPlayer(i32) #1

declare dso_local i32 @P_SpawnSpecials(...) #1

declare dso_local i32 @R_PrecacheLevel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
