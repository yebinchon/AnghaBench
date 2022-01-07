; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_14__*, i64** }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@selectedArenaSet = common dso_local global i32 0, align 4
@currentSet = common dso_local global i32 0, align 4
@selectedArena = common dso_local global i32 0, align 4
@trainingTier = common dso_local global i32 0, align 4
@finalTier = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ui_spSelection\00", align 1
@ARENAS_PER_TIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"training\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@levelMenuInfo = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@QMF_INACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@minTier = common dso_local global i32 0, align 4
@QMF_HIDDEN = common dso_local global i32 0, align 4
@maxTier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_SPLevelMenu_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPLevelMenu_SetMenuItems() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @selectedArenaSet, align 4
  %5 = load i32, i32* @currentSet, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* @selectedArena, align 4
  br label %13

8:                                                ; preds = %0
  %9 = load i32, i32* @selectedArena, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* @selectedArena, align 4
  br label %12

12:                                               ; preds = %11, %8
  br label %13

13:                                               ; preds = %12, %7
  %14 = load i32, i32* @selectedArenaSet, align 4
  %15 = load i32, i32* @trainingTier, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @selectedArenaSet, align 4
  %19 = load i32, i32* @finalTier, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %13
  store i32 0, i32* @selectedArena, align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* @selectedArena, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @selectedArenaSet, align 4
  %27 = load i32, i32* @ARENAS_PER_TIER, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @selectedArena, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %25, %22
  %33 = load i32, i32* @selectedArenaSet, align 4
  %34 = load i32, i32* @trainingTier, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @Info_ValueForKey(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %40 = call i32 @atoi(i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @UI_SPLevelMenu_SetMenuArena(i32 0, i32 %41, i8* %42)
  %44 = load i8*, i8** %3, align 8
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 0), align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 256, i32* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 0
  %51 = call i32 @Bitmap_Init(%struct.TYPE_14__* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 32
  store i32 %57, i32* %55, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 1), align 8
  %58 = load i32, i32* @QMF_INACTIVE, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @QMF_INACTIVE, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 2
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 8
  %72 = load i32, i32* @QMF_INACTIVE, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 3
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %72
  store i32 %78, i32* %76, align 8
  %79 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 5), align 8
  %80 = getelementptr inbounds i64*, i64** %79, i64 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  store i64 0, i64* %82, align 8
  %83 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 5), align 8
  %84 = getelementptr inbounds i64*, i64** %83, i64 2
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  store i64 0, i64* %86, align 8
  %87 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 5), align 8
  %88 = getelementptr inbounds i64*, i64** %87, i64 3
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 1
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 2
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 3
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  br label %212

100:                                              ; preds = %32
  %101 = load i32, i32* @selectedArenaSet, align 4
  %102 = load i32, i32* @finalTier, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %168

104:                                              ; preds = %100
  %105 = call i8* @UI_GetSpecialArenaInfo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %105, i8** %3, align 8
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @Info_ValueForKey(i8* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %108 = call i32 @atoi(i32 %107)
  store i32 %108, i32* %2, align 4
  %109 = load i32, i32* %2, align 4
  %110 = load i8*, i8** %3, align 8
  %111 = call i32 @UI_SPLevelMenu_SetMenuArena(i32 0, i32 %109, i8* %110)
  %112 = load i8*, i8** %3, align 8
  store i8* %112, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 0), align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 256, i32* %116, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 0
  %119 = call i32 @Bitmap_Init(%struct.TYPE_14__* %118)
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 32
  store i32 %125, i32* %123, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 1), align 8
  %126 = load i32, i32* @QMF_INACTIVE, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @QMF_INACTIVE, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i64 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %133
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* @QMF_INACTIVE, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 3
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %140
  store i32 %146, i32* %144, align 8
  %147 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 5), align 8
  %148 = getelementptr inbounds i64*, i64** %147, i64 1
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  store i64 0, i64* %150, align 8
  %151 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 5), align 8
  %152 = getelementptr inbounds i64*, i64** %151, i64 2
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  store i64 0, i64* %154, align 8
  %155 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 5), align 8
  %156 = getelementptr inbounds i64*, i64** %155, i64 3
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i64 2
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 3
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  br label %211

