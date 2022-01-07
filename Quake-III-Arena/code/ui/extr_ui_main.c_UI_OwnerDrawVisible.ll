; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_OwnerDrawVisible.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_OwnerDrawVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64*, i64, i64, i64, i32, %struct.TYPE_9__, i8*, i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@qtrue = common dso_local global i8* null, align 8
@UI_SHOW_FFA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"g_gametype\00", align 1
@GT_FFA = common dso_local global i64 0, align 8
@qfalse = common dso_local global i8* null, align 8
@UI_SHOW_NOTFFA = common dso_local global i32 0, align 4
@UI_SHOW_LEADER = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ui_selectedPlayer = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UI_SHOW_NOTLEADER = common dso_local global i32 0, align 4
@UI_SHOW_FAVORITESERVERS = common dso_local global i32 0, align 4
@ui_netSource = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@AS_FAVORITES = common dso_local global i64 0, align 8
@UI_SHOW_NOTFAVORITESERVERS = common dso_local global i32 0, align 4
@UI_SHOW_ANYTEAMGAME = common dso_local global i32 0, align 4
@ui_gameType = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GT_TEAM = common dso_local global i64 0, align 8
@UI_SHOW_ANYNONTEAMGAME = common dso_local global i32 0, align 4
@UI_SHOW_NETANYTEAMGAME = common dso_local global i32 0, align 4
@ui_netGameType = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@UI_SHOW_NETANYNONTEAMGAME = common dso_local global i32 0, align 4
@UI_SHOW_NEWHIGHSCORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sv_killserver\00", align 1
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@UI_SHOW_NEWBESTTIME = common dso_local global i32 0, align 4
@UI_SHOW_DEMOAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @UI_OwnerDrawVisible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @UI_OwnerDrawVisible(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i8*, i8** @qtrue, align 8
  store i8* %4, i8** %3, align 8
  br label %5

5:                                                ; preds = %269, %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %270

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @UI_SHOW_FFA, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* @GT_FFA, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** @qfalse, align 8
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32, i32* @UI_SHOW_FFA, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @UI_SHOW_NOTFFA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load i64, i64* @GT_FFA, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i8*, i8** @qfalse, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* @UI_SHOW_NOTFFA, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %2, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @UI_SHOW_LEADER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 10), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** @qfalse, align 8
  store i8* %49, i8** %3, align 8
  br label %64

50:                                               ; preds = %45
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_selectedPlayer, i32 0, i32 0), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_selectedPlayer, i32 0, i32 0), align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i8*, i8** @qfalse, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %61, %54, %50
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* @UI_SHOW_LEADER, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %2, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %40
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* @UI_SHOW_NOTLEADER, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 10), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_selectedPlayer, i32 0, i32 0), align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 0), align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load i64*, i64** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 1), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_selectedPlayer, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 2), align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %90, label %88

88:                                               ; preds = %81, %77
  %89 = load i8*, i8** @qfalse, align 8
  store i8* %89, i8** %3, align 8
  br label %90

90:                                               ; preds = %88, %81
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* @UI_SHOW_NOTLEADER, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %2, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %91, %69
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @UI_SHOW_FAVORITESERVERS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui_netSource, i32 0, i32 0), align 8
  %103 = load i64, i64* @AS_FAVORITES, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i8*, i8** @qfalse, align 8
  store i8* %106, i8** %3, align 8
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* @UI_SHOW_FAVORITESERVERS, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %2, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %96
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* @UI_SHOW_NOTFAVORITESERVERS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ui_netSource, i32 0, i32 0), align 8
  %119 = load i64, i64* @AS_FAVORITES, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i8*, i8** @qfalse, align 8
  store i8* %122, i8** %3, align 8
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i32, i32* @UI_SHOW_NOTFAVORITESERVERS, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %2, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %112
  %129 = load i32, i32* %2, align 4
  %130 = load i32, i32* @UI_SHOW_ANYTEAMGAME, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 9), align 8
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_gameType, i32 0, i32 0), align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @GT_TEAM, align 8
  %140 = icmp sle i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i8*, i8** @qfalse, align 8
  store i8* %142, i8** %3, align 8
  br label %143

