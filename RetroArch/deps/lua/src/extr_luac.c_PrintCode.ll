; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_luac.c_PrintCode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_luac.c_PrintCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i64* }

@.str = private unnamed_addr constant [5 x i8] c"\09%d\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[%d]\09\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[-]\09\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%-9s\09\00", align 1
@luaP_opnames = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OpArgN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@OpArgK = common dso_local global i32 0, align 4
@OpArgU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09; \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\09; %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\09; to %d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\09; %p\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\09; %d\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @PrintCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintCode(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %3, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %267, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %270

25:                                               ; preds = %21
  %26 = load i64*, i64** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @GET_OPCODE(i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @GETARG_A(i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @GETARG_B(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @GETARG_C(i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @GETARG_Ax(i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @GETARG_Bx(i64 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @GETARG_sBx(i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @getfuncline(%struct.TYPE_5__* %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %25
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %58

56:                                               ; preds = %25
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i8**, i8*** @luaP_opnames, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @getOpMode(i64 %64)
  switch i32 %65, label %133 [
    i32 131, label %66
    i32 130, label %105
    i32 129, label %125
    i32 128, label %129
  ]

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @getBMode(i64 %69)
  %71 = load i32, i32* @OpArgN, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @ISK(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @INDEXK(i32 %78)
  %80 = call i32 @MYK(i32 %79)
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = phi i32 [ %80, %77 ], [ %82, %81 ]
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %66
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @getCMode(i64 %87)
  %89 = load i32, i32* @OpArgN, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ISK(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @INDEXK(i32 %96)
  %98 = call i32 @MYK(i32 %97)
  br label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %95
  %102 = phi i32 [ %98, %95 ], [ %100, %99 ]
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %86
  br label %133

105:                                              ; preds = %58
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @getBMode(i64 %108)
  %110 = load i32, i32* @OpArgK, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @MYK(i32 %113)
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %112, %105
  %117 = load i64, i64* %7, align 8
  %118 = call i32 @getBMode(i64 %117)
  %119 = load i32, i32* @OpArgU, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %12, align 4
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %121, %116
  br label %133

125:                                              ; preds = %58
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %127)
  br label %133

129:                                              ; preds = %58
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @MYK(i32 %130)
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %58, %129, %125, %124, %104
  %134 = load i64, i64* %7, align 8
  switch i64 %134, label %264 [
    i64 145, label %135
    i64 149, label %140
    i64 136, label %140
    i64 150, label %144
    i64 137, label %158
    i64 151, label %182
    i64 140, label %182
    i64 138, label %193
    i64 161, label %193
    i64 133, label %193
    i64 142, label %193
    i64 143, label %193
    i64 141, label %193
    i64 156, label %193
    i64 148, label %193
    i64 160, label %193
    i64 159, label %193
    i64 158, label %193
    i64 135, label %193
    i64 134, label %193
    i64 155, label %193
    i64 144, label %193
    i64 146, label %193
    i64 147, label %227
    i64 153, label %227
    i64 152, label %227
    i64 132, label %227
    i64 157, label %233
    i64 139, label %243
    i64 154, label %259
  ]

135:                                              ; preds = %133
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @PrintConstant(%struct.TYPE_5__* %137, i32 %138)
  br label %265

140:                                              ; preds = %133, %133
  %141 = load i32, i32* %9, align 4
  %142 = call i8* @UPVALNAME(i32 %141)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %142)
  br label %265

144:                                              ; preds = %133
  %145 = load i32, i32* %9, align 4
  %146 = call i8* @UPVALNAME(i32 %145)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %146)
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @ISK(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @INDEXK(i32 %154)
  %156 = call i32 @PrintConstant(%struct.TYPE_5__* %153, i32 %155)
  br label %157

157:                                              ; preds = %151, %144
  br label %265

158:                                              ; preds = %133
  %159 = load i32, i32* %8, align 4
  %160 = call i8* @UPVALNAME(i32 %159)
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %160)
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @ISK(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @INDEXK(i32 %168)
  %170 = call i32 @PrintConstant(%struct.TYPE_5__* %167, i32 %169)
  br label %171

171:                                              ; preds = %165, %158
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @ISK(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @INDEXK(i32 %178)
  %180 = call i32 @PrintConstant(%struct.TYPE_5__* %177, i32 %179)
  br label %181

181:                                              ; preds = %175, %171
  br label %265

182:                                              ; preds = %133, %133
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @ISK(i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call i32 @INDEXK(i32 %189)
  %191 = call i32 @PrintConstant(%struct.TYPE_5__* %188, i32 %190)
  br label %192

192:                                              ; preds = %186, %182
  br label %265

193:                                              ; preds = %133, %133, %133, %133, %133, %133, %133, %133, %133, %133, %133, %133, %133, %133, %133, %133
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @ISK(i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @ISK(i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %226

201:                                              ; preds = %197, %193
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @ISK(i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %201
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @INDEXK(i32 %208)
  %210 = call i32 @PrintConstant(%struct.TYPE_5__* %207, i32 %209)
  br label %213

211:                                              ; preds = %201
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %206
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @ISK(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @INDEXK(i32 %220)
  %222 = call i32 @PrintConstant(%struct.TYPE_5__* %219, i32 %221)
  br label %225

223:                                              ; preds = %213
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %218
  br label %226

226:                                              ; preds = %225, %197
  br label %265

227:                                              ; preds = %133, %133, %133, %133
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %4, align 4
  %230 = add nsw i32 %228, %229
  %231 = add nsw i32 %230, 2
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %231)
  br label %265

233:                                              ; preds = %133
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @VOID(i32 %240)
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %241)
  br label %265

243:                                              ; preds = %133
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load i64*, i64** %3, align 8
  %248 = load i32, i32* %4, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %4, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %247, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = trunc i64 %252 to i32
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %253)
  br label %258

255:                                              ; preds = %243
  %256 = load i32, i32* %10, align 4
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %255, %246
  br label %265

259:                                              ; preds = %133
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @PrintConstant(%struct.TYPE_5__* %261, i32 %262)
  br label %265

264:                                              ; preds = %133
  br label %265

265:                                              ; preds = %264, %259, %258, %233, %227, %226, %192, %181, %157, %140, %135
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %267

267:                                              ; preds = %265
  %268 = load i32, i32* %4, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %4, align 4
  br label %21

270:                                              ; preds = %21
  ret void
}

declare dso_local i64 @GET_OPCODE(i64) #1

declare dso_local i32 @GETARG_A(i64) #1

declare dso_local i32 @GETARG_B(i64) #1

declare dso_local i32 @GETARG_C(i64) #1

declare dso_local i32 @GETARG_Ax(i64) #1

declare dso_local i32 @GETARG_Bx(i64) #1

declare dso_local i32 @GETARG_sBx(i64) #1

declare dso_local i32 @getfuncline(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getOpMode(i64) #1

declare dso_local i32 @getBMode(i64) #1

declare dso_local i32 @ISK(i32) #1

declare dso_local i32 @MYK(i32) #1

declare dso_local i32 @INDEXK(i32) #1

declare dso_local i32 @getCMode(i64) #1

declare dso_local i32 @PrintConstant(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @UPVALNAME(i32) #1

declare dso_local i32 @VOID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
