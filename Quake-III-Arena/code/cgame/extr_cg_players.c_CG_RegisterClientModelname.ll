; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_RegisterClientModelname.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_players.c_CG_RegisterClientModelname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8*, i8*, i8*, i8* }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"models/players/%s/lower.md3\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/lower.md3\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to load model file %s\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"models/players/%s/upper.md3\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"models/players/characters/%s/upper.md3\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"models/players/heads/%s/%s.md3\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"models/players/%s/head.md3\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to load skin file: %s : %s : %s, %s : %s\0A\00", align 1
@TEAM_BLUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@DEFAULT_BLUETEAM_NAME = common dso_local global i8* null, align 8
@DEFAULT_REDTEAM_NAME = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to load skin file: %s : %s, %s : %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"models/players/%s/animation.cfg\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"models/players/characters/%s/animation.cfg\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to load animation file %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"skin\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*)* @CG_RegisterClientModelname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CG_RegisterClientModelname(%struct.TYPE_6__* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* @MAX_QPATH, align 4
  %20 = mul nsw i32 %19, 2
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @MAX_QPATH, align 4
  %25 = mul nsw i32 %24, 2
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %17, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %16, align 8
  br label %37

35:                                               ; preds = %6
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %16, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = trunc i64 %21 to i32
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i8* @trap_R_RegisterModel(i8* %23)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %63, label %48

48:                                               ; preds = %37
  %49 = trunc i64 %21 to i32
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = call i8* @trap_R_RegisterModel(i8* %23)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %37
  %64 = trunc i64 %21 to i32
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = call i8* @trap_R_RegisterModel(i8* %23)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %63
  %75 = trunc i64 %21 to i32
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = call i8* @trap_R_RegisterModel(i8* %23)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %63
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 42
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = trunc i64 %21 to i32
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %98, i8* %100)
  br label %106

102:                                              ; preds = %89
  %103 = trunc i64 %21 to i32
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %95
  %107 = call i8* @trap_R_RegisterModel(i8* %23)
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %128, label %114

114:                                              ; preds = %106
  %115 = load i8*, i8** %16, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 42
  br i1 %119, label %120, label %128

120:                                              ; preds = %114
  %121 = trunc i64 %21 to i32
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %122, i8* %123)
  %125 = call i8* @trap_R_RegisterModel(i8* %23)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %120, %114, %106
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %135 = load i32, i32* @qfalse, align 4
  store i32 %135, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

136:                                              ; preds = %128
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @CG_RegisterClientSkin(%struct.TYPE_6__* %137, i8* %138, i8* %139, i8* %140, i8* %141, i8* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %197, label %145

145:                                              ; preds = %136
  %146 = load i8*, i8** %13, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %189

148:                                              ; preds = %145
  %149 = load i8*, i8** %13, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %189

153:                                              ; preds = %148
  %154 = load i8*, i8** %13, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %16, align 8
  %158 = load i8*, i8** %12, align 8
  %159 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %154, i8* %155, i8* %156, i8* %157, i8* %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TEAM_BLUE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %153
  %166 = trunc i64 %26 to i32
  %167 = load i8*, i8** @DEFAULT_BLUETEAM_NAME, align 8
  %168 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %27, i32 %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %167)
  br label %173

169:                                              ; preds = %153
  %170 = trunc i64 %26 to i32
  %171 = load i8*, i8** @DEFAULT_REDTEAM_NAME, align 8
  %172 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %27, i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %169, %165
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %10, align 8
  %177 = load i8*, i8** %16, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = call i32 @CG_RegisterClientSkin(%struct.TYPE_6__* %174, i8* %27, i8* %175, i8* %176, i8* %177, i8* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %173
  %182 = load i8*, i8** %9, align 8
  %183 = load i8*, i8** %10, align 8
  %184 = load i8*, i8** %16, align 8
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %27, i8* %182, i8* %183, i8* %184, i8* %185)
  %187 = load i32, i32* @qfalse, align 4
  store i32 %187, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

188:                                              ; preds = %173
  br label %196

189:                                              ; preds = %148, %145
  %190 = load i8*, i8** %9, align 8
  %191 = load i8*, i8** %10, align 8
  %192 = load i8*, i8** %16, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* %190, i8* %191, i8* %192, i8* %193)
  %195 = load i32, i32* @qfalse, align 4
  store i32 %195, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

196:                                              ; preds = %188
  br label %197

197:                                              ; preds = %196, %136
  %198 = trunc i64 %21 to i32
  %199 = load i8*, i8** %9, align 8
  %200 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %199)
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %202 = call i32 @CG_ParseAnimationFile(i8* %23, %struct.TYPE_6__* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %197
  %205 = trunc i64 %21 to i32
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 (i8*, i32, i8*, i8*, ...) @Com_sprintf(i8* %23, i32 %205, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %206)
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = call i32 @CG_ParseAnimationFile(i8* %23, %struct.TYPE_6__* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %204
  %212 = call i32 (i8*, i8*, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %23)
  %213 = load i32, i32* @qfalse, align 4
  store i32 %213, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %214, %197
  %216 = trunc i64 %21 to i32
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %218 = load i8*, i8** %13, align 8
  %219 = load i8*, i8** %16, align 8
  %220 = load i8*, i8** %12, align 8
  %221 = call i64 @CG_FindClientHeadFile(i8* %23, i32 %216, %struct.TYPE_6__* %217, i8* %218, i8* %219, i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %215
  %224 = call i8* @trap_R_RegisterShaderNoMip(i8* %23)
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  store i8* %224, i8** %226, align 8
  br label %240

227:                                              ; preds = %215
  %228 = trunc i64 %21 to i32
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = load i8*, i8** %16, align 8
  %232 = load i8*, i8** %12, align 8
  %233 = call i64 @CG_FindClientHeadFile(i8* %23, i32 %228, %struct.TYPE_6__* %229, i8* %230, i8* %231, i8* %232, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %227
  %236 = call i8* @trap_R_RegisterShaderNoMip(i8* %23)
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %235, %227
  br label %240

240:                                              ; preds = %239, %223
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  %246 = load i32, i32* @qfalse, align 4
  store i32 %246, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @qtrue, align 4
  store i32 %248, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %249

249:                                              ; preds = %247, %245, %211, %189, %181, %133, %85, %59
  %250 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @trap_R_RegisterModel(i8*) #2

declare dso_local i32 @Com_Printf(i8*, i8*, ...) #2

declare dso_local i32 @CG_RegisterClientSkin(%struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @CG_ParseAnimationFile(i8*, %struct.TYPE_6__*) #2

declare dso_local i64 @CG_FindClientHeadFile(i8*, i32, %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i8* @trap_R_RegisterShaderNoMip(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
