; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_gram.c_yylex.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/lburg/extr_gram.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@code = common dso_local global i64 0, align 8
@bp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c" \09\0C\00", align 1
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CODE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@ppercent = common dso_local global i32 0, align 4
@PPERCENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@TERMINAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"missing \22 in assembler template\0A\00", align 1
@TEMPLATE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"integer greater than %d\0A\00", align 1
@INT = common dso_local global i32 0, align 4
@ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"invalid character `%c'\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid character `\\%03o'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = load i64, i64* @code, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %0
  %11 = load i8*, i8** @bp, align 8
  %12 = call i32 @strspn(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** @bp, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** @bp, align 8
  %16 = load i8*, i8** @bp, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 10)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i8*, i8** @bp, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 10)
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %20, %10
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** @bp, align 8
  %27 = icmp ugt i8* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 -1
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %28, %24
  %35 = phi i1 [ false, %24 ], [ %33, %28 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 -1
  store i8* %38, i8** %3, align 8
  br label %24

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** @bp, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = add nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @alloc(i32 %46)
  %48 = bitcast i8* %47 to i64*
  store i64* %48, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %50 = load i8*, i8** @bp, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** @bp, align 8
  %53 = ptrtoint i8* %51 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @strncpy(i64* %49, i8* %50, i32 %56)
  %58 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i8*, i8** @bp, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  store i64 0, i64* %64, align 8
  %65 = load i8*, i8** %3, align 8
  store i8* %65, i8** @bp, align 8
  %66 = load i64, i64* @code, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* @code, align 8
  %68 = load i32, i32* @CODE, align 4
  store i32 %68, i32* %1, align 4
  br label %308

69:                                               ; preds = %0
  br label %70

70:                                               ; preds = %306, %76, %69
  %71 = call i32 (...) @get()
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* @EOF, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %307

74:                                               ; preds = %70
  %75 = load i32, i32* %2, align 4
  switch i32 %75, label %79 [
    i32 32, label %76
    i32 12, label %76
    i32 9, label %76
    i32 10, label %77
    i32 40, label %77
    i32 41, label %77
    i32 44, label %77
    i32 58, label %77
    i32 61, label %77
  ]

76:                                               ; preds = %74, %74, %74
  br label %70

77:                                               ; preds = %74, %74, %74, %74, %74, %74
  %78 = load i32, i32* %2, align 4
  store i32 %78, i32* %1, align 4
  br label %308

79:                                               ; preds = %74
  %80 = load i32, i32* %2, align 4
  %81 = icmp eq i32 %80, 37
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i8*, i8** @bp, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 37
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i8*, i8** @bp, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** @bp, align 8
  %90 = load i32, i32* @ppercent, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* @ppercent, align 4
  %92 = icmp ne i32 %90, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @PPERCENT, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = phi i32 [ 0, %93 ], [ %95, %94 ]
  store i32 %97, i32* %1, align 4
  br label %308

98:                                               ; preds = %82, %79
  %99 = load i32, i32* %2, align 4
  %100 = icmp eq i32 %99, 37
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load i8*, i8** @bp, align 8
  %103 = call i64 @strncmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %101
  %106 = load i8*, i8** @bp, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  %108 = load i8, i8* %107, align 1
  %109 = call i64 @isspace(i8 signext %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i8*, i8** @bp, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 4
  store i8* %113, i8** @bp, align 8
  %114 = load i32, i32* @TERMINAL, align 4
  store i32 %114, i32* %1, align 4
  br label %308

115:                                              ; preds = %105, %101, %98
  %116 = load i32, i32* %2, align 4
  %117 = icmp eq i32 %116, 37
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load i8*, i8** @bp, align 8
  %120 = call i64 @strncmp(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i8*, i8** @bp, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 5
  %125 = load i8, i8* %124, align 1
  %126 = call i64 @isspace(i8 signext %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i8*, i8** @bp, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 5
  store i8* %130, i8** @bp, align 8
  %131 = load i32, i32* @START, align 4
  store i32 %131, i32* %1, align 4
  br label %308

132:                                              ; preds = %122, %118, %115
  %133 = load i32, i32* %2, align 4
  %134 = icmp eq i32 %133, 34
  br i1 %134, label %135, label %192

135:                                              ; preds = %132
  %136 = load i8*, i8** @bp, align 8
  %137 = call i8* @strchr(i8* %136, i8 signext 34)
  store i8* %137, i8** %4, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = call i32 (i8*, ...) @yyerror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i8*, i8** @bp, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 10)
  store i8* %143, i8** %4, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i8*, i8** @bp, align 8
  %148 = call i8* @strchr(i8* %147, i8 signext 0)
  store i8* %148, i8** %4, align 8
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %135
  %151 = load i8*, i8** %4, align 8
  %152 = call i32 @assert(i8* %151)
  %153 = load i8*, i8** %4, align 8
  %154 = load i8*, i8** @bp, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = add nsw i64 %157, 1
  %159 = trunc i64 %158 to i32
  %160 = call i8* @alloc(i32 %159)
  %161 = bitcast i8* %160 to i64*
  store i64* %161, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %162 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %163 = load i8*, i8** @bp, align 8
  %164 = load i8*, i8** %4, align 8
  %165 = load i8*, i8** @bp, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @strncpy(i64* %162, i8* %163, i32 %169)
  %171 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %172 = load i8*, i8** %4, align 8
  %173 = load i8*, i8** @bp, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = getelementptr inbounds i64, i64* %171, i64 %176
  store i64 0, i64* %177, align 8
  %178 = load i8*, i8** %4, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 34
  br i1 %181, label %182, label %185

182:                                              ; preds = %150
  %183 = load i8*, i8** %4, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  br label %187

185:                                              ; preds = %150
  %186 = load i8*, i8** %4, align 8
  br label %187

187:                                              ; preds = %185, %182
  %188 = phi i8* [ %184, %182 ], [ %186, %185 ]
  store i8* %188, i8** @bp, align 8
  %189 = load i64, i64* @code, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* @code, align 8
  %191 = load i32, i32* @TEMPLATE, align 4
  store i32 %191, i32* %1, align 4
  br label %308

192:                                              ; preds = %132
  %193 = load i32, i32* %2, align 4
  %194 = trunc i32 %193 to i8
  %195 = call i64 @isdigit(i8 signext %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %233

197:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %226, %197
  %199 = load i32, i32* %2, align 4
  %200 = sub nsw i32 %199, 48
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @INT_MAX, align 4
  %203 = load i32, i32* %6, align 4
  %204 = sub nsw i32 %202, %203
  %205 = sdiv i32 %204, 10
  %206 = icmp sgt i32 %201, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %198
  %208 = load i32, i32* @INT_MAX, align 4
  %209 = call i32 (i8*, ...) @yyerror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %208)
  br label %215

210:                                              ; preds = %198
  %211 = load i32, i32* %5, align 4
  %212 = mul nsw i32 10, %211
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %210, %207
  %216 = call i32 (...) @get()
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %215
  %218 = load i32, i32* %2, align 4
  %219 = load i32, i32* @EOF, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i32, i32* %2, align 4
  %223 = trunc i32 %222 to i8
  %224 = call i64 @isdigit(i8 signext %223)
  %225 = icmp ne i64 %224, 0
  br label %226

226:                                              ; preds = %221, %217
  %227 = phi i1 [ false, %217 ], [ %225, %221 ]
  br i1 %227, label %198, label %228

228:                                              ; preds = %226
  %229 = load i8*, i8** @bp, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 -1
  store i8* %230, i8** @bp, align 8
  %231 = load i32, i32* %5, align 4
  store i32 %231, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %232 = load i32, i32* @INT, align 4
  store i32 %232, i32* %1, align 4
  br label %308

233:                                              ; preds = %192
  %234 = load i32, i32* %2, align 4
  %235 = trunc i32 %234 to i8
  %236 = call i64 @isalpha(i8 signext %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %288

238:                                              ; preds = %233
  %239 = load i8*, i8** @bp, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 -1
  store i8* %240, i8** %7, align 8
  br label %241

241:                                              ; preds = %258, %238
  %242 = load i8*, i8** @bp, align 8
  %243 = load i8, i8* %242, align 1
  %244 = call i64 @isalpha(i8 signext %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %256, label %246

246:                                              ; preds = %241
  %247 = load i8*, i8** @bp, align 8
  %248 = load i8, i8* %247, align 1
  %249 = call i64 @isdigit(i8 signext %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load i8*, i8** @bp, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 95
  br label %256

256:                                              ; preds = %251, %246, %241
  %257 = phi i1 [ true, %246 ], [ true, %241 ], [ %255, %251 ]
  br i1 %257, label %258, label %261

258:                                              ; preds = %256
  %259 = load i8*, i8** @bp, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** @bp, align 8
  br label %241

261:                                              ; preds = %256
  %262 = load i8*, i8** @bp, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = add nsw i64 %266, 1
  %268 = trunc i64 %267 to i32
  %269 = call i8* @alloc(i32 %268)
  %270 = bitcast i8* %269 to i64*
  store i64* %270, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %271 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %272 = load i8*, i8** %7, align 8
  %273 = load i8*, i8** @bp, align 8
  %274 = load i8*, i8** %7, align 8
  %275 = ptrtoint i8* %273 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  %278 = trunc i64 %277 to i32
  %279 = call i32 @strncpy(i64* %271, i8* %272, i32 %278)
  %280 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 1), align 8
  %281 = load i8*, i8** @bp, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = ptrtoint i8* %281 to i64
  %284 = ptrtoint i8* %282 to i64
  %285 = sub i64 %283, %284
  %286 = getelementptr inbounds i64, i64* %280, i64 %285
  store i64 0, i64* %286, align 8
  %287 = load i32, i32* @ID, align 4
  store i32 %287, i32* %1, align 4
  br label %308

288:                                              ; preds = %233
  %289 = load i32, i32* %2, align 4
  %290 = call i64 @isprint(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %288
  %293 = load i32, i32* %2, align 4
  %294 = call i32 (i8*, ...) @yyerror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %293)
  br label %300

295:                                              ; preds = %288
  %296 = load i32, i32* %2, align 4
  %297 = trunc i32 %296 to i8
  %298 = zext i8 %297 to i32
  %299 = call i32 (i8*, ...) @yyerror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %295, %292
  br label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br label %70

307:                                              ; preds = %70
  store i32 0, i32* %1, align 4
  br label %308

308:                                              ; preds = %307, %261, %228, %187, %128, %111, %96, %77, %39
  %309 = load i32, i32* %1, align 4
  ret i32 %309
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @alloc(i32) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

declare dso_local i32 @get(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @yyerror(i8*, ...) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
