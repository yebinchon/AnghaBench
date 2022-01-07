; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_scoreboard.c_CG_DrawOldScoreboard.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_scoreboard.c_CG_DrawOldScoreboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64*, i32, %struct.TYPE_16__*, %struct.TYPE_11__*, i64*, i32, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@cg_paused = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@PM_DEAD = common dso_local global i64 0, align 8
@colorWhite = common dso_local global float* null, align 8
@FADE_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Fragged by %s\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@SCREEN_WIDTH = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%s place with %i\00", align 1
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Teams are tied at %i\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Red leads %i to %i\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Blue leads %i to %i\00", align 1
@SB_HEADER = common dso_local global i32 0, align 4
@SB_SCORE_X = common dso_local global i64 0, align 8
@SB_RATING_WIDTH = common dso_local global i32 0, align 4
@SB_PING_X = common dso_local global i64 0, align 8
@SB_TIME_X = common dso_local global i64 0, align 8
@SB_NAME_X = common dso_local global i64 0, align 8
@SB_TOP = common dso_local global i32 0, align 4
@SB_MAXCLIENTS_NORMAL = common dso_local global i32 0, align 4
@SB_MAXCLIENTS_INTER = common dso_local global i32 0, align 4
@SB_INTER_HEIGHT = common dso_local global i32 0, align 4
@SB_NORMAL_HEIGHT = common dso_local global i32 0, align 4
@localClient = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@BIGCHAR_HEIGHT = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@TEAM_FREE = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CG_DrawOldScoreboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_paused, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %18 = load i32, i32* @qfalse, align 4
  store i32 %18, i32* %1, align 4
  br label %460

19:                                               ; preds = %0
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %21 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 7, i32 0), align 8
  %25 = load i64, i64* @PM_INTERMISSION, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %28 = load i32, i32* @qfalse, align 4
  store i32 %28, i32* %1, align 4
  br label %460

29:                                               ; preds = %23, %19
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 9), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 8), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @qfalse, align 4
  store i32 %36, i32* %1, align 4
  br label %460

37:                                               ; preds = %32, %29
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 8), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 7, i32 0), align 8
  %42 = load i64, i64* @PM_DEAD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 7, i32 0), align 8
  %46 = load i64, i64* @PM_INTERMISSION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40, %37
  store float 1.000000e+00, float* %8, align 4
  %49 = load float*, float** @colorWhite, align 8
  store float* %49, float** %9, align 8
  br label %63

50:                                               ; preds = %44
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 6), align 8
  %52 = load i32, i32* @FADE_TIME, align 4
  %53 = call float* @CG_FadeColor(i32 %51, i32 %52)
  store float* %53, float** %9, align 8
  %54 = load float*, float** %9, align 8
  %55 = icmp ne float* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %57 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 5), align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %1, align 4
  br label %460

60:                                               ; preds = %50
  %61 = load float*, float** %9, align 8
  %62 = load float, float* %61, align 4
  store float %62, float* %8, align 4
  br label %63

63:                                               ; preds = %60, %48
  %64 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 5), align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 5), align 8
  %70 = ptrtoint i64* %69 to i64
  %71 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %70)
  store i8* %71, i8** %10, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @CG_DrawStrlen(i8* %72)
  %74 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @SCREEN_WIDTH, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %2, align 4
  store i32 40, i32* %3, align 4
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load float, float* %8, align 4
  %84 = call i32 @CG_DrawBigString(i32 %80, i32 %81, i8* %82, float %83)
  br label %85

85:                                               ; preds = %68, %63
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %87 = load i64, i64* @GT_TEAM, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @PERS_TEAM, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @TEAM_SPECTATOR, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %89
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @PERS_RANK, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 1
  %108 = call i64 @CG_PlaceString(i64 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @PERS_SCORE, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %115)
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @CG_DrawStrlen(i8* %117)
  %119 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %120 = mul nsw i32 %118, %119
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* @SCREEN_WIDTH, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sdiv i32 %123, 2
  store i32 %124, i32* %2, align 4
  store i32 60, i32* %3, align 4
  %125 = load i32, i32* %2, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = load float, float* %8, align 4
  %129 = call i32 @CG_DrawBigString(i32 %125, i32 %126, i8* %127, float %128)
  br label %130

130:                                              ; preds = %99, %89
  br label %183

131:                                              ; preds = %85
  %132 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  store i8* %143, i8** %10, align 8
  br label %169

144:                                              ; preds = %131
  %145 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp sge i64 %147, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %144
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 1
  %158 = load i64, i64* %157, align 8
  %159 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %155, i64 %158)
  store i8* %159, i8** %10, align 8
  br label %168