143:                                              ; preds = %141, %133
  %144 = load i32, i32* @UI_SHOW_ANYTEAMGAME, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %2, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %143, %128
  %149 = load i32, i32* %2, align 4
  %150 = load i32, i32* @UI_SHOW_ANYNONTEAMGAME, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 9), align 8
  %155 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ui_gameType, i32 0, i32 0), align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @GT_TEAM, align 8
  %160 = icmp sgt i64 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %153
  %162 = load i8*, i8** @qfalse, align 8
  store i8* %162, i8** %3, align 8
  br label %163

163:                                              ; preds = %161, %153
  %164 = load i32, i32* @UI_SHOW_ANYNONTEAMGAME, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %2, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %163, %148
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* @UI_SHOW_NETANYTEAMGAME, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %168
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 9), align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_netGameType, i32 0, i32 0), align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @GT_TEAM, align 8
  %180 = icmp sle i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = load i8*, i8** @qfalse, align 8
  store i8* %182, i8** %3, align 8
  br label %183

183:                                              ; preds = %181, %173
  %184 = load i32, i32* @UI_SHOW_NETANYTEAMGAME, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %2, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %183, %168
  %189 = load i32, i32* %2, align 4
  %190 = load i32, i32* @UI_SHOW_NETANYNONTEAMGAME, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 9), align 8
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ui_netGameType, i32 0, i32 0), align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @GT_TEAM, align 8
  %200 = icmp sgt i64 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = load i8*, i8** @qfalse, align 8
  store i8* %202, i8** %3, align 8
  br label %203

203:                                              ; preds = %201, %193
  %204 = load i32, i32* @UI_SHOW_NETANYNONTEAMGAME, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %2, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %203, %188
  %209 = load i32, i32* %2, align 4
  %210 = load i32, i32* @UI_SHOW_NEWHIGHSCORE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %208
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 3), align 8
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i8*, i8** @qfalse, align 8
  store i8* %218, i8** %3, align 8
  br label %232

219:                                              ; preds = %213
  %220 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7), align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 8), align 8
  %227 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %228 = call i32 @trap_S_StartLocalSound(i32 %226, i32 %227)
  %229 = load i8*, i8** @qfalse, align 8
  store i8* %229, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 7), align 8
  br label %230

230:                                              ; preds = %225, %222
  br label %231

231:                                              ; preds = %230, %219
  br label %232

232:                                              ; preds = %231, %217
  %233 = load i32, i32* @UI_SHOW_NEWHIGHSCORE, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %2, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %232, %208
  %238 = load i32, i32* %2, align 4
  %239 = load i32, i32* @UI_SHOW_NEWBESTTIME, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 4), align 8
  %244 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 6, i32 0), align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i8*, i8** @qfalse, align 8
  store i8* %247, i8** %3, align 8
  br label %248

248:                                              ; preds = %246, %242
  %249 = load i32, i32* @UI_SHOW_NEWBESTTIME, align 4
  %250 = xor i32 %249, -1
  %251 = load i32, i32* %2, align 4
  %252 = and i32 %251, %250
  store i32 %252, i32* %2, align 4
  br label %253

253:                                              ; preds = %248, %237
  %254 = load i32, i32* %2, align 4
  %255 = load i32, i32* @UI_SHOW_DEMOAVAILABLE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %253
  %259 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @uiInfo, i32 0, i32 5), align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %258
  %262 = load i8*, i8** @qfalse, align 8
  store i8* %262, i8** %3, align 8
  br label %263

263:                                              ; preds = %261, %258
  %264 = load i32, i32* @UI_SHOW_DEMOAVAILABLE, align 4
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %2, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %2, align 4
  br label %269

268:                                              ; preds = %253
  store i32 0, i32* %2, align 4
  br label %269

269:                                              ; preds = %268, %263
  br label %5

270:                                              ; preds = %5
  %271 = load i8*, i8** %3, align 8
  ret i8* %271
}

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
