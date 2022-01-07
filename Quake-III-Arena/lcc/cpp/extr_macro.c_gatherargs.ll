; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_gatherargs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_macro.c_gatherargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@END = common dso_local global i64 0, align 8
@LP = common dso_local global i64 0, align 8
@NL = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"EOF in macro arglist\00", align 1
@RP = common dso_local global i64 0, align 8
@DSHARP = common dso_local global i64 0, align 8
@DSHARP1 = common dso_local global i64 0, align 8
@COMMA = common dso_local global i64 0, align 8
@NARG = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Sorry, too many macro arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatherargs(%struct.TYPE_10__* %0, %struct.TYPE_10__** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 -1, i32* %15, align 4
  br label %16

16:                                               ; preds = %74, %3
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 1
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %18, align 8
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = icmp uge %struct.TYPE_11__* %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %16
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = call i32 @gettokens(%struct.TYPE_10__* %31, i32 0)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 -1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @END, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %30
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 -1
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %43, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = sext i32 %46 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %48, align 8
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %272

54:                                               ; preds = %30
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %75

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %4, align 4
  br label %272

74:                                               ; preds = %64
  br label %16

75:                                               ; preds = %63
  %76 = load i32*, i32** %7, align 8
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 1
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %81, align 8
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %171, %135, %75
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %178

87:                                               ; preds = %84
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = icmp uge %struct.TYPE_11__* %90, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = call i32 @gettokens(%struct.TYPE_10__* %96, i32 0)
  br label %98

98:                                               ; preds = %95, %87
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  store i32 0, i32* %14, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = call i32 @makespace(%struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @END, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 -1
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %114, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = sext i32 %117 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %119, align 8
  %124 = load i32, i32* @ERROR, align 4
  %125 = call i32 @error(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %272

127:                                              ; preds = %104
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NL, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %127
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 1
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %137, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = call i32 @adjustrow(%struct.TYPE_10__* %140, i32 -1)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 -1
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %143, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %147 = call i32 @makespace(%struct.TYPE_10__* %146)
  store i32 1, i32* %14, align 4
  br label %84

148:                                              ; preds = %127
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @LP, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %171

159:                                              ; preds = %148
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @RP, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %159
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %167, %159
  br label %171

171:                                              ; preds = %170, %156
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 1
  store %struct.TYPE_11__* %175, %struct.TYPE_11__** %173, align 8
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %84

178:                                              ; preds = %84
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = sext i32 %179 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i64 %184
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %181, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 %190
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %11, align 8
  br label %192

192:                                              ; preds = %267, %178
  %193 = load i32, i32* %8, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %270

195:                                              ; preds = %192
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @LP, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %267

204:                                              ; preds = %195
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @RP, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %210, %204
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @DSHARP, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load i64, i64* @DSHARP1, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %219, %213
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @COMMA, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i32, i32* %8, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %229, %223
  %233 = load i32, i32* %8, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %266

235:                                              ; preds = %232
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i64 -1
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @LP, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %266

242:                                              ; preds = %235, %229
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @NARG, align 4
  %246 = sub nsw i32 %245, 1
  %247 = icmp sge i32 %244, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i32, i32* @FATAL, align 4
  %250 = call i32 @error(i32 %249, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %242
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store %struct.TYPE_11__* %252, %struct.TYPE_11__** %253, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  store %struct.TYPE_11__* %252, %struct.TYPE_11__** %254, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store %struct.TYPE_11__* %255, %struct.TYPE_11__** %256, align 8
  %257 = call %struct.TYPE_10__* @normtokenrow(%struct.TYPE_10__* %12)
  %258 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %6, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %258, i64 %262
  store %struct.TYPE_10__* %257, %struct.TYPE_10__** %263, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i64 1
  store %struct.TYPE_11__* %265, %struct.TYPE_11__** %10, align 8
  br label %266

266:                                              ; preds = %251, %235, %232
  br label %267

267:                                              ; preds = %266, %201
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 1
  store %struct.TYPE_11__* %269, %struct.TYPE_11__** %11, align 8
  br label %192

270:                                              ; preds = %192
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %4, align 4
  br label %272

272:                                              ; preds = %270, %112, %72, %41
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local i32 @gettokens(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @makespace(%struct.TYPE_10__*) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @adjustrow(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @normtokenrow(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
