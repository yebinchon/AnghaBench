; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_VerifyPaks_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/server/extr_sv_client.c_SV_VerifyPaks_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32 }

@qtrue = common dso_local global i8* null, align 8
@sv_pure = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"vm/cgame.qvm\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vm/ui.qvm\00", align 1
@qfalse = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"ignoring outdated cp command from client %s\0A\00", align 1
@CS_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Unpure client detected. Invalid .PK3 files referenced!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @SV_VerifyPaks_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_VerifyPaks_f(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i32], align 16
  %11 = alloca [1024 x i32], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load i8*, i8** @qtrue, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_pure, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %285

21:                                               ; preds = %1
  %22 = load i8*, i8** @qtrue, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %24 = call i32 @FS_FileIsInPAK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %3)
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = call i32 @FS_FileIsInPAK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = call i32 (...) @Cmd_Argc()
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = call i8* @Cmd_Argv(i32 %35)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %14, align 4
  br label %53

42:                                               ; preds = %33
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @atoi(i8* %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sv, i32 0, i32 0), align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %285

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %263

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 6
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @qfalse, align 4
  store i32 %61, i32* %14, align 4
  br label %263

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = call i8* @Cmd_Argv(i32 %63)
  store i8* %65, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i8*, i8** %13, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 64
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @atoi(i8* %74)
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %68, %62
  %79 = load i32, i32* @qfalse, align 4
  store i32 %79, i32* %14, align 4
  br label %263

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = call i8* @Cmd_Argv(i32 %81)
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %87 = load i8*, i8** %13, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @atoi(i8* %92)
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %86, %80
  %97 = load i32, i32* @qfalse, align 4
  store i32 %97, i32* %14, align 4
  br label %263

98:                                               ; preds = %91
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  %101 = call i8* @Cmd_Argv(i32 %99)
  store i8* %101, i8** %13, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 64
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @qfalse, align 4
  store i32 %107, i32* %14, align 4
  br label %263

108:                                              ; preds = %98
  store i32 0, i32* %7, align 4
  br label %109

109:                                              ; preds = %121, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  %116 = call i8* @Cmd_Argv(i32 %114)
  %117 = call i32 @atoi(i8* %116)
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %119
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %109

124:                                              ; preds = %109
  %125 = load i32, i32* %7, align 4
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %163, %124
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %166

131:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %154, %131
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %154

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %145, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i32, i32* @qfalse, align 4
  store i32 %152, i32* %14, align 4
  br label %157

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %140
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %132

157:                                              ; preds = %151, %132
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* @qfalse, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %166

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %127

166:                                              ; preds = %161, %127
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @qfalse, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %263

171:                                              ; preds = %166
  %172 = call i8* (...) @FS_LoadedPakPureChecksums()
  store i8* %172, i8** %12, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = call i32 @Cmd_TokenizeString(i8* %173)
  %175 = call i32 (...) @Cmd_Argc()
  store i32 %175, i32* %6, align 4
  %176 = load i32, i32* %6, align 4
  %177 = icmp sgt i32 %176, 1024
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  store i32 1024, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %171
  store i32 0, i32* %7, align 4
  br label %180

180:                                              ; preds = %191, %179
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %180
  %185 = load i32, i32* %7, align 4
  %186 = call i8* @Cmd_Argv(i32 %185)
  %187 = call i32 @atoi(i8* %186)
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 %189
  store i32 %187, i32* %190, align 4
  br label %191

191:                                              ; preds = %184
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %180

194:                                              ; preds = %180
  store i32 0, i32* %7, align 4
  br label %195

195:                                              ; preds = %226, %194
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %195
  store i32 0, i32* %8, align 4
  br label %200

200:                                              ; preds = %216, %199
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %219

204:                                              ; preds = %200
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %208, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %219

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %200

219:                                              ; preds = %214, %200
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp sge i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i32, i32* @qfalse, align 4
  store i32 %224, i32* %14, align 4
  br label %229

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %7, align 4
  br label %195

229:                                              ; preds = %223, %195
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* @qfalse, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  br label %263

234:                                              ; preds = %229
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sv, i32 0, i32 1), align 4
  store i32 %235, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %247, %234
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %3, align 4
  %246 = xor i32 %245, %244
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  br label %236

250:                                              ; preds = %236
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %3, align 4
  %253 = xor i32 %252, %251
  store i32 %253, i32* %3, align 4
  %254 = load i32, i32* %3, align 4
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %254, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %250
  %261 = load i32, i32* @qfalse, align 4
  store i32 %261, i32* %14, align 4
  br label %263

262:                                              ; preds = %250
  br label %263

263:                                              ; preds = %262, %260, %233, %170, %106, %96, %78, %60, %54
  %264 = load i8*, i8** @qtrue, align 8
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  store i8* %264, i8** %266, align 8
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %263
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  store i32 1, i32* %271, align 8
  br label %284

272:                                              ; preds = %263
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 0
  store i32 0, i32* %274, align 8
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  store i32 -1, i32* %276, align 4
  %277 = load i32, i32* @CS_ACTIVE, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %281 = call i32 @SV_SendClientSnapshot(%struct.TYPE_7__* %280)
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %283 = call i32 @SV_DropClient(%struct.TYPE_7__* %282, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %284

284:                                              ; preds = %272, %269
  br label %285

285:                                              ; preds = %47, %284, %1
  ret void
}

declare dso_local i32 @FS_FileIsInPAK(i8*, i32*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i8* @FS_LoadedPakPureChecksums(...) #1

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i32 @SV_SendClientSnapshot(%struct.TYPE_7__*) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
