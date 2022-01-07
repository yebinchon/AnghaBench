; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_MenuDraw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_splevel.c_UI_SPLevelMenu_MenuDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32*, i32, i8**, i32*, i32*, i32, i8**, i64*, i32, i64, %struct.TYPE_10__*, i32, i64, i64*, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@MAX_INFO_VALUE = common dso_local global i32 0, align 4
@levelMenuInfo = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@PLAYER_Y = common dso_local global i32 0, align 4
@UI_CENTER = common dso_local global i32 0, align 4
@UI_SMALLFONT = common dso_local global i32 0, align 4
@color_orange = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@AWARDS_Y = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%im\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ik\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@color_yellow = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Tier %i\00", align 1
@selectedArenaSet = common dso_local global i64 0, align 8
@UI_LEFT = common dso_local global i32 0, align 4
@color_black = common dso_local global i32 0, align 4
@currentSet = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"ACCESS DENIED\00", align 1
@UI_BIGFONT = common dso_local global i32 0, align 4
@color_red = common dso_local global i32 0, align 4
@color_white = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@selectedArena = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"longname\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UI_SPLevelMenu_MenuDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPLevelMenu_MenuDraw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = load i32, i32* @MAX_INFO_VALUE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 17), align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = call i32 (...) @UI_PopMenu()
  %20 = call i32 (...) @UI_SPLevelMenu()
  store i32 1, i32* %11, align 4
  br label %345

21:                                               ; preds = %0
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %23 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %22, i32 32)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %25 = call i32 @Q_CleanStr(i8* %24)
  %26 = load i32, i32* @PLAYER_Y, align 4
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %28 = load i32, i32* @UI_CENTER, align 4
  %29 = load i32, i32* @UI_SMALLFONT, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @color_orange, align 4
  %32 = call i32 @UI_DrawProportionalString(i32 320, i32 %26, i8* %27, i32 %30, i32 %31)
  %33 = trunc i64 %13 to i32
  %34 = call i32 @trap_Cvar_VariableStringBuffer(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %33)
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 0), align 8
  %36 = call i64 @Q_stricmp(i8* %15, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %21
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 0), align 8
  %40 = call i32 @Q_strncpyz(i8* %39, i8* %15, i32 8)
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 0), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 16), align 8
  %43 = call i32 @PlayerIcon(i8* %41, i32 %42, i32 4)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 15, i32 0), align 8
  br label %44

44:                                               ; preds = %38, %21
  %45 = call i32 @Menu_Draw(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 12))
  %46 = load i32, i32* @AWARDS_Y, align 4
  store i32 %46, i32* %4, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %110, %44
  %48 = load i32, i32* %1, align 4
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %113

50:                                               ; preds = %47
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 1), align 8
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %109

58:                                               ; preds = %50
  %59 = load i32, i32* %2, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sdiv i32 %64, 2
  %66 = mul nsw i32 %65, 64
  %67 = sub nsw i32 224, %66
  store i32 %67, i32* %3, align 4
  br label %73

68:                                               ; preds = %58
  %69 = load i32, i32* %2, align 4
  %70 = sdiv i32 %69, 2
  %71 = mul nsw i32 %70, 64
  %72 = add nsw i32 368, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %110

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 1000000
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %84 = load i32, i32* %6, align 4
  %85 = sdiv i32 %84, 1000000
  %86 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %83, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %100

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %88, 1000
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %92 = load i32, i32* %6, align 4
  %93 = sdiv i32 %92, 1000
  %94 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %91, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %99

95:                                               ; preds = %87
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %96, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %3, align 4
  %102 = add nsw i32 %101, 24
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 48
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %106 = load i32, i32* @UI_CENTER, align 4
  %107 = load i32, i32* @color_yellow, align 4
  %108 = call i32 @UI_DrawString(i32 %102, i32 %104, i8* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %50
  br label %110

110:                                              ; preds = %109, %78
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %1, align 4
  br label %47

113:                                              ; preds = %47
  %114 = load i64, i64* @selectedArenaSet, align 8
  %115 = add nsw i64 %114, 1
  %116 = call i8* @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @UI_LEFT, align 4
  %118 = load i32, i32* @UI_SMALLFONT, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @color_orange, align 4
  %121 = call i32 @UI_DrawProportionalString(i32 18, i32 38, i8* %116, i32 %119, i32 %120)
  store i32 0, i32* %1, align 4
  br label %122

122:                                              ; preds = %146, %113
  %123 = load i32, i32* %1, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 2), align 8
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %149

126:                                              ; preds = %122
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 11), align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %3, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 11), align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 96
  %144 = load i32, i32* @color_black, align 4
  %145 = call i32 @UI_FillRect(i32 %141, i32 %143, i32 128, i32 18, i32 %144)
  br label %146

