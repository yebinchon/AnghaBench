; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttokenizer.c_tSQLGetToken.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttokenizer.c_tSQLGetToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_SPACE = common dso_local global i64 0, align 8
@TK_COLON = common dso_local global i64 0, align 8
@TK_COMMENT = common dso_local global i64 0, align 8
@TK_MINUS = common dso_local global i64 0, align 8
@TK_LP = common dso_local global i64 0, align 8
@TK_RP = common dso_local global i64 0, align 8
@TK_SEMI = common dso_local global i64 0, align 8
@TK_PLUS = common dso_local global i64 0, align 8
@TK_STAR = common dso_local global i64 0, align 8
@TK_SLASH = common dso_local global i64 0, align 8
@TK_REM = common dso_local global i64 0, align 8
@TK_EQ = common dso_local global i64 0, align 8
@TK_LE = common dso_local global i64 0, align 8
@TK_NE = common dso_local global i64 0, align 8
@TK_LSHIFT = common dso_local global i64 0, align 8
@TK_LT = common dso_local global i64 0, align 8
@TK_GE = common dso_local global i64 0, align 8
@TK_RSHIFT = common dso_local global i64 0, align 8
@TK_GT = common dso_local global i64 0, align 8
@TK_ILLEGAL = common dso_local global i64 0, align 8
@TK_BITOR = common dso_local global i64 0, align 8
@TK_CONCAT = common dso_local global i64 0, align 8
@TK_COMMA = common dso_local global i64 0, align 8
@TK_BITAND = common dso_local global i64 0, align 8
@TK_BITNOT = common dso_local global i64 0, align 8
@TK_QUESTION = common dso_local global i64 0, align 8
@TK_STRING = common dso_local global i64 0, align 8
@TK_FLOAT = common dso_local global i64 0, align 8
@TK_DOT = common dso_local global i64 0, align 8
@TK_BIN = common dso_local global i64 0, align 8
@TK_HEX = common dso_local global i64 0, align 8
@TK_INTEGER = common dso_local global i64 0, align 8
@isIdChar = common dso_local global i32* null, align 8
@TK_VARIABLE = common dso_local global i64 0, align 8
@TK_IP = common dso_local global i64 0, align 8
@TK_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@TK_BOOL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tSQLGetToken(i8* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %795 [
    i32 32, label %14
    i32 9, label %14
    i32 10, label %14
    i32 12, label %14
    i32 13, label %14
    i32 58, label %30
    i32 45, label %33
    i32 40, label %67
    i32 41, label %70
    i32 59, label %73
    i32 43, label %76
    i32 42, label %79
    i32 47, label %82
    i32 37, label %141
    i32 61, label %144
    i32 60, label %155
    i32 62, label %185
    i32 33, label %206
    i32 124, label %218
    i32 44, label %230
    i32 38, label %233
    i32 126, label %236
    i32 63, label %239
    i32 39, label %242
    i32 34, label %242
    i32 46, label %296
    i32 48, label %381
    i32 49, label %475
    i32 50, label %475
    i32 51, label %475
    i32 52, label %475
    i32 53, label %475
    i32 54, label %475
    i32 55, label %475
    i32 56, label %475
    i32 57, label %475
    i32 91, label %725
    i32 84, label %751
    i32 116, label %751
    i32 70, label %751
    i32 102, label %751
  ]

14:                                               ; preds = %2, %2, %2, %2, %2
  store i64 1, i64* %6, align 8
  br label %15

15:                                               ; preds = %23, %14
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @isspace(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %15

26:                                               ; preds = %15
  %27 = load i64, i64* @TK_SPACE, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %844

30:                                               ; preds = %2
  %31 = load i64, i64* @TK_COLON, align 8
  %32 = load i64*, i64** %5, align 8
  store i64 %31, i64* %32, align 8
  store i64 1, i64* %3, align 8
  br label %844

33:                                               ; preds = %2
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  store i64 2, i64* %6, align 8
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 10
  br label %54

54:                                               ; preds = %47, %40
  %55 = phi i1 [ false, %40 ], [ %53, %47 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %6, align 8
  br label %40

60:                                               ; preds = %54
  %61 = load i64, i64* @TK_COMMENT, align 8
  %62 = load i64*, i64** %5, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %844

64:                                               ; preds = %33
  %65 = load i64, i64* @TK_MINUS, align 8
  %66 = load i64*, i64** %5, align 8
  store i64 %65, i64* %66, align 8
  store i64 1, i64* %3, align 8
  br label %844

67:                                               ; preds = %2
  %68 = load i64, i64* @TK_LP, align 8
  %69 = load i64*, i64** %5, align 8
  store i64 %68, i64* %69, align 8
  store i64 1, i64* %3, align 8
  br label %844

70:                                               ; preds = %2
  %71 = load i64, i64* @TK_RP, align 8
  %72 = load i64*, i64** %5, align 8
  store i64 %71, i64* %72, align 8
  store i64 1, i64* %3, align 8
  br label %844

73:                                               ; preds = %2
  %74 = load i64, i64* @TK_SEMI, align 8
  %75 = load i64*, i64** %5, align 8
  store i64 %74, i64* %75, align 8
  store i64 1, i64* %3, align 8
  br label %844

76:                                               ; preds = %2
  %77 = load i64, i64* @TK_PLUS, align 8
  %78 = load i64*, i64** %5, align 8
  store i64 %77, i64* %78, align 8
  store i64 1, i64* %3, align 8
  br label %844

79:                                               ; preds = %2
  %80 = load i64, i64* @TK_STAR, align 8
  %81 = load i64*, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  store i64 1, i64* %3, align 8
  br label %844

82:                                               ; preds = %2
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 42
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82
  %95 = load i64, i64* @TK_SLASH, align 8
  %96 = load i64*, i64** %5, align 8
  store i64 %95, i64* %96, align 8
  store i64 1, i64* %3, align 8
  br label %844

97:                                               ; preds = %88
  store i64 3, i64* %6, align 8
  br label %98

98:                                               ; preds = %125, %97
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %98
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 47
  br i1 %111, label %120, label %112

112:                                              ; preds = %105
  %113 = load i8*, i8** %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = sub i64 %114, 1
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 42
  br label %120

120:                                              ; preds = %112, %105
  %121 = phi i1 [ true, %105 ], [ %119, %112 ]
  br label %122

122:                                              ; preds = %120, %98
  %123 = phi i1 [ false, %98 ], [ %121, %120 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %6, align 8
  br label %98

128:                                              ; preds = %122
  %129 = load i8*, i8** %4, align 8
  %130 = load i64, i64* %6, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %137

137:                                              ; preds = %134, %128
  %138 = load i64, i64* @TK_COMMENT, align 8
  %139 = load i64*, i64** %5, align 8
  store i64 %138, i64* %139, align 8
  %140 = load i64, i64* %6, align 8
  store i64 %140, i64* %3, align 8
  br label %844

141:                                              ; preds = %2
  %142 = load i64, i64* @TK_REM, align 8
  %143 = load i64*, i64** %5, align 8
  store i64 %142, i64* %143, align 8
  store i64 1, i64* %3, align 8
  br label %844

144:                                              ; preds = %2
  %145 = load i64, i64* @TK_EQ, align 8
  %146 = load i64*, i64** %5, align 8
  store i64 %145, i64* %146, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 61
  %152 = zext i1 %151 to i32
  %153 = add nsw i32 1, %152
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %3, align 8
  br label %844

155:                                              ; preds = %2
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 61
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = load i64, i64* @TK_LE, align 8
  %163 = load i64*, i64** %5, align 8
  store i64 %162, i64* %163, align 8
  store i64 2, i64* %3, align 8
  br label %844

164:                                              ; preds = %155
  %165 = load i8*, i8** %4, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 1
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 62
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load i64, i64* @TK_NE, align 8
  %172 = load i64*, i64** %5, align 8
  store i64 %171, i64* %172, align 8
  store i64 2, i64* %3, align 8
  br label %844

173:                                              ; preds = %164
  %174 = load i8*, i8** %4, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 60
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i64, i64* @TK_LSHIFT, align 8
  %181 = load i64*, i64** %5, align 8
  store i64 %180, i64* %181, align 8
  store i64 2, i64* %3, align 8
  br label %844

182:                                              ; preds = %173
  %183 = load i64, i64* @TK_LT, align 8
  %184 = load i64*, i64** %5, align 8
  store i64 %183, i64* %184, align 8
  store i64 1, i64* %3, align 8
  br label %844

185:                                              ; preds = %2
  %186 = load i8*, i8** %4, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 61
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i64, i64* @TK_GE, align 8
  %193 = load i64*, i64** %5, align 8
  store i64 %192, i64* %193, align 8
  store i64 2, i64* %3, align 8
  br label %844

194:                                              ; preds = %185
  %195 = load i8*, i8** %4, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 62
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i64, i64* @TK_RSHIFT, align 8
  %202 = load i64*, i64** %5, align 8
  store i64 %201, i64* %202, align 8
  store i64 2, i64* %3, align 8
  br label %844

203:                                              ; preds = %194
  %204 = load i64, i64* @TK_GT, align 8
  %205 = load i64*, i64** %5, align 8
  store i64 %204, i64* %205, align 8
  store i64 1, i64* %3, align 8
  br label %844

206:                                              ; preds = %2
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 61
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i64, i64* @TK_ILLEGAL, align 8
  %214 = load i64*, i64** %5, align 8
  store i64 %213, i64* %214, align 8
  store i64 2, i64* %3, align 8
  br label %844

215:                                              ; preds = %206
  %216 = load i64, i64* @TK_NE, align 8
  %217 = load i64*, i64** %5, align 8
  store i64 %216, i64* %217, align 8
  store i64 2, i64* %3, align 8
  br label %844

218:                                              ; preds = %2
  %219 = load i8*, i8** %4, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 124
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i64, i64* @TK_BITOR, align 8
  %226 = load i64*, i64** %5, align 8
  store i64 %225, i64* %226, align 8
  store i64 1, i64* %3, align 8
  br label %844

227:                                              ; preds = %218
  %228 = load i64, i64* @TK_CONCAT, align 8
  %229 = load i64*, i64** %5, align 8
  store i64 %228, i64* %229, align 8
  store i64 2, i64* %3, align 8
  br label %844

230:                                              ; preds = %2
  %231 = load i64, i64* @TK_COMMA, align 8
  %232 = load i64*, i64** %5, align 8
  store i64 %231, i64* %232, align 8
  store i64 1, i64* %3, align 8
  br label %844

233:                                              ; preds = %2
  %234 = load i64, i64* @TK_BITAND, align 8
  %235 = load i64*, i64** %5, align 8
  store i64 %234, i64* %235, align 8
  store i64 1, i64* %3, align 8
  br label %844

236:                                              ; preds = %2
  %237 = load i64, i64* @TK_BITNOT, align 8
  %238 = load i64*, i64** %5, align 8
  store i64 %237, i64* %238, align 8
  store i64 1, i64* %3, align 8
  br label %844

239:                                              ; preds = %2
  %240 = load i64, i64* @TK_QUESTION, align 8
  %241 = load i64*, i64** %5, align 8
  store i64 %240, i64* %241, align 8
  store i64 1, i64* %3, align 8
  br label %844

242:                                              ; preds = %2, %2
  %243 = load i8*, i8** %4, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 0
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  store i32 %246, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 1, i64* %6, align 8
  br label %247

247:                                              ; preds = %276, %242
  %248 = load i8*, i8** %4, align 8
  %249 = load i64, i64* %6, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = icmp ne i8 %251, 0
  br i1 %252, label %253, label %279

253:                                              ; preds = %247
  %254 = load i8*, i8** %4, align 8
  %255 = load i64, i64* %6, align 8
  %256 = getelementptr inbounds i8, i8* %254, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = load i32, i32* %7, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %275

261:                                              ; preds = %253
  %262 = load i8*, i8** %4, align 8
  %263 = load i64, i64* %6, align 8
  %264 = add i64 %263, 1
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = load i32, i32* %7, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %261
  %271 = load i64, i64* %6, align 8
  %272 = add i64 %271, 1
  store i64 %272, i64* %6, align 8
  br label %274

273:                                              ; preds = %261
  store i32 1, i32* %8, align 4
  br label %279

274:                                              ; preds = %270
  br label %275

275:                                              ; preds = %274, %253
  br label %276

276:                                              ; preds = %275
  %277 = load i64, i64* %6, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %6, align 8
  br label %247

279:                                              ; preds = %273, %247
  %280 = load i8*, i8** %4, align 8
  %281 = load i64, i64* %6, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = icmp ne i8 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %279
  %286 = load i64, i64* %6, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %6, align 8
  br label %288

288:                                              ; preds = %285, %279
  %289 = load i32, i32* %8, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %288
  %292 = load i64, i64* @TK_STRING, align 8
  %293 = load i64*, i64** %5, align 8
  store i64 %292, i64* %293, align 8
  %294 = load i64, i64* %6, align 8
  store i64 %294, i64* %3, align 8
  br label %844

295:                                              ; preds = %288
  br label %841

296:                                              ; preds = %2
  %297 = load i8*, i8** %4, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 1
  %299 = load i8, i8* %298, align 1
  %300 = call i32 @isdigit(i8 signext %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %378

302:                                              ; preds = %296
  store i64 2, i64* %6, align 8
  br label %303

303:                                              ; preds = %311, %302
  %304 = load i8*, i8** %4, align 8
  %305 = load i64, i64* %6, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = call i32 @isdigit(i8 signext %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %303
  br label %311

311:                                              ; preds = %310
  %312 = load i64, i64* %6, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %6, align 8
  br label %303

314:                                              ; preds = %303
  %315 = load i8*, i8** %4, align 8
  %316 = load i64, i64* %6, align 8
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp eq i32 %319, 101
  br i1 %320, label %328, label %321

321:                                              ; preds = %314
  %322 = load i8*, i8** %4, align 8
  %323 = load i64, i64* %6, align 8
  %324 = getelementptr inbounds i8, i8* %322, i64 %323
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 69
  br i1 %327, label %328, label %374

328:                                              ; preds = %321, %314
  %329 = load i8*, i8** %4, align 8
  %330 = load i64, i64* %6, align 8
  %331 = add i64 %330, 1
  %332 = getelementptr inbounds i8, i8* %329, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = call i32 @isdigit(i8 signext %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %360, label %336

336:                                              ; preds = %328
  %337 = load i8*, i8** %4, align 8
  %338 = load i64, i64* %6, align 8
  %339 = add i64 %338, 1
  %340 = getelementptr inbounds i8, i8* %337, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 43
  br i1 %343, label %352, label %344

344:                                              ; preds = %336
  %345 = load i8*, i8** %4, align 8
  %346 = load i64, i64* %6, align 8
  %347 = add i64 %346, 1
  %348 = getelementptr inbounds i8, i8* %345, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp eq i32 %350, 45
  br i1 %351, label %352, label %374

352:                                              ; preds = %344, %336
  %353 = load i8*, i8** %4, align 8
  %354 = load i64, i64* %6, align 8
  %355 = add i64 %354, 2
  %356 = getelementptr inbounds i8, i8* %353, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = call i32 @isdigit(i8 signext %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %352, %328
  %361 = load i64, i64* %6, align 8
  %362 = add i64 %361, 2
  store i64 %362, i64* %6, align 8
  br label %363

363:                                              ; preds = %370, %360
  %364 = load i8*, i8** %4, align 8
  %365 = load i64, i64* %6, align 8
  %366 = getelementptr inbounds i8, i8* %364, i64 %365
  %367 = load i8, i8* %366, align 1
  %368 = call i32 @isdigit(i8 signext %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %363
  %371 = load i64, i64* %6, align 8
  %372 = add i64 %371, 1
  store i64 %372, i64* %6, align 8
  br label %363

373:                                              ; preds = %363
  br label %374

374:                                              ; preds = %373, %352, %344, %321
  %375 = load i64, i64* @TK_FLOAT, align 8
  %376 = load i64*, i64** %5, align 8
  store i64 %375, i64* %376, align 8
  %377 = load i64, i64* %6, align 8
  store i64 %377, i64* %3, align 8
  br label %844

378:                                              ; preds = %296
  %379 = load i64, i64* @TK_DOT, align 8
  %380 = load i64*, i64** %5, align 8
  store i64 %379, i64* %380, align 8
  store i64 1, i64* %3, align 8
  br label %844

381:                                              ; preds = %2
  %382 = load i8*, i8** %4, align 8
  %383 = getelementptr inbounds i8, i8* %382, i64 1
  %384 = load i8, i8* %383, align 1
  store i8 %384, i8* %9, align 1
  %385 = load i8, i8* %9, align 1
  %386 = sext i8 %385 to i32
  %387 = icmp eq i32 %386, 98
  br i1 %387, label %388, label %417

388:                                              ; preds = %381
  %389 = load i64, i64* @TK_BIN, align 8
  %390 = load i64*, i64** %5, align 8
  store i64 %389, i64* %390, align 8
  store i64 2, i64* %6, align 8
  br label %391

391:                                              ; preds = %408, %388
  %392 = load i8*, i8** %4, align 8
  %393 = load i64, i64* %6, align 8
  %394 = getelementptr inbounds i8, i8* %392, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = sext i8 %395 to i32
  %397 = icmp eq i32 %396, 48
  br i1 %397, label %405, label %398

398:                                              ; preds = %391
  %399 = load i8*, i8** %4, align 8
  %400 = load i64, i64* %6, align 8
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 49
  br label %405

405:                                              ; preds = %398, %391
  %406 = phi i1 [ true, %391 ], [ %404, %398 ]
  br i1 %406, label %407, label %411

407:                                              ; preds = %405
  br label %408

408:                                              ; preds = %407
  %409 = load i64, i64* %6, align 8
  %410 = add i64 %409, 1
  store i64 %410, i64* %6, align 8
  br label %391

411:                                              ; preds = %405
  %412 = load i64, i64* %6, align 8
  %413 = icmp eq i64 %412, 2
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  br label %841

415:                                              ; preds = %411
  %416 = load i64, i64* %6, align 8
  store i64 %416, i64* %3, align 8
  br label %844

417:                                              ; preds = %381
  %418 = load i8, i8* %9, align 1
  %419 = sext i8 %418 to i32
  %420 = icmp eq i32 %419, 120
  br i1 %420, label %421, label %473

421:                                              ; preds = %417
  %422 = load i64, i64* @TK_HEX, align 8
  %423 = load i64*, i64** %5, align 8
  store i64 %422, i64* %423, align 8
  store i64 2, i64* %6, align 8
  br label %424

424:                                              ; preds = %464, %421
  %425 = load i8*, i8** %4, align 8
  %426 = load i64, i64* %6, align 8
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  %428 = load i8, i8* %427, align 1
  %429 = call i32 @isdigit(i8 signext %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %461, label %431

431:                                              ; preds = %424
  %432 = load i8*, i8** %4, align 8
  %433 = load i64, i64* %6, align 8
  %434 = getelementptr inbounds i8, i8* %432, i64 %433
  %435 = load i8, i8* %434, align 1
  %436 = sext i8 %435 to i32
  %437 = icmp sge i32 %436, 97
  br i1 %437, label %438, label %445

438:                                              ; preds = %431
  %439 = load i8*, i8** %4, align 8
  %440 = load i64, i64* %6, align 8
  %441 = getelementptr inbounds i8, i8* %439, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp sle i32 %443, 102
  br i1 %444, label %461, label %445

445:                                              ; preds = %438, %431
  %446 = load i8*, i8** %4, align 8
  %447 = load i64, i64* %6, align 8
  %448 = getelementptr inbounds i8, i8* %446, i64 %447
  %449 = load i8, i8* %448, align 1
  %450 = sext i8 %449 to i32
  %451 = icmp sge i32 %450, 65
  br i1 %451, label %452, label %459

452:                                              ; preds = %445
  %453 = load i8*, i8** %4, align 8
  %454 = load i64, i64* %6, align 8
  %455 = getelementptr inbounds i8, i8* %453, i64 %454
  %456 = load i8, i8* %455, align 1
  %457 = sext i8 %456 to i32
  %458 = icmp sle i32 %457, 70
  br label %459

459:                                              ; preds = %452, %445
  %460 = phi i1 [ false, %445 ], [ %458, %452 ]
  br label %461

461:                                              ; preds = %459, %438, %424
  %462 = phi i1 [ true, %438 ], [ true, %424 ], [ %460, %459 ]
  br i1 %462, label %463, label %467

463:                                              ; preds = %461
  br label %464

464:                                              ; preds = %463
  %465 = load i64, i64* %6, align 8
  %466 = add i64 %465, 1
  store i64 %466, i64* %6, align 8
  br label %424

467:                                              ; preds = %461
  %468 = load i64, i64* %6, align 8
  %469 = icmp eq i64 %468, 2
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  br label %841

471:                                              ; preds = %467
  %472 = load i64, i64* %6, align 8
  store i64 %472, i64* %3, align 8
  br label %844

473:                                              ; preds = %417
  br label %474

474:                                              ; preds = %473
  br label %475

475:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %474
  %476 = load i64, i64* @TK_INTEGER, align 8
  %477 = load i64*, i64** %5, align 8
  store i64 %476, i64* %477, align 8
  store i64 1, i64* %6, align 8
  br label %478

478:                                              ; preds = %486, %475
  %479 = load i8*, i8** %4, align 8
  %480 = load i64, i64* %6, align 8
  %481 = getelementptr inbounds i8, i8* %479, i64 %480
  %482 = load i8, i8* %481, align 1
  %483 = call i32 @isdigit(i8 signext %482)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %489

485:                                              ; preds = %478
  br label %486

486:                                              ; preds = %485
  %487 = load i64, i64* %6, align 8
  %488 = add i64 %487, 1
  store i64 %488, i64* %6, align 8
  br label %478

489:                                              ; preds = %478
  %490 = load i8*, i8** %4, align 8
  %491 = load i64, i64* %6, align 8
  %492 = getelementptr inbounds i8, i8* %490, i64 %491
  %493 = load i8, i8* %492, align 1
  %494 = sext i8 %493 to i32
  %495 = icmp eq i32 %494, 97
  br i1 %495, label %601, label %496

496:                                              ; preds = %489
  %497 = load i8*, i8** %4, align 8
  %498 = load i64, i64* %6, align 8
  %499 = getelementptr inbounds i8, i8* %497, i64 %498
  %500 = load i8, i8* %499, align 1
  %501 = sext i8 %500 to i32
  %502 = icmp eq i32 %501, 115
  br i1 %502, label %601, label %503

503:                                              ; preds = %496
  %504 = load i8*, i8** %4, align 8
  %505 = load i64, i64* %6, align 8
  %506 = getelementptr inbounds i8, i8* %504, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = sext i8 %507 to i32
  %509 = icmp eq i32 %508, 109
  br i1 %509, label %601, label %510

510:                                              ; preds = %503
  %511 = load i8*, i8** %4, align 8
  %512 = load i64, i64* %6, align 8
  %513 = getelementptr inbounds i8, i8* %511, i64 %512
  %514 = load i8, i8* %513, align 1
  %515 = sext i8 %514 to i32
  %516 = icmp eq i32 %515, 104
  br i1 %516, label %601, label %517

517:                                              ; preds = %510
  %518 = load i8*, i8** %4, align 8
  %519 = load i64, i64* %6, align 8
  %520 = getelementptr inbounds i8, i8* %518, i64 %519
  %521 = load i8, i8* %520, align 1
  %522 = sext i8 %521 to i32
  %523 = icmp eq i32 %522, 100
  br i1 %523, label %601, label %524

524:                                              ; preds = %517
  %525 = load i8*, i8** %4, align 8
  %526 = load i64, i64* %6, align 8
  %527 = getelementptr inbounds i8, i8* %525, i64 %526
  %528 = load i8, i8* %527, align 1
  %529 = sext i8 %528 to i32
  %530 = icmp eq i32 %529, 110
  br i1 %530, label %601, label %531

531:                                              ; preds = %524
  %532 = load i8*, i8** %4, align 8
  %533 = load i64, i64* %6, align 8
  %534 = getelementptr inbounds i8, i8* %532, i64 %533
  %535 = load i8, i8* %534, align 1
  %536 = sext i8 %535 to i32
  %537 = icmp eq i32 %536, 121
  br i1 %537, label %601, label %538

538:                                              ; preds = %531
  %539 = load i8*, i8** %4, align 8
  %540 = load i64, i64* %6, align 8
  %541 = getelementptr inbounds i8, i8* %539, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp eq i32 %543, 119
  br i1 %544, label %601, label %545

545:                                              ; preds = %538
  %546 = load i8*, i8** %4, align 8
  %547 = load i64, i64* %6, align 8
  %548 = getelementptr inbounds i8, i8* %546, i64 %547
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i32
  %551 = icmp eq i32 %550, 65
  br i1 %551, label %601, label %552

552:                                              ; preds = %545
  %553 = load i8*, i8** %4, align 8
  %554 = load i64, i64* %6, align 8
  %555 = getelementptr inbounds i8, i8* %553, i64 %554
  %556 = load i8, i8* %555, align 1
  %557 = sext i8 %556 to i32
  %558 = icmp eq i32 %557, 83
  br i1 %558, label %601, label %559

559:                                              ; preds = %552
  %560 = load i8*, i8** %4, align 8
  %561 = load i64, i64* %6, align 8
  %562 = getelementptr inbounds i8, i8* %560, i64 %561
  %563 = load i8, i8* %562, align 1
  %564 = sext i8 %563 to i32
  %565 = icmp eq i32 %564, 77
  br i1 %565, label %601, label %566

566:                                              ; preds = %559
  %567 = load i8*, i8** %4, align 8
  %568 = load i64, i64* %6, align 8
  %569 = getelementptr inbounds i8, i8* %567, i64 %568
  %570 = load i8, i8* %569, align 1
  %571 = sext i8 %570 to i32
  %572 = icmp eq i32 %571, 72
  br i1 %572, label %601, label %573

573:                                              ; preds = %566
  %574 = load i8*, i8** %4, align 8
  %575 = load i64, i64* %6, align 8
  %576 = getelementptr inbounds i8, i8* %574, i64 %575
  %577 = load i8, i8* %576, align 1
  %578 = sext i8 %577 to i32
  %579 = icmp eq i32 %578, 68
  br i1 %579, label %601, label %580

580:                                              ; preds = %573
  %581 = load i8*, i8** %4, align 8
  %582 = load i64, i64* %6, align 8
  %583 = getelementptr inbounds i8, i8* %581, i64 %582
  %584 = load i8, i8* %583, align 1
  %585 = sext i8 %584 to i32
  %586 = icmp eq i32 %585, 78
  br i1 %586, label %601, label %587

587:                                              ; preds = %580
  %588 = load i8*, i8** %4, align 8
  %589 = load i64, i64* %6, align 8
  %590 = getelementptr inbounds i8, i8* %588, i64 %589
  %591 = load i8, i8* %590, align 1
  %592 = sext i8 %591 to i32
  %593 = icmp eq i32 %592, 89
  br i1 %593, label %601, label %594

594:                                              ; preds = %587
  %595 = load i8*, i8** %4, align 8
  %596 = load i64, i64* %6, align 8
  %597 = getelementptr inbounds i8, i8* %595, i64 %596
  %598 = load i8, i8* %597, align 1
  %599 = sext i8 %598 to i32
  %600 = icmp eq i32 %599, 87
  br i1 %600, label %601, label %618

601:                                              ; preds = %594, %587, %580, %573, %566, %559, %552, %545, %538, %531, %524, %517, %510, %503, %496, %489
  %602 = load i32*, i32** @isIdChar, align 8
  %603 = load i8*, i8** %4, align 8
  %604 = load i64, i64* %6, align 8
  %605 = add i64 %604, 1
  %606 = getelementptr inbounds i8, i8* %603, i64 %605
  %607 = load i8, i8* %606, align 1
  %608 = sext i8 %607 to i64
  %609 = getelementptr inbounds i32, i32* %602, i64 %608
  %610 = load i32, i32* %609, align 4
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %618

612:                                              ; preds = %601
  %613 = load i64, i64* @TK_VARIABLE, align 8
  %614 = load i64*, i64** %5, align 8
  store i64 %613, i64* %614, align 8
  %615 = load i64, i64* %6, align 8
  %616 = add i64 %615, 1
  store i64 %616, i64* %6, align 8
  %617 = load i64, i64* %6, align 8
  store i64 %617, i64* %3, align 8
  br label %844

618:                                              ; preds = %601, %594
  store i32 1, i32* %10, align 4
  br label %619

619:                                              ; preds = %649, %618
  %620 = load i8*, i8** %4, align 8
  %621 = load i64, i64* %6, align 8
  %622 = getelementptr inbounds i8, i8* %620, i64 %621
  %623 = load i8, i8* %622, align 1
  %624 = sext i8 %623 to i32
  %625 = icmp eq i32 %624, 46
  br i1 %625, label %626, label %634

626:                                              ; preds = %619
  %627 = load i8*, i8** %4, align 8
  %628 = load i64, i64* %6, align 8
  %629 = add i64 %628, 1
  %630 = getelementptr inbounds i8, i8* %627, i64 %629
  %631 = load i8, i8* %630, align 1
  %632 = call i32 @isdigit(i8 signext %631)
  %633 = icmp ne i32 %632, 0
  br label %634

634:                                              ; preds = %626, %619
  %635 = phi i1 [ false, %619 ], [ %633, %626 ]
  br i1 %635, label %636, label %654

636:                                              ; preds = %634
  %637 = load i64, i64* %6, align 8
  %638 = add i64 %637, 2
  store i64 %638, i64* %6, align 8
  br label %639

639:                                              ; preds = %646, %636
  %640 = load i8*, i8** %4, align 8
  %641 = load i64, i64* %6, align 8
  %642 = getelementptr inbounds i8, i8* %640, i64 %641
  %643 = load i8, i8* %642, align 1
  %644 = call i32 @isdigit(i8 signext %643)
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %649

646:                                              ; preds = %639
  %647 = load i64, i64* %6, align 8
  %648 = add i64 %647, 1
  store i64 %648, i64* %6, align 8
  br label %639

649:                                              ; preds = %639
  %650 = load i64, i64* @TK_FLOAT, align 8
  %651 = load i64*, i64** %5, align 8
  store i64 %650, i64* %651, align 8
  %652 = load i32, i32* %10, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %10, align 4
  br label %619

654:                                              ; preds = %634
  %655 = load i32, i32* %10, align 4
  %656 = icmp eq i32 %655, 4
  br i1 %656, label %657, label %661

657:                                              ; preds = %654
  %658 = load i64, i64* @TK_IP, align 8
  %659 = load i64*, i64** %5, align 8
  store i64 %658, i64* %659, align 8
  %660 = load i64, i64* %6, align 8
  store i64 %660, i64* %3, align 8
  br label %844

661:                                              ; preds = %654
  %662 = load i8*, i8** %4, align 8
  %663 = load i64, i64* %6, align 8
  %664 = getelementptr inbounds i8, i8* %662, i64 %663
  %665 = load i8, i8* %664, align 1
  %666 = sext i8 %665 to i32
  %667 = icmp eq i32 %666, 101
  br i1 %667, label %675, label %668

668:                                              ; preds = %661
  %669 = load i8*, i8** %4, align 8
  %670 = load i64, i64* %6, align 8
  %671 = getelementptr inbounds i8, i8* %669, i64 %670
  %672 = load i8, i8* %671, align 1
  %673 = sext i8 %672 to i32
  %674 = icmp eq i32 %673, 69
  br i1 %674, label %675, label %723

675:                                              ; preds = %668, %661
  %676 = load i8*, i8** %4, align 8
  %677 = load i64, i64* %6, align 8
  %678 = add i64 %677, 1
  %679 = getelementptr inbounds i8, i8* %676, i64 %678
  %680 = load i8, i8* %679, align 1
  %681 = call i32 @isdigit(i8 signext %680)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %707, label %683

683:                                              ; preds = %675
  %684 = load i8*, i8** %4, align 8
  %685 = load i64, i64* %6, align 8
  %686 = add i64 %685, 1
  %687 = getelementptr inbounds i8, i8* %684, i64 %686
  %688 = load i8, i8* %687, align 1
  %689 = sext i8 %688 to i32
  %690 = icmp eq i32 %689, 43
  br i1 %690, label %699, label %691

691:                                              ; preds = %683
  %692 = load i8*, i8** %4, align 8
  %693 = load i64, i64* %6, align 8
  %694 = add i64 %693, 1
  %695 = getelementptr inbounds i8, i8* %692, i64 %694
  %696 = load i8, i8* %695, align 1
  %697 = sext i8 %696 to i32
  %698 = icmp eq i32 %697, 45
  br i1 %698, label %699, label %723

699:                                              ; preds = %691, %683
  %700 = load i8*, i8** %4, align 8
  %701 = load i64, i64* %6, align 8
  %702 = add i64 %701, 2
  %703 = getelementptr inbounds i8, i8* %700, i64 %702
  %704 = load i8, i8* %703, align 1
  %705 = call i32 @isdigit(i8 signext %704)
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %723

707:                                              ; preds = %699, %675
  %708 = load i64, i64* %6, align 8
  %709 = add i64 %708, 2
  store i64 %709, i64* %6, align 8
  br label %710

710:                                              ; preds = %717, %707
  %711 = load i8*, i8** %4, align 8
  %712 = load i64, i64* %6, align 8
  %713 = getelementptr inbounds i8, i8* %711, i64 %712
  %714 = load i8, i8* %713, align 1
  %715 = call i32 @isdigit(i8 signext %714)
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %717, label %720

717:                                              ; preds = %710
  %718 = load i64, i64* %6, align 8
  %719 = add i64 %718, 1
  store i64 %719, i64* %6, align 8
  br label %710

720:                                              ; preds = %710
  %721 = load i64, i64* @TK_FLOAT, align 8
  %722 = load i64*, i64** %5, align 8
  store i64 %721, i64* %722, align 8
  br label %723

723:                                              ; preds = %720, %699, %691, %668
  %724 = load i64, i64* %6, align 8
  store i64 %724, i64* %3, align 8
  br label %844

725:                                              ; preds = %2
  store i64 1, i64* %6, align 8
  br label %726

726:                                              ; preds = %744, %725
  %727 = load i8*, i8** %4, align 8
  %728 = load i64, i64* %6, align 8
  %729 = getelementptr inbounds i8, i8* %727, i64 %728
  %730 = load i8, i8* %729, align 1
  %731 = sext i8 %730 to i32
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %741

733:                                              ; preds = %726
  %734 = load i8*, i8** %4, align 8
  %735 = load i64, i64* %6, align 8
  %736 = sub i64 %735, 1
  %737 = getelementptr inbounds i8, i8* %734, i64 %736
  %738 = load i8, i8* %737, align 1
  %739 = sext i8 %738 to i32
  %740 = icmp ne i32 %739, 93
  br label %741

741:                                              ; preds = %733, %726
  %742 = phi i1 [ false, %726 ], [ %740, %733 ]
  br i1 %742, label %743, label %747

743:                                              ; preds = %741
  br label %744

744:                                              ; preds = %743
  %745 = load i64, i64* %6, align 8
  %746 = add i64 %745, 1
  store i64 %746, i64* %6, align 8
  br label %726

747:                                              ; preds = %741
  %748 = load i64, i64* @TK_ID, align 8
  %749 = load i64*, i64** %5, align 8
  store i64 %748, i64* %749, align 8
  %750 = load i64, i64* %6, align 8
  store i64 %750, i64* %3, align 8
  br label %844

751:                                              ; preds = %2, %2, %2, %2
  store i64 1, i64* %6, align 8
  br label %752

752:                                              ; preds = %773, %751
  %753 = load i8*, i8** %4, align 8
  %754 = load i64, i64* %6, align 8
  %755 = getelementptr inbounds i8, i8* %753, i64 %754
  %756 = load i8, i8* %755, align 1
  %757 = sext i8 %756 to i32
  %758 = and i32 %757, 128
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %770

760:                                              ; preds = %752
  %761 = load i32*, i32** @isIdChar, align 8
  %762 = load i8*, i8** %4, align 8
  %763 = load i64, i64* %6, align 8
  %764 = getelementptr inbounds i8, i8* %762, i64 %763
  %765 = load i8, i8* %764, align 1
  %766 = sext i8 %765 to i64
  %767 = getelementptr inbounds i32, i32* %761, i64 %766
  %768 = load i32, i32* %767, align 4
  %769 = icmp ne i32 %768, 0
  br label %770

770:                                              ; preds = %760, %752
  %771 = phi i1 [ false, %752 ], [ %769, %760 ]
  br i1 %771, label %772, label %776

772:                                              ; preds = %770
  br label %773

773:                                              ; preds = %772
  %774 = load i64, i64* %6, align 8
  %775 = add i64 %774, 1
  store i64 %775, i64* %6, align 8
  br label %752

776:                                              ; preds = %770
  %777 = load i64, i64* %6, align 8
  %778 = icmp eq i64 %777, 4
  br i1 %778, label %779, label %783

779:                                              ; preds = %776
  %780 = load i8*, i8** %4, align 8
  %781 = call i32 @strncasecmp(i8* %780, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %790, label %783

783:                                              ; preds = %779, %776
  %784 = load i64, i64* %6, align 8
  %785 = icmp eq i64 %784, 5
  br i1 %785, label %786, label %794

786:                                              ; preds = %783
  %787 = load i8*, i8** %4, align 8
  %788 = call i32 @strncasecmp(i8* %787, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %790, label %794

790:                                              ; preds = %786, %779
  %791 = load i64, i64* @TK_BOOL, align 8
  %792 = load i64*, i64** %5, align 8
  store i64 %791, i64* %792, align 8
  %793 = load i64, i64* %6, align 8
  store i64 %793, i64* %3, align 8
  br label %844

794:                                              ; preds = %786, %783
  br label %795

795:                                              ; preds = %2, %794
  %796 = load i8*, i8** %4, align 8
  %797 = load i8, i8* %796, align 1
  %798 = sext i8 %797 to i32
  %799 = and i32 %798, 128
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %809, label %801

801:                                              ; preds = %795
  %802 = load i32*, i32** @isIdChar, align 8
  %803 = load i8*, i8** %4, align 8
  %804 = load i8, i8* %803, align 1
  %805 = sext i8 %804 to i64
  %806 = getelementptr inbounds i32, i32* %802, i64 %805
  %807 = load i32, i32* %806, align 4
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %810, label %809

809:                                              ; preds = %801, %795
  br label %841

810:                                              ; preds = %801
  store i64 1, i64* %6, align 8
  br label %811

811:                                              ; preds = %832, %810
  %812 = load i8*, i8** %4, align 8
  %813 = load i64, i64* %6, align 8
  %814 = getelementptr inbounds i8, i8* %812, i64 %813
  %815 = load i8, i8* %814, align 1
  %816 = sext i8 %815 to i32
  %817 = and i32 %816, 128
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %829

819:                                              ; preds = %811
  %820 = load i32*, i32** @isIdChar, align 8
  %821 = load i8*, i8** %4, align 8
  %822 = load i64, i64* %6, align 8
  %823 = getelementptr inbounds i8, i8* %821, i64 %822
  %824 = load i8, i8* %823, align 1
  %825 = sext i8 %824 to i64
  %826 = getelementptr inbounds i32, i32* %820, i64 %825
  %827 = load i32, i32* %826, align 4
  %828 = icmp ne i32 %827, 0
  br label %829

829:                                              ; preds = %819, %811
  %830 = phi i1 [ false, %811 ], [ %828, %819 ]
  br i1 %830, label %831, label %835

831:                                              ; preds = %829
  br label %832

832:                                              ; preds = %831
  %833 = load i64, i64* %6, align 8
  %834 = add i64 %833, 1
  store i64 %834, i64* %6, align 8
  br label %811

835:                                              ; preds = %829
  %836 = load i8*, i8** %4, align 8
  %837 = load i64, i64* %6, align 8
  %838 = call i64 @tSQLKeywordCode(i8* %836, i64 %837)
  %839 = load i64*, i64** %5, align 8
  store i64 %838, i64* %839, align 8
  %840 = load i64, i64* %6, align 8
  store i64 %840, i64* %3, align 8
  br label %844

841:                                              ; preds = %809, %470, %414, %295
  %842 = load i64, i64* @TK_ILLEGAL, align 8
  %843 = load i64*, i64** %5, align 8
  store i64 %842, i64* %843, align 8
  store i64 0, i64* %3, align 8
  br label %844

844:                                              ; preds = %841, %835, %790, %747, %723, %657, %612, %471, %415, %378, %374, %291, %239, %236, %233, %230, %227, %224, %215, %212, %203, %200, %191, %182, %179, %170, %161, %144, %141, %137, %94, %79, %76, %73, %70, %67, %64, %60, %30, %26
  %845 = load i64, i64* %3, align 8
  ret i64 %845
}

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @tSQLKeywordCode(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