168:                                              ; preds = %100
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i64 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i32 46, i32* %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 0
  %175 = call i32 @Bitmap_Init(%struct.TYPE_14__* %174)
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 4), align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 18
  store i32 %181, i32* %179, align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %182

182:                                              ; preds = %197, %168
  %183 = load i32, i32* %1, align 4
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  %186 = load i32, i32* @selectedArenaSet, align 4
  %187 = load i32, i32* @ARENAS_PER_TIER, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %1, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %2, align 4
  %191 = load i32, i32* %2, align 4
  %192 = call i8* @UI_GetArenaInfoByNumber(i32 %191)
  store i8* %192, i8** %3, align 8
  %193 = load i32, i32* %1, align 4
  %194 = load i32, i32* %2, align 4
  %195 = load i8*, i8** %3, align 8
  %196 = call i32 @UI_SPLevelMenu_SetMenuArena(i32 %193, i32 %194, i8* %195)
  br label %197

197:                                              ; preds = %185
  %198 = load i32, i32* %1, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %1, align 4
  br label %182

200:                                              ; preds = %182
  %201 = load i32, i32* @selectedArena, align 4
  %202 = icmp ne i32 %201, -1
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load i32, i32* @selectedArenaSet, align 4
  %205 = load i32, i32* @ARENAS_PER_TIER, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* @selectedArena, align 4
  %208 = add nsw i32 %206, %207
  %209 = call i8* @UI_GetArenaInfoByNumber(i32 %208)
  store i8* %209, i8** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 0), align 8
  br label %210

210:                                              ; preds = %203, %200
  br label %211

211:                                              ; preds = %210, %104
  br label %212

212:                                              ; preds = %211, %36
  %213 = load i32, i32* @selectedArenaSet, align 4
  %214 = load i32, i32* @minTier, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %212
  %217 = load i32, i32* @QMF_INACTIVE, align 4
  %218 = load i32, i32* @QMF_HIDDEN, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 3, i32 0, i32 0), align 8
  %221 = or i32 %220, %219
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 3, i32 0, i32 0), align 8
  br label %229

222:                                              ; preds = %212
  %223 = load i32, i32* @QMF_INACTIVE, align 4
  %224 = load i32, i32* @QMF_HIDDEN, align 4
  %225 = or i32 %223, %224
  %226 = xor i32 %225, -1
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 3, i32 0, i32 0), align 8
  %228 = and i32 %227, %226
  store i32 %228, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 3, i32 0, i32 0), align 8
  br label %229

229:                                              ; preds = %222, %216
  %230 = load i32, i32* @selectedArenaSet, align 4
  %231 = load i32, i32* @maxTier, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load i32, i32* @QMF_INACTIVE, align 4
  %235 = load i32, i32* @QMF_HIDDEN, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 2, i32 0, i32 0), align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 2, i32 0, i32 0), align 4
  br label %246

239:                                              ; preds = %229
  %240 = load i32, i32* @QMF_INACTIVE, align 4
  %241 = load i32, i32* @QMF_HIDDEN, align 4
  %242 = or i32 %240, %241
  %243 = xor i32 %242, -1
  %244 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 2, i32 0, i32 0), align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @levelMenuInfo, i32 0, i32 2, i32 0, i32 0), align 4
  br label %246

246:                                              ; preds = %239, %233
  %247 = call i32 (...) @UI_SPLevelMenu_SetBots()
  ret void
}

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i8* @UI_GetSpecialArenaInfo(i8*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @UI_SPLevelMenu_SetMenuArena(i32, i32, i8*) #1

declare dso_local i32 @Bitmap_Init(%struct.TYPE_14__*) #1

declare dso_local i8* @UI_GetArenaInfoByNumber(i32) #1

declare dso_local i32 @UI_SPLevelMenu_SetBots(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
