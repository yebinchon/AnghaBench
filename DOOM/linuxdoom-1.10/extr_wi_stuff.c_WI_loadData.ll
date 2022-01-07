; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_loadData.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_loadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i8** }

@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"INTERPIC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WIMAP%d\00", align 1
@wbs = common dso_local global %struct.TYPE_5__* null, align 8
@retail = common dso_local global i64 0, align 8
@PU_CACHE = common dso_local global i32 0, align 4
@bg = common dso_local global i8* null, align 8
@NUMCMAPS = common dso_local global i32 0, align 4
@PU_STATIC = common dso_local global i32 0, align 4
@lnames = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"CWILV%2.2d\00", align 1
@NUMMAPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"WILV%d%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"WIURH0\00", align 1
@yah = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"WIURH1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"WISPLAT\00", align 1
@splat = common dso_local global i8* null, align 8
@NUMANIMS = common dso_local global i32* null, align 8
@anims = common dso_local global %struct.TYPE_4__** null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"WIA%d%.2d%.2d\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"WIMINUS\00", align 1
@wiminus = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"WINUM%d\00", align 1
@num = common dso_local global i8** null, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"WIPCNT\00", align 1
@percent = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"WIF\00", align 1
@finished = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"WIENTER\00", align 1
@entering = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"WIOSTK\00", align 1
@kills = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"WIOSTS\00", align 1
@secret = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"WISCRT2\00", align 1
@sp_secret = common dso_local global i8* null, align 8
@french = common dso_local global i64 0, align 8
@netgame = common dso_local global i64 0, align 8
@deathmatch = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"WIOBJ\00", align 1
@items = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"WIOSTI\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"WIFRGS\00", align 1
@frags = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"WICOLON\00", align 1
@colon = common dso_local global i8* null, align 8
@.str.20 = private unnamed_addr constant [7 x i8] c"WITIME\00", align 1
@time = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [8 x i8] c"WISUCKS\00", align 1
@sucks = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c"WIPAR\00", align 1
@par = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [8 x i8] c"WIKILRS\00", align 1
@killers = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"WIVCTMS\00", align 1
@victims = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"WIMSTT\00", align 1
@total = common dso_local global i8* null, align 8
@.str.26 = private unnamed_addr constant [8 x i8] c"STFST01\00", align 1
@star = common dso_local global i8* null, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c"STFDEAD0\00", align 1
@bstar = common dso_local global i8* null, align 8
@MAXPLAYERS = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"STPB%d\00", align 1
@p = common dso_local global i8** null, align 8
@.str.29 = private unnamed_addr constant [7 x i8] c"WIBP%d\00", align 1
@bp = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_loadData() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [9 x i8], align 1
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = load i64, i64* @gamemode, align 8
  %6 = load i64, i64* @commercial, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %10 = call i32 @strcpy(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %17

11:                                               ; preds = %0
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i64, i64* @gamemode, align 8
  %19 = load i64, i64* @retail, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %28 = call i32 @strcpy(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29, %17
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %32 = load i32, i32* @PU_CACHE, align 4
  %33 = call i8* @W_CacheLumpName(i8* %31, i32 %32)
  store i8* %33, i8** @bg, align 8
  %34 = load i8*, i8** @bg, align 8
  %35 = call i32 @V_DrawPatch(i32 0, i32 0, i32 1, i8* %34)
  %36 = load i64, i64* @gamemode, align 8
  %37 = load i64, i64* @commercial, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %30
  store i32 32, i32* @NUMCMAPS, align 4
  %40 = load i32, i32* @NUMCMAPS, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @PU_STATIC, align 4
  %45 = call i64 @Z_Malloc(i32 %43, i32 %44, i32 0)
  %46 = inttoptr i64 %45 to i32**
  store i32** %46, i32*** @lnames, align 8
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %63, %39
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @NUMCMAPS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %53 = load i32, i32* %1, align 4
  %54 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %56 = load i32, i32* @PU_STATIC, align 4
  %57 = call i8* @W_CacheLumpName(i8* %55, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load i32**, i32*** @lnames, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %58, i32** %62, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %47

66:                                               ; preds = %47
  br label %192

67:                                               ; preds = %30
  %68 = load i32, i32* @NUMMAPS, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @PU_STATIC, align 4
  %73 = call i64 @Z_Malloc(i32 %71, i32 %72, i32 0)
  %74 = inttoptr i64 %73 to i32**
  store i32** %74, i32*** @lnames, align 8
  store i32 0, i32* %1, align 4
  br label %75

75:                                               ; preds = %94, %67
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @NUMMAPS, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %75
  %80 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %87 = load i32, i32* @PU_STATIC, align 4
  %88 = call i8* @W_CacheLumpName(i8* %86, i32 %87)
  %89 = bitcast i8* %88 to i32*
  %90 = load i32**, i32*** @lnames, align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  store i32* %89, i32** %93, align 8
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %1, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %1, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load i32, i32* @PU_STATIC, align 4
  %99 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  %100 = load i8**, i8*** @yah, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @PU_STATIC, align 4
  %103 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i8**, i8*** @yah, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  store i8* %103, i8** %105, align 8
  %106 = load i32, i32* @PU_STATIC, align 4
  %107 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %106)
  store i8* %107, i8** @splat, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %191

112:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %187, %112
  %114 = load i32, i32* %2, align 4
  %115 = load i32*, i32** @NUMANIMS, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %114, %121
  br i1 %122, label %123, label %190

123:                                              ; preds = %113
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @anims, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %128
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  store %struct.TYPE_4__* %133, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %1, align 4
  br label %134

134:                                              ; preds = %183, %123
  %135 = load i32, i32* %1, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %186

140:                                              ; preds = %134
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 1
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %2, align 4
  %147 = icmp ne i32 %146, 8
  br i1 %147, label %148, label %165

148:                                              ; preds = %145, %140
  %149 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** @wbs, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %2, align 4
  %154 = load i32, i32* %1, align 4
  %155 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %149, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %152, i32 %153, i32 %154)
  %156 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %157 = load i32, i32* @PU_STATIC, align 4
  %158 = call i8* @W_CacheLumpName(i8* %156, i32 %157)
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  store i8* %158, i8** %164, align 8
  br label %182

165:                                              ; preds = %145
  %166 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @anims, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %166, i64 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 4
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  store i8* %175, i8** %181, align 8
  br label %182

182:                                              ; preds = %165, %148
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %1, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %1, align 4
  br label %134

186:                                              ; preds = %134
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %2, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %2, align 4
  br label %113

190:                                              ; preds = %113
  br label %191

191:                                              ; preds = %190, %97
  br label %192

192:                                              ; preds = %191, %66
  %193 = load i32, i32* @PU_STATIC, align 4
  %194 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  store i8* %194, i8** @wiminus, align 8
  store i32 0, i32* %1, align 4
  br label %195

195:                                              ; preds = %209, %192
  %196 = load i32, i32* %1, align 4
  %197 = icmp slt i32 %196, 10
  br i1 %197, label %198, label %212

198:                                              ; preds = %195
  %199 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %200 = load i32, i32* %1, align 4
  %201 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %200)
  %202 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %203 = load i32, i32* @PU_STATIC, align 4
  %204 = call i8* @W_CacheLumpName(i8* %202, i32 %203)
  %205 = load i8**, i8*** @num, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  store i8* %204, i8** %208, align 8
  br label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %1, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %1, align 4
  br label %195