160:                                              ; preds = %144
  %161 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = call i8* (i8*, i64, ...) @va(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i64 %163, i64 %166)
  store i8* %167, i8** %10, align 8
  br label %168

168:                                              ; preds = %160, %152
  br label %169

169:                                              ; preds = %168, %139
  %170 = load i8*, i8** %10, align 8
  %171 = call i32 @CG_DrawStrlen(i8* %170)
  %172 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %173 = mul nsw i32 %171, %172
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* @SCREEN_WIDTH, align 4
  %175 = load i32, i32* %4, align 4
  %176 = sub nsw i32 %174, %175
  %177 = sdiv i32 %176, 2
  store i32 %177, i32* %2, align 4
  store i32 60, i32* %3, align 4
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i8*, i8** %10, align 8
  %181 = load float, float* %8, align 4
  %182 = call i32 @CG_DrawBigString(i32 %178, i32 %179, i8* %180, float %181)
  br label %183

183:                                              ; preds = %169, %130
  %184 = load i32, i32* @SB_HEADER, align 4
  store i32 %184, i32* %3, align 4
  %185 = load i64, i64* @SB_SCORE_X, align 8
  %186 = load i32, i32* @SB_RATING_WIDTH, align 4
  %187 = sdiv i32 %186, 2
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %185, %188
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 1, i32 3), align 4
  %192 = call i32 @CG_DrawPic(i64 %189, i32 %190, i32 64, i32 32, i32 %191)
  %193 = load i64, i64* @SB_PING_X, align 8
  %194 = load i32, i32* @SB_RATING_WIDTH, align 4
  %195 = sdiv i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %193, %196
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 1, i32 2), align 8
  %200 = call i32 @CG_DrawPic(i64 %197, i32 %198, i32 64, i32 32, i32 %199)
  %201 = load i64, i64* @SB_TIME_X, align 8
  %202 = load i32, i32* @SB_RATING_WIDTH, align 4
  %203 = sdiv i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = sub nsw i64 %201, %204
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 1, i32 1), align 4
  %208 = call i32 @CG_DrawPic(i64 %205, i32 %206, i32 64, i32 32, i32 %207)
  %209 = load i64, i64* @SB_NAME_X, align 8
  %210 = load i32, i32* @SB_RATING_WIDTH, align 4
  %211 = sdiv i32 %210, 2
  %212 = sext i32 %211 to i64
  %213 = sub nsw i64 %209, %212
  %214 = load i32, i32* %3, align 4
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 1, i32 0), align 8
  %216 = call i32 @CG_DrawPic(i64 %213, i32 %214, i32 64, i32 32, i32 %215)
  %217 = load i32, i32* @SB_TOP, align 4
  store i32 %217, i32* %3, align 4
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %219 = load i32, i32* @SB_MAXCLIENTS_NORMAL, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %183
  %222 = load i32, i32* @SB_MAXCLIENTS_INTER, align 4
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* @SB_INTER_HEIGHT, align 4
  store i32 %223, i32* %12, align 4
  store i32 8, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %227

224:                                              ; preds = %183
  %225 = load i32, i32* @SB_MAXCLIENTS_NORMAL, align 4
  store i32 %225, i32* %11, align 4
  %226 = load i32, i32* @SB_NORMAL_HEIGHT, align 4
  store i32 %226, i32* %12, align 4
  store i32 16, i32* %13, align 4
  store i32 16, i32* %14, align 4
  br label %227

227:                                              ; preds = %224, %221
  %228 = load i32, i32* @qfalse, align 4
  store i32 %228, i32* @localClient, align 4
  %229 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cgs, i32 0, i32 0), align 8
  %230 = load i64, i64* @GT_TEAM, align 8
  %231 = icmp sge i64 %229, %230
  br i1 %231, label %232, label %379

232:                                              ; preds = %227
  %233 = load i32, i32* %12, align 4
  %234 = sdiv i32 %233, 2
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %3, align 4
  %237 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %238 = getelementptr inbounds i64, i64* %237, i64 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1), align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp sge i64 %239, %242
  br i1 %243, label %244, label %303

