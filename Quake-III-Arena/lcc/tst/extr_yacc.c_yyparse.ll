; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_yacc.c_yyparse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_yacc.c_yyparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YYMAXDEPTH = common dso_local global i32 0, align 4
@yychar = common dso_local global i32 0, align 4
@yynerrs = common dso_local global i64 0, align 8
@yyerrflag = common dso_local global i32 0, align 4
@yyv = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yyval = common dso_local global i32 0, align 4
@yypact = common dso_local global i16* null, align 8
@YYFLAG = common dso_local global i16 0, align 2
@YYLAST = common dso_local global i16 0, align 2
@yychk = common dso_local global i32* null, align 8
@yyact = common dso_local global i64* null, align 8
@yylval = common dso_local global i32 0, align 4
@yydef = common dso_local global i16* null, align 8
@yyexca = common dso_local global i16* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@YYERRCODE = common dso_local global i32 0, align 4
@yyr2 = common dso_local global i32* null, align 8
@yyr1 = common dso_local global i16* null, align 8
@yypgo = common dso_local global i16* null, align 8
@yyerrok = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"store\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"add\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"negate\0Aadd\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"multiply\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"divide\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"negate\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"load\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"push %s\0A\00", align 1
@yytext = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@yydebug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yyparse() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = load i32, i32* @YYMAXDEPTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %2, align 8
  %16 = alloca i16, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  store i16 0, i16* %7, align 2
  store i32 -1, i32* @yychar, align 4
  store i64 0, i64* @yynerrs, align 8
  store i32 0, i32* @yyerrflag, align 4
  %17 = getelementptr inbounds i16, i16* %16, i64 -1
  store i16* %17, i16** %8, align 8
  %18 = load i32*, i32** @yyv, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -1
  store i32* %19, i32** %10, align 8
  br label %20

20:                                               ; preds = %323, %200, %92, %0
  %21 = load i16*, i16** %8, align 8
  %22 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %22, i16** %8, align 8
  %23 = load i32, i32* @YYMAXDEPTH, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %16, i64 %24
  %26 = icmp ugt i16* %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %324

29:                                               ; preds = %20
  %30 = load i16, i16* %7, align 2
  %31 = load i16*, i16** %8, align 8
  store i16 %30, i16* %31, align 2
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %10, align 8
  %34 = load i32, i32* @yyval, align 4
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %224, %29
  %37 = load i16*, i16** @yypact, align 8
  %38 = load i16, i16* %7, align 2
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  %41 = load i16, i16* %40, align 2
  store i16 %41, i16* %9, align 2
  %42 = load i16, i16* %9, align 2
  %43 = sext i16 %42 to i32
  %44 = load i16, i16* @YYFLAG, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %94

48:                                               ; preds = %36
  %49 = load i32, i32* @yychar, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = call i32 (...) @yylex()
  store i32 %52, i32* @yychar, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* @yychar, align 4
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* @yychar, align 4
  %58 = load i16, i16* %9, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %9, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %56
  %65 = load i16, i16* %9, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* @YYLAST, align 2
  %68 = sext i16 %67 to i32
  %69 = icmp sge i32 %66, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %56
  br label %94

71:                                               ; preds = %64
  %72 = load i32*, i32** @yychk, align 8
  %73 = load i64*, i64** @yyact, align 8
  %74 = load i16, i16* %9, align 2
  %75 = sext i16 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i16
  store i16 %78, i16* %9, align 2
  %79 = sext i16 %78 to i64
  %80 = getelementptr inbounds i32, i32* %72, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @yychar, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  store i32 -1, i32* @yychar, align 4
  %85 = load i32, i32* @yylval, align 4
  store i32 %85, i32* @yyval, align 4
  %86 = load i16, i16* %9, align 2
  store i16 %86, i16* %7, align 2
  %87 = load i32, i32* @yyerrflag, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @yyerrflag, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* @yyerrflag, align 4
  br label %92

92:                                               ; preds = %89, %84
  br label %20

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93, %70, %47
  %95 = load i16*, i16** @yydef, align 8
  %96 = load i16, i16* %7, align 2
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds i16, i16* %95, i64 %97
  %99 = load i16, i16* %98, align 2
  store i16 %99, i16* %9, align 2
  %100 = sext i16 %99 to i32
  %101 = icmp eq i32 %100, -2
  br i1 %101, label %102, label %154

102:                                              ; preds = %94
  %103 = load i32, i32* @yychar, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = call i32 (...) @yylex()
  store i32 %106, i32* @yychar, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* @yychar, align 4
  br label %109

109:                                              ; preds = %108, %105
  br label %110

