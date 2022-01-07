; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_CalculateRanks.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_main.c_CalculateRanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i32, i32, i32*, i64*, i64, %struct.TYPE_13__*, i64*, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@level = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@TEAM_NUM_TEAMS = common dso_local global i32 0, align 4
@CON_DISCONNECTED = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@CON_CONNECTED = common dso_local global i64 0, align 8
@g_entities = common dso_local global %struct.TYPE_16__* null, align 8
@SVF_BOT = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i64 0, align 8
@SortRanks = common dso_local global i32 0, align 4
@g_gametype = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@PERS_RANK = common dso_local global i64 0, align 8
@PERS_SCORE = common dso_local global i64 0, align 8
@RANK_TIED_FLAG = common dso_local global i32 0, align 4
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@CS_SCORES1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@CS_SCORES2 = common dso_local global i32 0, align 4
@SCORE_NOT_PRESENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalculateRanks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 11), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 10), align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %15, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @TEAM_NUM_TEAMS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %6

18:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %123, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 4), align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %126

23:                                               ; preds = %19
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CON_DISCONNECTED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %122

33:                                               ; preds = %23
  %34 = load i32, i32* %1, align 4
  %35 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TEAM_SPECTATOR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %121

49:                                               ; preds = %33
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 11), align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 11), align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CON_CONNECTED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %120

61:                                               ; preds = %49
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** @g_entities, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SVF_BOT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %108, label %74

74:                                               ; preds = %61
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 10), align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 10), align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TEAM_RED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %107

91:                                               ; preds = %74
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TEAM_BLUE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %91
  %102 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 9), align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %101, %91
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %61
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %1, align 4
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 0), align 8
  br label %119

113:                                              ; preds = %108
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %1, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 1), align 4
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118, %111
  br label %120

120:                                              ; preds = %119, %49
  br label %121

121:                                              ; preds = %120, %33
  br label %122

122:                                              ; preds = %121, %23
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  br label %19

126:                                              ; preds = %19
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %128 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %129 = load i32, i32* @SortRanks, align 4
  %130 = call i32 @qsort(i32* %127, i64 %128, i32 4, i32 %129)
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %132 = load i64, i64* @GT_TEAM, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %195

134:                                              ; preds = %126
  store i32 0, i32* %1, align 4
  br label %135

135:                                              ; preds = %191, %134
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %194

140:                                              ; preds = %135
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %143 = load i32, i32* %1, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i64 %147
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %5, align 8
  %149 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %150 = load i64, i64* @TEAM_RED, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %154 = load i64, i64* @TEAM_BLUE, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %152, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %140
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @PERS_RANK, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 2, i32* %164, align 4
  br label %190

165:                                              ; preds = %140
  %166 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %167 = load i64, i64* @TEAM_RED, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %171 = load i64, i64* @TEAM_BLUE, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp sgt i64 %169, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %165
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @PERS_RANK, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 0, i32* %181, align 4
  br label %189

182:                                              ; preds = %165
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @PERS_RANK, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %182, %175
  br label %190

190:                                              ; preds = %189, %158
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %1, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %1, align 4
  br label %135

194:                                              ; preds = %135
  br label %302

195:                                              ; preds = %126
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %196

196:                                              ; preds = %298, %195
  %197 = load i32, i32* %1, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %301

200:                                              ; preds = %196
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %202 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %203 = load i32, i32* %1, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %207
  store %struct.TYPE_13__* %208, %struct.TYPE_13__** %5, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i64, i64* @PERS_SCORE, align 8
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %4, align 4
  %216 = load i32, i32* %1, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %200
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* %3, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %218, %200
  %223 = load i32, i32* %1, align 4
  store i32 %223, i32* %2, align 4
  %224 = load i32, i32* %2, align 4
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %226 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %227 = load i32, i32* %1, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* @PERS_RANK, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 %224, i32* %237, align 4
  br label %272

238:                                              ; preds = %218
  %239 = load i32, i32* %2, align 4
  %240 = load i32, i32* @RANK_TIED_FLAG, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %243 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %244 = load i32, i32* %1, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* @PERS_RANK, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  store i32 %241, i32* %255, align 4
  %256 = load i32, i32* %2, align 4
  %257 = load i32, i32* @RANK_TIED_FLAG, align 4
  %258 = or i32 %256, %257
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %260 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %261 = load i32, i32* %1, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* @PERS_RANK, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32 %258, i32* %271, align 4
  br label %272