244:                                              ; preds = %232
  %245 = load i32, i32* %3, align 4
  %246 = load i64, i64* @TEAM_RED, align 8
  %247 = load float, float* %8, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @CG_TeamScoreboard(i32 %245, i64 %246, float %247, i32 %248, i32 %249)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %3, align 4
  %252 = load i32, i32* %13, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %12, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i64, i64* @TEAM_RED, align 8
  %260 = call i32 @CG_DrawTeamBackground(i32 0, i32 %253, i32 640, i32 %258, float 0x3FD51EB860000000, i64 %259)
  %261 = load i32, i32* %6, align 4
  %262 = load i32, i32* %12, align 4
  %263 = mul nsw i32 %261, %262
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %266 = add nsw i64 %264, %265
  %267 = load i32, i32* %3, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %266
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %3, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* %11, align 4
  %273 = sub nsw i32 %272, %271
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %3, align 4
  %275 = load i64, i64* @TEAM_BLUE, align 8
  %276 = load float, float* %8, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @CG_TeamScoreboard(i32 %274, i64 %275, float %276, i32 %277, i32 %278)
  store i32 %279, i32* %7, align 4
  %280 = load i32, i32* %3, align 4
  %281 = load i32, i32* %13, align 4
  %282 = sub nsw i32 %280, %281
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* %12, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i64, i64* @TEAM_BLUE, align 8
  %289 = call i32 @CG_DrawTeamBackground(i32 0, i32 %282, i32 640, i32 %287, float 0x3FD51EB860000000, i64 %288)
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %12, align 4
  %292 = mul nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %295 = add nsw i64 %293, %294
  %296 = load i32, i32* %3, align 4
  %297 = sext i32 %296 to i64
  %298 = add nsw i64 %297, %295
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %3, align 4
  %300 = load i32, i32* %7, align 4
  %301 = load i32, i32* %11, align 4
  %302 = sub nsw i32 %301, %300
  store i32 %302, i32* %11, align 4
  br label %362

303:                                              ; preds = %232
  %304 = load i32, i32* %3, align 4
  %305 = load i64, i64* @TEAM_BLUE, align 8
  %306 = load float, float* %8, align 4
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %12, align 4
  %309 = call i32 @CG_TeamScoreboard(i32 %304, i64 %305, float %306, i32 %307, i32 %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* %3, align 4
  %311 = load i32, i32* %13, align 4
  %312 = sub nsw i32 %310, %311
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %12, align 4
  %315 = mul nsw i32 %313, %314
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %315, %316
  %318 = load i64, i64* @TEAM_BLUE, align 8
  %319 = call i32 @CG_DrawTeamBackground(i32 0, i32 %312, i32 640, i32 %317, float 0x3FD51EB860000000, i64 %318)
  %320 = load i32, i32* %6, align 4
  %321 = load i32, i32* %12, align 4
  %322 = mul nsw i32 %320, %321
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %325 = add nsw i64 %323, %324
  %326 = load i32, i32* %3, align 4
  %327 = sext i32 %326 to i64
  %328 = add nsw i64 %327, %325
  %329 = trunc i64 %328 to i32
  store i32 %329, i32* %3, align 4
  %330 = load i32, i32* %6, align 4
  %331 = load i32, i32* %11, align 4
  %332 = sub nsw i32 %331, %330
  store i32 %332, i32* %11, align 4
  %333 = load i32, i32* %3, align 4
  %334 = load i64, i64* @TEAM_RED, align 8
  %335 = load float, float* %8, align 4
  %336 = load i32, i32* %11, align 4
  %337 = load i32, i32* %12, align 4
  %338 = call i32 @CG_TeamScoreboard(i32 %333, i64 %334, float %335, i32 %336, i32 %337)
  store i32 %338, i32* %7, align 4
  %339 = load i32, i32* %3, align 4
  %340 = load i32, i32* %13, align 4
  %341 = sub nsw i32 %339, %340
  %342 = load i32, i32* %7, align 4
  %343 = load i32, i32* %12, align 4
  %344 = mul nsw i32 %342, %343
  %345 = load i32, i32* %14, align 4
  %346 = add nsw i32 %344, %345
  %347 = load i64, i64* @TEAM_RED, align 8
  %348 = call i32 @CG_DrawTeamBackground(i32 0, i32 %341, i32 640, i32 %346, float 0x3FD51EB860000000, i64 %347)
  %349 = load i32, i32* %7, align 4
  %350 = load i32, i32* %12, align 4
  %351 = mul nsw i32 %349, %350
  %352 = sext i32 %351 to i64
  %353 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %354 = add nsw i64 %352, %353
  %355 = load i32, i32* %3, align 4
  %356 = sext i32 %355 to i64
  %357 = add nsw i64 %356, %354
  %358 = trunc i64 %357 to i32
  store i32 %358, i32* %3, align 4
  %359 = load i32, i32* %7, align 4
  %360 = load i32, i32* %11, align 4
  %361 = sub nsw i32 %360, %359
  store i32 %361, i32* %11, align 4
  br label %362

362:                                              ; preds = %303, %244
  %363 = load i32, i32* %3, align 4
  %364 = load i64, i64* @TEAM_SPECTATOR, align 8
  %365 = load float, float* %8, align 4
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %12, align 4
  %368 = call i32 @CG_TeamScoreboard(i32 %363, i64 %364, float %365, i32 %366, i32 %367)
  store i32 %368, i32* %6, align 4
  %369 = load i32, i32* %6, align 4
  %370 = load i32, i32* %12, align 4
  %371 = mul nsw i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %374 = add nsw i64 %372, %373
  %375 = load i32, i32* %3, align 4
  %376 = sext i32 %375 to i64
  %377 = add nsw i64 %376, %374
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %3, align 4
  br label %414

379:                                              ; preds = %227
  %380 = load i32, i32* %3, align 4
  %381 = load i64, i64* @TEAM_FREE, align 8
  %382 = load float, float* %8, align 4
  %383 = load i32, i32* %11, align 4
  %384 = load i32, i32* %12, align 4
  %385 = call i32 @CG_TeamScoreboard(i32 %380, i64 %381, float %382, i32 %383, i32 %384)
  store i32 %385, i32* %6, align 4
  %386 = load i32, i32* %6, align 4
  %387 = load i32, i32* %12, align 4
  %388 = mul nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %391 = add nsw i64 %389, %390
  %392 = load i32, i32* %3, align 4
  %393 = sext i32 %392 to i64
  %394 = add nsw i64 %393, %391
  %395 = trunc i64 %394 to i32
  store i32 %395, i32* %3, align 4
  %396 = load i32, i32* %3, align 4
  %397 = load i64, i64* @TEAM_SPECTATOR, align 8
  %398 = load float, float* %8, align 4
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* %6, align 4
  %401 = sub nsw i32 %399, %400
  %402 = load i32, i32* %12, align 4
  %403 = call i32 @CG_TeamScoreboard(i32 %396, i64 %397, float %398, i32 %401, i32 %402)
  store i32 %403, i32* %7, align 4
  %404 = load i32, i32* %7, align 4
  %405 = load i32, i32* %12, align 4
  %406 = mul nsw i32 %404, %405
  %407 = sext i32 %406 to i64
  %408 = load i64, i64* @BIGCHAR_HEIGHT, align 8
  %409 = add nsw i64 %407, %408
  %410 = load i32, i32* %3, align 4
  %411 = sext i32 %410 to i64
  %412 = add nsw i64 %411, %409
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %3, align 4
  br label %414

414:                                              ; preds = %379, %362
  %415 = load i32, i32* @localClient, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %452, label %417

417:                                              ; preds = %414
  store i32 0, i32* %5, align 4
  br label %418

418:                                              ; preds = %448, %417
  %419 = load i32, i32* %5, align 4
  %420 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2), align 8
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %451