146:                                              ; preds = %126
  %147 = load i32, i32* %1, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %1, align 4
  br label %122

149:                                              ; preds = %122
  %150 = load i64, i64* @selectedArenaSet, align 8
  %151 = load i64, i64* @currentSet, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* @UI_CENTER, align 4
  %155 = load i32, i32* @UI_BIGFONT, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @color_red, align 4
  %158 = call i32 @UI_DrawProportionalString(i32 320, i32 216, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %156, i32 %157)
  store i32 1, i32* %11, align 4
  br label %345

159:                                              ; preds = %149
  %160 = load i32, i32* @color_white, align 4
  %161 = load double*, double** %5, align 8
  %162 = call i32 @Vector4Copy(i32 %160, double* %161)
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @uis, i32 0, i32 0), align 4
  %164 = load i32, i32* @PULSE_DIVISOR, align 4
  %165 = sdiv i32 %163, %164
  %166 = call double @sin(i32 %165)
  %167 = fmul double 5.000000e-01, %166
  %168 = fadd double 5.000000e-01, %167
  %169 = load double*, double** %5, align 8
  %170 = getelementptr inbounds double, double* %169, i64 3
  store double %168, double* %170, align 8
  store i32 0, i32* %1, align 4
  br label %171

171:                                              ; preds = %265, %159
  %172 = load i32, i32* %1, align 4
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 2), align 8
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %268

175:                                              ; preds = %171
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 11), align 8
  %177 = load i32, i32* %1, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %3, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 11), align 8
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* %3, align 4
  %191 = add nsw i32 %190, 64
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 96
  %194 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 3), align 8
  %195 = load i32, i32* %1, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* @UI_CENTER, align 4
  %200 = load i32, i32* @UI_SMALLFONT, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @color_orange, align 4
  %203 = call i32 @UI_DrawString(i32 %191, i32 %193, i8* %198, i32 %201, i32 %202)
  %204 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 4), align 8
  %205 = load i32, i32* %1, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %224

210:                                              ; preds = %175
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* %4, align 4
  %213 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 14), align 8
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 5), align 8
  %215 = load i32, i32* %1, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %213, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @UI_DrawHandlePic(i32 %211, i32 %212, i32 128, i32 96, i64 %222)
  br label %224

224:                                              ; preds = %210, %175
  %225 = load i32, i32* %1, align 4
  %226 = load i32, i32* @selectedArena, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %246

228:                                              ; preds = %224
  %229 = call %struct.TYPE_10__* @Menu_ItemAtCursor(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 12))
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 11), align 8
  %231 = load i32, i32* %1, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i64 %232
  %234 = icmp eq %struct.TYPE_10__* %229, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %228
  %236 = load double*, double** %5, align 8
  %237 = call i32 @trap_R_SetColor(double* %236)
  br label %238

238:                                              ; preds = %235, %228
  %239 = load i32, i32* %3, align 4
  %240 = sub nsw i32 %239, 1
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %241, 1
  %243 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 13), align 8
  %244 = call i32 @UI_DrawHandlePic(i32 %240, i32 %242, i32 130, i32 116, i64 %243)
  %245 = call i32 @trap_R_SetColor(double* null)
  br label %264

246:                                              ; preds = %224
  %247 = call %struct.TYPE_10__* @Menu_ItemAtCursor(i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 12))
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 11), align 8
  %249 = load i32, i32* %1, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i64 %250
  %252 = icmp eq %struct.TYPE_10__* %247, %251
  br i1 %252, label %253, label %263

253:                                              ; preds = %246
  %254 = load double*, double** %5, align 8
  %255 = call i32 @trap_R_SetColor(double* %254)
  %256 = load i32, i32* %3, align 4
  %257 = sub nsw i32 %256, 31
  %258 = load i32, i32* %4, align 4
  %259 = sub nsw i32 %258, 30
  %260 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 10), align 8
  %261 = call i32 @UI_DrawHandlePic(i32 %257, i32 %259, i32 256, i32 229, i64 %260)
  %262 = call i32 @trap_R_SetColor(double* null)
  br label %263

263:                                              ; preds = %253, %246
  br label %264

264:                                              ; preds = %263, %238
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %1, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %1, align 4
  br label %171