212:                                              ; preds = %195
  %213 = load i32, i32* @PU_STATIC, align 4
  %214 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %213)
  store i8* %214, i8** @percent, align 8
  %215 = load i32, i32* @PU_STATIC, align 4
  %216 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %215)
  store i8* %216, i8** @finished, align 8
  %217 = load i32, i32* @PU_STATIC, align 4
  %218 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %217)
  store i8* %218, i8** @entering, align 8
  %219 = load i32, i32* @PU_STATIC, align 4
  %220 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %219)
  store i8* %220, i8** @kills, align 8
  %221 = load i32, i32* @PU_STATIC, align 4
  %222 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i32 %221)
  store i8* %222, i8** @secret, align 8
  %223 = load i32, i32* @PU_STATIC, align 4
  %224 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %223)
  store i8* %224, i8** @sp_secret, align 8
  %225 = load i64, i64* @french, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %212
  %228 = load i64, i64* @netgame, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, i32* @deathmatch, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %236, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @PU_STATIC, align 4
  %235 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %234)
  store i8* %235, i8** @items, align 8
  br label %239

236:                                              ; preds = %230, %227
  %237 = load i32, i32* @PU_STATIC, align 4
  %238 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %237)
  store i8* %238, i8** @items, align 8
  br label %239

239:                                              ; preds = %236, %233
  br label %243