422:                                              ; preds = %418
  %423 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 8
  %424 = load i32, i32* %5, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 4), align 8
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = icmp eq i64 %428, %432
  br i1 %433, label %434, label %447

434:                                              ; preds = %422
  %435 = load i32, i32* %3, align 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 3), align 8
  %437 = load i32, i32* %5, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i64 %438
  %440 = load float*, float** %9, align 8
  %441 = load float, float* %8, align 4
  %442 = load i32, i32* %12, align 4
  %443 = load i32, i32* @SB_NORMAL_HEIGHT, align 4
  %444 = icmp eq i32 %442, %443
  %445 = zext i1 %444 to i32
  %446 = call i32 @CG_DrawClientScore(i32 %435, %struct.TYPE_16__* %439, float* %440, float %441, i32 %445)
  br label %451

447:                                              ; preds = %422
  br label %448

448:                                              ; preds = %447
  %449 = load i32, i32* %5, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %5, align 4
  br label %418

451:                                              ; preds = %434, %418
  br label %452

452:                                              ; preds = %451, %414
  %453 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %455 = icmp sgt i32 %454, 10
  br i1 %455, label %456, label %458

456:                                              ; preds = %452
  %457 = call i32 (...) @CG_LoadDeferredPlayers()
  br label %458

458:                                              ; preds = %456, %452
  %459 = load i32, i32* @qtrue, align 4
  store i32 %459, i32* %1, align 4
  br label %460

460:                                              ; preds = %458, %56, %35, %27, %17
  %461 = load i32, i32* %1, align 4
  ret i32 %461
}

declare dso_local float* @CG_FadeColor(i32, i32) #1

declare dso_local i8* @va(i8*, i64, ...) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, i32, i8*, float) #1

declare dso_local i64 @CG_PlaceString(i64) #1

declare dso_local i32 @CG_DrawPic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @CG_TeamScoreboard(i32, i64, float, i32, i32) #1

declare dso_local i32 @CG_DrawTeamBackground(i32, i32, i32, i32, float, i64) #1

declare dso_local i32 @CG_DrawClientScore(i32, %struct.TYPE_16__*, float*, float, i32) #1

declare dso_local i32 @CG_LoadDeferredPlayers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