110:                                              ; preds = %109, %102
  %111 = load i16*, i16** @yyexca, align 8
  store i16* %111, i16** %11, align 8
  br label %112

112:                                              ; preds = %128, %110
  %113 = load i16*, i16** %11, align 8
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %125, label %117

117:                                              ; preds = %112
  %118 = load i16*, i16** %11, align 8
  %119 = getelementptr inbounds i16, i16* %118, i64 1
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i32
  %122 = load i16, i16* %7, align 2
  %123 = sext i16 %122 to i32
  %124 = icmp ne i32 %121, %123
  br label %125

125:                                              ; preds = %117, %112
  %126 = phi i1 [ true, %112 ], [ %124, %117 ]
  br i1 %126, label %127, label %131

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127
  %129 = load i16*, i16** %11, align 8
  %130 = getelementptr inbounds i16, i16* %129, i64 2
  store i16* %130, i16** %11, align 8
  br label %112

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %145, %131
  %133 = load i16*, i16** %11, align 8
  %134 = getelementptr inbounds i16, i16* %133, i64 2
  store i16* %134, i16** %11, align 8
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i32
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load i16*, i16** %11, align 8
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i32
  %142 = load i32, i32* @yychar, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %146

145:                                              ; preds = %138
  br label %132

146:                                              ; preds = %144, %132
  %147 = load i16*, i16** %11, align 8
  %148 = getelementptr inbounds i16, i16* %147, i64 1
  %149 = load i16, i16* %148, align 2
  store i16 %149, i16* %9, align 2
  %150 = sext i16 %149 to i32
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 0, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %324

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153, %94
  %155 = load i16, i16* %9, align 2
  %156 = sext i16 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %226

158:                                              ; preds = %154
  %159 = load i32, i32* @yyerrflag, align 4
  switch i32 %159, label %225 [
    i32 0, label %160
    i32 1, label %165
    i32 2, label %165
    i32 3, label %220
  ]

160:                                              ; preds = %158
  %161 = call i32 @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160
  %163 = load i64, i64* @yynerrs, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* @yynerrs, align 8
  br label %165

165:                                              ; preds = %158, %158, %162
  store i32 3, i32* @yyerrflag, align 4
  br label %166

166:                                              ; preds = %207, %165
  %167 = load i16*, i16** %8, align 8
  %168 = icmp uge i16* %167, %16
  br i1 %168, label %169, label %218

169:                                              ; preds = %166
  %170 = load i16*, i16** @yypact, align 8
  %171 = load i16*, i16** %8, align 8
  %172 = load i16, i16* %171, align 2
  %173 = sext i16 %172 to i64
  %174 = getelementptr inbounds i16, i16* %170, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = sext i16 %175 to i32
  %177 = load i32, i32* @YYERRCODE, align 4
  %178 = add nsw i32 %176, %177
  %179 = trunc i32 %178 to i16
  store i16 %179, i16* %9, align 2
  %180 = load i16, i16* %9, align 2
  %181 = sext i16 %180 to i32
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %207

183:                                              ; preds = %169
  %184 = load i16, i16* %9, align 2
  %185 = sext i16 %184 to i32
  %186 = load i16, i16* @YYLAST, align 2
  %187 = sext i16 %186 to i32
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %207

189:                                              ; preds = %183
  %190 = load i32*, i32** @yychk, align 8
  %191 = load i64*, i64** @yyact, align 8
  %192 = load i16, i16* %9, align 2
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i32, i32* %190, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @YYERRCODE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %189
  %201 = load i64*, i64** @yyact, align 8
  %202 = load i16, i16* %9, align 2
  %203 = sext i16 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i16
  store i16 %206, i16* %7, align 2
  br label %20

207:                                              ; preds = %189, %183, %169
  %208 = load i16*, i16** @yypact, align 8
  %209 = load i16*, i16** %8, align 8
  %210 = load i16, i16* %209, align 2
  %211 = sext i16 %210 to i64
  %212 = getelementptr inbounds i16, i16* %208, i64 %211
  %213 = load i16, i16* %212, align 2
  store i16 %213, i16* %9, align 2
  %214 = load i16*, i16** %8, align 8
  %215 = getelementptr inbounds i16, i16* %214, i32 -1
  store i16* %215, i16** %8, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 -1
  store i32* %217, i32** %10, align 8
  br label %166

218:                                              ; preds = %166
  br label %219

219:                                              ; preds = %223, %218
  store i32 1, i32* %1, align 4
  store i32 1, i32* %12, align 4
  br label %324

220:                                              ; preds = %158
  %221 = load i32, i32* @yychar, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  br label %219