272:                                              ; preds = %238, %222
  %273 = load i32, i32* %4, align 4
  store i32 %273, i32* %3, align 4
  %274 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %275 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %297

277:                                              ; preds = %272
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 3), align 8
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %297

280:                                              ; preds = %277
  %281 = load i32, i32* %2, align 4
  %282 = load i32, i32* @RANK_TIED_FLAG, align 4
  %283 = or i32 %281, %282
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %285 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %286 = load i32, i32* %1, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @PERS_RANK, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32 %283, i32* %296, align 4
  br label %297

297:                                              ; preds = %280, %277, %272
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %1, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %1, align 4
  br label %196

301:                                              ; preds = %196
  br label %302

302:                                              ; preds = %301, %194
  %303 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @g_gametype, i32 0, i32 0), align 8
  %304 = load i64, i64* @GT_TEAM, align 8
  %305 = icmp sge i64 %303, %304
  br i1 %305, label %306, label %321

306:                                              ; preds = %302
  %307 = load i32, i32* @CS_SCORES1, align 4
  %308 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %309 = load i64, i64* @TEAM_RED, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %311)
  %313 = call i32 @trap_SetConfigstring(i32 %307, i32 %312)
  %314 = load i32, i32* @CS_SCORES2, align 4
  %315 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 6), align 8
  %316 = load i64, i64* @TEAM_BLUE, align 8
  %317 = getelementptr inbounds i64, i64* %315, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %318)
  %320 = call i32 @trap_SetConfigstring(i32 %314, i32 %319)
  br label %392

321:                                              ; preds = %302
  %322 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %321
  %325 = load i32, i32* @CS_SCORES1, align 4
  %326 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %327 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %326)
  %328 = call i32 @trap_SetConfigstring(i32 %325, i32 %327)
  %329 = load i32, i32* @CS_SCORES2, align 4
  %330 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %331 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %330)
  %332 = call i32 @trap_SetConfigstring(i32 %329, i32 %331)
  br label %391

333:                                              ; preds = %321
  %334 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 2), align 8
  %335 = icmp eq i64 %334, 1
  br i1 %335, label %336, label %357

336:                                              ; preds = %333
  %337 = load i32, i32* @CS_SCORES1, align 4
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %339 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = load i64, i64* @PERS_SCORE, align 8
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %350)
  %352 = call i32 @trap_SetConfigstring(i32 %337, i32 %351)
  %353 = load i32, i32* @CS_SCORES2, align 4
  %354 = load i64, i64* @SCORE_NOT_PRESENT, align 8
  %355 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %354)
  %356 = call i32 @trap_SetConfigstring(i32 %353, i32 %355)
  br label %390

357:                                              ; preds = %333
  %358 = load i32, i32* @CS_SCORES1, align 4
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %360 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 0
  %367 = load i32*, i32** %366, align 8
  %368 = load i64, i64* @PERS_SCORE, align 8
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  %372 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %371)
  %373 = call i32 @trap_SetConfigstring(i32 %358, i32 %372)
  %374 = load i32, i32* @CS_SCORES2, align 4
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 8), align 8
  %376 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 5), align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 1
  %378 = load i32, i32* %377, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i64 %379
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = load i64, i64* @PERS_SCORE, align 8
  %385 = getelementptr inbounds i32, i32* %383, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %387)
  %389 = call i32 @trap_SetConfigstring(i32 %374, i32 %388)
  br label %390

390:                                              ; preds = %357, %336
  br label %391

391:                                              ; preds = %390, %324
  br label %392

392:                                              ; preds = %391, %306
  %393 = call i32 (...) @CheckExitRules()
  %394 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @level, i32 0, i32 7), align 8
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %392
  %397 = call i32 (...) @SendScoreboardMessageToAllClients()
  br label %398

398:                                              ; preds = %396, %392
  ret void
}

declare dso_local i32 @qsort(i32*, i64, i32, i32) #1

declare dso_local i32 @trap_SetConfigstring(i32, i32) #1

declare dso_local i32 @va(i8*, i64) #1

declare dso_local i32 @CheckExitRules(...) #1

declare dso_local i32 @SendScoreboardMessageToAllClients(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
