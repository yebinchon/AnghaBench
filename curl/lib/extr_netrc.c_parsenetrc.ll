; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_netrc.c_parsenetrc.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_netrc.c_parsenetrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NETRC_FILE_MISSING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FOPEN_READTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"machine\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@NETRC_SUCCESS = common dso_local global i32 0, align 4
@NETRC_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**, i32*, i32*, i8*)* @parsenetrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parsenetrc(i8* %0, i8** %1, i8** %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca [4096 x i8], align 16
  %28 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %29 = load i32, i32* @NETRC_FILE_MISSING, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i8**, i8*** %8, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %15, align 8
  %32 = load i8**, i8*** %9, align 8
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %16, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load i8*, i8** %15, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %6
  %42 = phi i1 [ false, %6 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %19, align 4
  store i32 128, i32* %20, align 4
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %23, align 4
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @DEBUGASSERT(i8* %47)
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* @FOPEN_READTEXT, align 4
  %51 = call i32* @fopen(i8* %49, i32 %50)
  store i32* %51, i32** %13, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %275

54:                                               ; preds = %41
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %26, align 4
  store i32 4096, i32* %28, align 4
  br label %56

56:                                               ; preds = %217, %77, %54
  %57 = load i32, i32* %26, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %61 = load i32, i32* %28, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = call i64 @fgets(i8* %60, i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %218

67:                                               ; preds = %65
  %68 = getelementptr inbounds [4096 x i8], [4096 x i8]* %27, i64 0, i64 0
  %69 = call i8* @strtok_r(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %25)
  store i8* %69, i8** %24, align 8
  %70 = load i8*, i8** %24, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i8*, i8** %24, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 35
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %56

78:                                               ; preds = %72, %67
  br label %79

79:                                               ; preds = %215, %78
  %80 = load i8*, i8** %24, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %217

82:                                               ; preds = %79
  %83 = load i8*, i8** %15, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %100

85:                                               ; preds = %82
  %86 = load i8*, i8** %15, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i8*, i8** %16, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8*, i8** %16, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @TRUE, align 4
  store i32 %99, i32* %26, align 4
  br label %217

100:                                              ; preds = %93, %90, %85, %82
  %101 = load i32, i32* %20, align 4
  switch i32 %101, label %215 [
    i32 128, label %102
    i32 130, label %115
    i32 129, label %124
  ]

102:                                              ; preds = %100
  %103 = load i8*, i8** %24, align 8
  %104 = call i32 @strcasecompare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 130, i32* %20, align 4
  br label %114

107:                                              ; preds = %102
  %108 = load i8*, i8** %24, align 8
  %109 = call i32 @strcasecompare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  store i32 129, i32* %20, align 4
  %112 = load i32, i32* @NETRC_SUCCESS, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %107
  br label %114

114:                                              ; preds = %113, %106
  br label %215

115:                                              ; preds = %100
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %24, align 8
  %118 = call i32 @strcasecompare(i8* %116, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  store i32 129, i32* %20, align 4
  %121 = load i32, i32* @NETRC_SUCCESS, align 4
  store i32 %121, i32* %14, align 4
  br label %123

122:                                              ; preds = %115
  store i32 128, i32* %20, align 4
  br label %123

123:                                              ; preds = %122, %120
  br label %215

124:                                              ; preds = %100
  %125 = load i8, i8* %21, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i8*, i8** %15, align 8
  %132 = load i8*, i8** %24, align 8
  %133 = call i32 @strcasecompare(i8* %131, i8* %132)
  store i32 %133, i32* %23, align 4
  br label %159

134:                                              ; preds = %127
  %135 = load i8*, i8** %15, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %24, align 8
  %140 = call i32 @strcmp(i8* %138, i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %137, %134
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i8*, i8** %24, align 8
  %151 = call i8* @strdup(i8* %150)
  store i8* %151, i8** %15, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %149
  %155 = load i32, i32* @NETRC_FAILED, align 4
  store i32 %155, i32* %14, align 4
  br label %219

156:                                              ; preds = %149
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %18, align 4
  br label %158

158:                                              ; preds = %156, %137
  br label %159

159:                                              ; preds = %158, %130
  store i8 0, i8* %21, align 1
  br label %214

160:                                              ; preds = %124
  %161 = load i8, i8* %22, align 1
  %162 = icmp ne i8 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %160
  %164 = load i32, i32* %23, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %17, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %193, label %169

169:                                              ; preds = %166, %163
  %170 = load i8*, i8** %16, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i8*, i8** %16, align 8
  %174 = load i8*, i8** %24, align 8
  %175 = call i32 @strcmp(i8* %173, i8* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %172, %169
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i8*, i8** %16, align 8
  %182 = call i32 @free(i8* %181)
  %183 = load i32, i32* @FALSE, align 4
  store i32 %183, i32* %19, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i8*, i8** %24, align 8
  %186 = call i8* @strdup(i8* %185)
  store i8* %186, i8** %16, align 8
  %187 = load i8*, i8** %16, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* @NETRC_FAILED, align 4
  store i32 %190, i32* %14, align 4
  br label %219

191:                                              ; preds = %184
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %191, %172, %166
  store i8 0, i8* %22, align 1
  br label %213

194:                                              ; preds = %160
  %195 = load i8*, i8** %24, align 8
  %196 = call i32 @strcasecompare(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i8 1, i8* %21, align 1
  br label %212

199:                                              ; preds = %194
  %200 = load i8*, i8** %24, align 8
  %201 = call i32 @strcasecompare(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i8 1, i8* %22, align 1
  br label %211

204:                                              ; preds = %199
  %205 = load i8*, i8** %24, align 8
  %206 = call i32 @strcasecompare(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  store i32 130, i32* %20, align 4
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %23, align 4
  br label %210

210:                                              ; preds = %208, %204
  br label %211

211:                                              ; preds = %210, %203
  br label %212

212:                                              ; preds = %211, %198
  br label %213

213:                                              ; preds = %212, %193
  br label %214

214:                                              ; preds = %213, %159
  br label %215

215:                                              ; preds = %100, %214, %123, %114
  %216 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %25)
  store i8* %216, i8** %24, align 8
  br label %79

217:                                              ; preds = %98, %79
  br label %56

218:                                              ; preds = %65
  br label %219

219:                                              ; preds = %218, %189, %154
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %259, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* @FALSE, align 4
  %224 = load i32*, i32** %10, align 8
  store i32 %223, i32* %224, align 4
  %225 = load i32, i32* @FALSE, align 4
  %226 = load i32*, i32** %11, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* %18, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %222
  %230 = load i8**, i8*** %8, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i8**, i8*** %8, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @free(i8* %235)
  br label %237

237:                                              ; preds = %233, %229
  %238 = load i8*, i8** %15, align 8
  %239 = load i8**, i8*** %8, align 8
  store i8* %238, i8** %239, align 8
  %240 = load i32, i32* @TRUE, align 4
  %241 = load i32*, i32** %10, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %237, %222
  %243 = load i32, i32* %19, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load i8**, i8*** %9, align 8
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i8**, i8*** %9, align 8
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @free(i8* %251)
  br label %253

253:                                              ; preds = %249, %245
  %254 = load i8*, i8** %16, align 8
  %255 = load i8**, i8*** %9, align 8
  store i8* %254, i8** %255, align 8
  %256 = load i32, i32* @TRUE, align 4
  %257 = load i32*, i32** %11, align 8
  store i32 %256, i32* %257, align 4
  br label %258

258:                                              ; preds = %253, %242
  br label %272

259:                                              ; preds = %219
  %260 = load i32, i32* %18, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load i8*, i8** %15, align 8
  %264 = call i32 @free(i8* %263)
  br label %265

265:                                              ; preds = %262, %259
  %266 = load i32, i32* %19, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i8*, i8** %16, align 8
  %270 = call i32 @free(i8* %269)
  br label %271

271:                                              ; preds = %268, %265
  br label %272

272:                                              ; preds = %271, %258
  %273 = load i32*, i32** %13, align 8
  %274 = call i32 @fclose(i32* %273)
  br label %275

275:                                              ; preds = %272, %41
  %276 = load i32, i32* %14, align 4
  ret i32 %276
}

declare dso_local i32 @DEBUGASSERT(i8*) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