240:                                              ; preds = %212
  %241 = load i32, i32* @PU_STATIC, align 4
  %242 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 %241)
  store i8* %242, i8** @items, align 8
  br label %243

243:                                              ; preds = %240, %239
  %244 = load i32, i32* @PU_STATIC, align 4
  %245 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %244)
  store i8* %245, i8** @frags, align 8
  %246 = load i32, i32* @PU_STATIC, align 4
  %247 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 %246)
  store i8* %247, i8** @colon, align 8
  %248 = load i32, i32* @PU_STATIC, align 4
  %249 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %248)
  store i8* %249, i8** @time, align 8
  %250 = load i32, i32* @PU_STATIC, align 4
  %251 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %250)
  store i8* %251, i8** @sucks, align 8
  %252 = load i32, i32* @PU_STATIC, align 4
  %253 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 %252)
  store i8* %253, i8** @par, align 8
  %254 = load i32, i32* @PU_STATIC, align 4
  %255 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 %254)
  store i8* %255, i8** @killers, align 8
  %256 = load i32, i32* @PU_STATIC, align 4
  %257 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %256)
  store i8* %257, i8** @victims, align 8
  %258 = load i32, i32* @PU_STATIC, align 4
  %259 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %258)
  store i8* %259, i8** @total, align 8
  %260 = load i32, i32* @PU_STATIC, align 4
  %261 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %260)
  store i8* %261, i8** @star, align 8
  %262 = load i32, i32* @PU_STATIC, align 4
  %263 = call i8* @W_CacheLumpName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %262)
  store i8* %263, i8** @bstar, align 8
  store i32 0, i32* %1, align 4
  br label %264

264:                                              ; preds = %290, %243
  %265 = load i32, i32* %1, align 4
  %266 = load i32, i32* @MAXPLAYERS, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %293

268:                                              ; preds = %264
  %269 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %270 = load i32, i32* %1, align 4
  %271 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %269, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32 %270)
  %272 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %273 = load i32, i32* @PU_STATIC, align 4
  %274 = call i8* @W_CacheLumpName(i8* %272, i32 %273)
  %275 = load i8**, i8*** @p, align 8
  %276 = load i32, i32* %1, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8*, i8** %275, i64 %277
  store i8* %274, i8** %278, align 8
  %279 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %280 = load i32, i32* %1, align 4
  %281 = add nsw i32 %280, 1
  %282 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %279, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %281)
  %283 = getelementptr inbounds [9 x i8], [9 x i8]* %3, i64 0, i64 0
  %284 = load i32, i32* @PU_STATIC, align 4
  %285 = call i8* @W_CacheLumpName(i8* %283, i32 %284)
  %286 = load i8**, i8*** @bp, align 8
  %287 = load i32, i32* %1, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  store i8* %285, i8** %289, align 8
  br label %290

290:                                              ; preds = %268
  %291 = load i32, i32* %1, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %1, align 4
  br label %264

293:                                              ; preds = %264
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i8* @W_CacheLumpName(i8*, i32) #1

declare dso_local i32 @V_DrawPatch(i32, i32, i32, i8*) #1

declare dso_local i64 @Z_Malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
