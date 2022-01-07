; ModuleID = '/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_get_table_index.c'
source_filename = "/home/carl/AnghaBench/Atlas/plugins/proxy/extr_proxy-plugin.c_get_table_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@TK_COMMENT = common dso_local global i64 0, align 8
@TK_SQL_SELECT = common dso_local global i64 0, align 8
@TK_SQL_DELETE = common dso_local global i64 0, align 8
@TK_SQL_FROM = common dso_local global i64 0, align 8
@TK_SQL_WHERE = common dso_local global i64 0, align 8
@TK_LITERAL = common dso_local global i64 0, align 8
@TK_DOT = common dso_local global i64 0, align 8
@TK_SQL_UPDATE = common dso_local global i64 0, align 8
@TK_SQL_SET = common dso_local global i64 0, align 8
@TK_SQL_INSERT = common dso_local global i64 0, align 8
@TK_SQL_REPLACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@TK_FUNCTION = common dso_local global i64 0, align 8
@TK_OBRACE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_table_index(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  store i32 -1, i32* %16, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_6__**
  store %struct.TYPE_6__** %20, %struct.TYPE_6__*** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %334

27:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_COMMENT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br label %43

43:                                               ; preds = %38, %28
  %44 = phi i1 [ false, %28 ], [ %42, %38 ]
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %28

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %334

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @TK_SQL_SELECT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @TK_SQL_DELETE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %145

66:                                               ; preds = %62, %51
  br label %67

67:                                               ; preds = %141, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %144

71:                                               ; preds = %67
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TK_SQL_FROM, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %140

81:                                               ; preds = %71
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %136, %81
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %139

88:                                               ; preds = %84
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %89, i64 %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TK_SQL_WHERE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  br label %139

99:                                               ; preds = %88
  %100 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %100, i64 %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TK_LITERAL, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %99
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 2
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %115, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TK_DOT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load i32, i32* %11, align 4
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 2
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  br label %134

131:                                              ; preds = %114, %109
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %131, %125
  br label %139

135:                                              ; preds = %99
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %84

139:                                              ; preds = %134, %98, %84
  br label %144

140:                                              ; preds = %71
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %67

144:                                              ; preds = %139, %67
  store i32 1, i32* %4, align 4
  br label %334

145:                                              ; preds = %62
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* @TK_SQL_UPDATE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %206

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %202, %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %205

154:                                              ; preds = %150
  %155 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %155, i64 %157
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @TK_SQL_SET, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %205

165:                                              ; preds = %154
  %166 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %166, i64 %168
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @TK_LITERAL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %201

175:                                              ; preds = %165
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 2
  %178 = load i32, i32* %9, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %175
  %181 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %181, i64 %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @TK_DOT, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = load i32, i32* %10, align 4
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 2
  %196 = load i32*, i32** %7, align 8
  store i32 %195, i32* %196, align 4
  br label %200

197:                                              ; preds = %180, %175
  %198 = load i32, i32* %10, align 4
  %199 = load i32*, i32** %7, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %191
  br label %205

201:                                              ; preds = %165
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %10, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %10, align 4
  br label %150

205:                                              ; preds = %200, %164, %150
  store i32 2, i32* %4, align 4
  br label %334

206:                                              ; preds = %145
  %207 = load i64, i64* %12, align 8
  %208 = load i64, i64* @TK_SQL_INSERT, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load i64, i64* %12, align 8
  %212 = load i64, i64* @TK_SQL_REPLACE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %331

214:                                              ; preds = %210, %206
  br label %215

215:                                              ; preds = %327, %214
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %330

219:                                              ; preds = %215
  %220 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %220, i64 %222
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  store i32* %228, i32** %13, align 8
  %229 = load i32*, i32** %13, align 8
  %230 = call i64 @strcasecmp(i32* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %219
  %233 = load i32*, i32** %13, align 8
  %234 = call i64 @strcasecmp(i32* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %219
  br label %330

237:                                              ; preds = %232
  %238 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %238, i64 %240
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %14, align 8
  %245 = load i64, i64* %14, align 8
  %246 = load i64, i64* @TK_LITERAL, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %270

248:                                              ; preds = %237
  %249 = load i32, i32* %10, align 4
  %250 = add nsw i32 %249, 2
  %251 = load i32, i32* %9, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %270

253:                                              ; preds = %248
  %254 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %254, i64 %257
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @TK_DOT, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %253
  %265 = load i32, i32* %10, align 4
  %266 = load i32*, i32** %6, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32, i32* %10, align 4
  %268 = add nsw i32 %267, 2
  %269 = load i32*, i32** %7, align 8
  store i32 %268, i32* %269, align 4
  br label %330

270:                                              ; preds = %253, %248, %237
  %271 = load i64, i64* %14, align 8
  %272 = load i64, i64* @TK_LITERAL, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i64, i64* %14, align 8
  %276 = load i64, i64* @TK_FUNCTION, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %325

278:                                              ; preds = %274, %270
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %9, align 4
  %281 = sub nsw i32 %280, 1
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load i32, i32* %10, align 4
  %285 = load i32*, i32** %7, align 8
  store i32 %284, i32* %285, align 4
  br label %330

286:                                              ; preds = %278
  %287 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %287, i64 %290
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  store i32* %296, i32** %13, align 8
  %297 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %298 = load i32, i32* %10, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %297, i64 %300
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %14, align 8
  %305 = load i32*, i32** %13, align 8
  %306 = call i64 @strcasecmp(i32* %305, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %320, label %308

308:                                              ; preds = %286
  %309 = load i32*, i32** %13, align 8
  %310 = call i64 @strcasecmp(i32* %309, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %320, label %312

312:                                              ; preds = %308
  %313 = load i64, i64* %14, align 8
  %314 = load i64, i64* @TK_OBRACE, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %312
  %317 = load i64, i64* %14, align 8
  %318 = load i64, i64* @TK_SQL_SET, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316, %312, %308, %286
  %321 = load i32, i32* %10, align 4
  %322 = load i32*, i32** %7, align 8
  store i32 %321, i32* %322, align 4
  br label %330

323:                                              ; preds = %316
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324, %274
  br label %326

326:                                              ; preds = %325
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %10, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %10, align 4
  br label %215

330:                                              ; preds = %320, %283, %264, %236, %215
  store i32 3, i32* %4, align 4
  br label %334

331:                                              ; preds = %210
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  store i32 0, i32* %4, align 4
  br label %334

334:                                              ; preds = %333, %330, %205, %144, %50, %26
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local i64 @strcasecmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