268:                                              ; preds = %171
  store i32 192, i32* %4, align 4
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 9), align 8
  %270 = call i8* @Info_ValueForKey(i32 %269, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %271 = call i32 @Q_strncpyz(i8* %15, i8* %270, i32 20)
  %272 = call i32 @Q_strupr(i8* %15)
  %273 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 9), align 8
  %275 = call i8* @Info_ValueForKey(i32 %274, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %276 = call i32 (i8*, i32, i8*, ...) @Com_sprintf(i8* %273, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %15, i8* %275)
  %277 = load i32, i32* %4, align 4
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %279 = load i32, i32* @UI_CENTER, align 4
  %280 = load i32, i32* @UI_SMALLFONT, align 4
  %281 = or i32 %279, %280
  %282 = load i32, i32* @color_orange, align 4
  %283 = call i32 @UI_DrawProportionalString(i32 320, i32 %277, i8* %278, i32 %281, i32 %282)
  %284 = load i32, i32* %4, align 4
  %285 = add nsw i32 %284, 24
  store i32 %285, i32* %4, align 4
  %286 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 6), align 8
  %287 = sub nsw i32 7, %286
  %288 = mul nsw i32 %287, 90
  %289 = sdiv i32 %288, 2
  store i32 %289, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %290

290:                                              ; preds = %341, %268
  %291 = load i32, i32* %1, align 4
  %292 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 6), align 8
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %344

294:                                              ; preds = %290
  %295 = load i32, i32* %7, align 4
  %296 = add nsw i32 18, %295
  %297 = load i32, i32* %1, align 4
  %298 = mul nsw i32 90, %297
  %299 = add nsw i32 %296, %298
  store i32 %299, i32* %3, align 4
  %300 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 8), align 8
  %301 = load i32, i32* %1, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %294
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* %4, align 4
  %309 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 8), align 8
  %310 = load i32, i32* %1, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @UI_DrawHandlePic(i32 %307, i32 %308, i32 64, i32 64, i64 %313)
  br label %327

315:                                              ; preds = %294
  %316 = load i32, i32* %3, align 4
  %317 = load i32, i32* %4, align 4
  %318 = load i32, i32* @color_black, align 4
  %319 = call i32 @UI_FillRect(i32 %316, i32 %317, i32 64, i32 64, i32 %318)
  %320 = load i32, i32* %3, align 4
  %321 = add nsw i32 %320, 22
  %322 = load i32, i32* %4, align 4
  %323 = add nsw i32 %322, 18
  %324 = load i32, i32* @UI_BIGFONT, align 4
  %325 = load i32, i32* @color_orange, align 4
  %326 = call i32 @UI_DrawProportionalString(i32 %321, i32 %323, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %324, i32 %325)
  br label %327

327:                                              ; preds = %315, %306
  %328 = load i32, i32* %3, align 4
  %329 = load i32, i32* %4, align 4
  %330 = add nsw i32 %329, 64
  %331 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @levelMenuInfo, i32 0, i32 7), align 8
  %332 = load i32, i32* %1, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8*, i8** %331, i64 %333
  %335 = load i8*, i8** %334, align 8
  %336 = load i32, i32* @UI_SMALLFONT, align 4
  %337 = load i32, i32* @UI_LEFT, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @color_orange, align 4
  %340 = call i32 @UI_DrawString(i32 %328, i32 %330, i8* %335, i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %327
  %342 = load i32, i32* %1, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %1, align 4
  br label %290

344:                                              ; preds = %290
  store i32 0, i32* %11, align 4
  br label %345

345:                                              ; preds = %344, %153, %18
  %346 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %346)
  %347 = load i32, i32* %11, align 4
  switch i32 %347, label %349 [
    i32 0, label %348
    i32 1, label %348
  ]

348:                                              ; preds = %345, %345
  ret void

349:                                              ; preds = %345
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UI_PopMenu(...) #2

declare dso_local i32 @UI_SPLevelMenu(...) #2

declare dso_local i32 @trap_Cvar_VariableStringBuffer(i8*, i8*, i32) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i8*, i32, i32) #2

declare dso_local i64 @Q_stricmp(i8*, i8*) #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #2

declare dso_local i32 @PlayerIcon(i8*, i32, i32) #2

declare dso_local i32 @Menu_Draw(i32*) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @UI_DrawString(i32, i32, i8*, i32, i32) #2

declare dso_local i8* @va(i8*, i64) #2

declare dso_local i32 @UI_FillRect(i32, i32, i32, i32, i32) #2

declare dso_local i32 @Vector4Copy(i32, double*) #2

declare dso_local double @sin(i32) #2

declare dso_local i32 @UI_DrawHandlePic(i32, i32, i32, i32, i64) #2

declare dso_local %struct.TYPE_10__* @Menu_ItemAtCursor(i32*) #2

declare dso_local i32 @trap_R_SetColor(double*) #2

declare dso_local i8* @Info_ValueForKey(i32, i8*) #2

declare dso_local i32 @Q_strupr(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