224:                                              ; preds = %220
  store i32 -1, i32* @yychar, align 4
  br label %36

225:                                              ; preds = %158
  br label %226

226:                                              ; preds = %225, %154
  %227 = load i32*, i32** @yyr2, align 8
  %228 = load i16, i16* %9, align 2
  %229 = sext i16 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i16*, i16** %8, align 8
  %233 = sext i32 %231 to i64
  %234 = sub i64 0, %233
  %235 = getelementptr inbounds i16, i16* %232, i64 %234
  store i16* %235, i16** %8, align 8
  %236 = load i32*, i32** %10, align 8
  store i32* %236, i32** %6, align 8
  %237 = load i32*, i32** @yyr2, align 8
  %238 = load i16, i16* %9, align 2
  %239 = sext i16 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %10, align 8
  %243 = sext i32 %241 to i64
  %244 = sub i64 0, %243
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32* %245, i32** %10, align 8
  %246 = load i32*, i32** %10, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* @yyval, align 4
  %249 = load i16, i16* %9, align 2
  store i16 %249, i16* %5, align 2
  %250 = load i16*, i16** @yyr1, align 8
  %251 = load i16, i16* %9, align 2
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds i16, i16* %250, i64 %252
  %254 = load i16, i16* %253, align 2
  store i16 %254, i16* %9, align 2
  %255 = load i16*, i16** @yypgo, align 8
  %256 = load i16, i16* %9, align 2
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds i16, i16* %255, i64 %257
  %259 = load i16, i16* %258, align 2
  %260 = sext i16 %259 to i32
  %261 = load i16*, i16** %8, align 8
  %262 = load i16, i16* %261, align 2
  %263 = sext i16 %262 to i32
  %264 = add nsw i32 %260, %263
  %265 = add nsw i32 %264, 1
  %266 = trunc i32 %265 to i16
  store i16 %266, i16* %4, align 2
  %267 = load i16, i16* %4, align 2
  %268 = sext i16 %267 to i32
  %269 = load i16, i16* @YYLAST, align 2
  %270 = sext i16 %269 to i32
  %271 = icmp sge i32 %268, %270
  br i1 %271, label %287, label %272

272:                                              ; preds = %226
  %273 = load i32*, i32** @yychk, align 8
  %274 = load i64*, i64** @yyact, align 8
  %275 = load i16, i16* %4, align 2
  %276 = sext i16 %275 to i64
  %277 = getelementptr inbounds i64, i64* %274, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i16
  store i16 %279, i16* %7, align 2
  %280 = sext i16 %279 to i64
  %281 = getelementptr inbounds i32, i32* %273, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i16, i16* %9, align 2
  %284 = sext i16 %283 to i32
  %285 = sub nsw i32 0, %284
  %286 = icmp ne i32 %282, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %272, %226
  %288 = load i64*, i64** @yyact, align 8
  %289 = load i16*, i16** @yypgo, align 8
  %290 = load i16, i16* %9, align 2
  %291 = sext i16 %290 to i64
  %292 = getelementptr inbounds i16, i16* %289, i64 %291
  %293 = load i16, i16* %292, align 2
  %294 = sext i16 %293 to i64
  %295 = getelementptr inbounds i64, i64* %288, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i16
  store i16 %297, i16* %7, align 2
  br label %298

298:                                              ; preds = %287, %272
  %299 = load i16, i16* %5, align 2
  %300 = sext i16 %299 to i32
  switch i32 %300, label %323 [
    i32 4, label %301
    i32 5, label %303
    i32 6, label %305
    i32 7, label %307
    i32 8, label %309
    i32 9, label %311
    i32 10, label %313
    i32 12, label %315
    i32 13, label %317
    i32 14, label %320
  ]

301:                                              ; preds = %298
  %302 = load i32, i32* @yyerrok, align 4
  br label %323

303:                                              ; preds = %298
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %323

305:                                              ; preds = %298
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %323

307:                                              ; preds = %298
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %323

309:                                              ; preds = %298
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %323

311:                                              ; preds = %298
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %323

313:                                              ; preds = %298
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %323

315:                                              ; preds = %298
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %323

317:                                              ; preds = %298
  %318 = load i8*, i8** @yytext, align 8
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %318)
  br label %323

320:                                              ; preds = %298
  %321 = load i8*, i8** @yytext, align 8
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %321)
  br label %323

323:                                              ; preds = %298, %320, %317, %315, %313, %311, %309, %307, %305, %303, %301
  br label %20

324:                                              ; preds = %219, %152, %27
  %325 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %1, align 4
  ret i32 %326
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @yyerror(i8*) #2

declare dso_local i32 @yylex(...) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
