; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_JsonTryParseValueAddToPack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_JsonTryParseValueAddToPack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i8* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"_bool\00", align 1
@JSON_TYPE_BOOL = common dso_local global i64 0, align 8
@JSON_TYPE_NUMBER = common dso_local global i64 0, align 8
@JSON_TYPE_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_u32\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_u64\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_str\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"_utf\00", align 1
@.str.7 = private unnamed_addr constant [5 x i32] [i32 116, i32 114, i32 117, i32 101, i32 0], align 4
@.str.8 = private unnamed_addr constant [6 x i32] [i32 102, i32 97, i32 108, i32 115, i32 101, i32 0], align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"_bin\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"_dt\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"_ip\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JsonTryParseValueAddToPack(i32* %0, %struct.TYPE_15__* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [64 x i8], align 16
  %19 = alloca [64 x i8], align 16
  %20 = alloca [64 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_16__*, align 8
  %27 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %14, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  store i32 1, i32* %16, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %36 = icmp eq %struct.TYPE_15__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %557

38:                                               ; preds = %34
  %39 = trunc i64 %29 to i32
  %40 = load i8*, i8** %10, align 8
  %41 = call i64 @TrimEndWith(i8* %31, i32 %39, i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %112

43:                                               ; preds = %38
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @JSON_TYPE_BOOL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MAKEBOOL(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call %struct.TYPE_16__* @PackAddBoolEx(i32* %54, i8* %31, i32 %59, i32 %60, i32 %61)
  %63 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %62)
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 %53, i32* %64, align 4
  store i32 1, i32* %16, align 4
  br label %111

65:                                               ; preds = %43
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @JSON_TYPE_NUMBER, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load i32*, i32** %8, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MAKEBOOL(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call %struct.TYPE_16__* @PackAddBoolEx(i32* %76, i8* %31, i32 %81, i32 %82, i32 %83)
  %85 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %84)
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %75, i32* %86, align 4
  store i32 1, i32* %16, align 4
  br label %110

87:                                               ; preds = %65
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @JSON_TYPE_STRING, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @ToBool(i8* %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call %struct.TYPE_16__* @PackAddBoolEx(i32* %98, i8* %31, i32 %103, i32 %104, i32 %105)
  %107 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %106)
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %97, i32* %108, align 4
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %93, %87
  br label %110

110:                                              ; preds = %109, %71
  br label %111

111:                                              ; preds = %110, %49
  br label %555

112:                                              ; preds = %38
  %113 = trunc i64 %29 to i32
  %114 = load i8*, i8** %10, align 8
  %115 = call i64 @TrimEndWith(i8* %31, i32 %113, i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %185

117:                                              ; preds = %112
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @JSON_TYPE_BOOL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = load i32*, i32** %8, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @MAKEBOOL(i32 %132)
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call %struct.TYPE_16__* @PackAddIntEx(i32* %128, i8* %31, i32 %133, i32 %134, i32 %135)
  %137 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %136)
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  store i32 %127, i32* %138, align 4
  store i32 1, i32* %16, align 4
  br label %184

139:                                              ; preds = %117
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @JSON_TYPE_NUMBER, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = load i32*, i32** %8, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call %struct.TYPE_16__* @PackAddIntEx(i32* %150, i8* %31, i32 %154, i32 %155, i32 %156)
  %158 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %157)
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  store i32 %149, i32* %159, align 4
  store i32 1, i32* %16, align 4
  br label %183

160:                                              ; preds = %139
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @JSON_TYPE_STRING, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %160
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @ToInt(i8* %175)
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = call %struct.TYPE_16__* @PackAddIntEx(i32* %171, i8* %31, i32 %176, i32 %177, i32 %178)
  %180 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %179)
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i32 %170, i32* %181, align 4
  store i32 1, i32* %16, align 4
  br label %182

182:                                              ; preds = %166, %160
  br label %183

183:                                              ; preds = %182, %145
  br label %184

184:                                              ; preds = %183, %123
  br label %554

185:                                              ; preds = %112
  %186 = trunc i64 %29 to i32
  %187 = load i8*, i8** %10, align 8
  %188 = call i64 @TrimEndWith(i8* %31, i32 %186, i8* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %258

190:                                              ; preds = %185
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @JSON_TYPE_BOOL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %212

196:                                              ; preds = %190
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load i32*, i32** %8, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @MAKEBOOL(i32 %205)
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %12, align 4
  %209 = call %struct.TYPE_16__* @PackAddInt64Ex(i32* %201, i8* %31, i32 %206, i32 %207, i32 %208)
  %210 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %209)
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  store i32 %200, i32* %211, align 4
  store i32 1, i32* %16, align 4
  br label %257

212:                                              ; preds = %190
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @JSON_TYPE_NUMBER, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %212
  %219 = load i32, i32* %13, align 4
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = load i32*, i32** %8, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* %12, align 4
  %230 = call %struct.TYPE_16__* @PackAddInt64Ex(i32* %223, i8* %31, i32 %227, i32 %228, i32 %229)
  %231 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %230)
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 0
  store i32 %222, i32* %232, align 4
  store i32 1, i32* %16, align 4
  br label %256

233:                                              ; preds = %212
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @JSON_TYPE_STRING, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %255

239:                                              ; preds = %233
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  %242 = xor i1 %241, true
  %243 = zext i1 %242 to i32
  %244 = load i32*, i32** %8, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 @ToInt64(i8* %248)
  %250 = load i32, i32* %11, align 4
  %251 = load i32, i32* %12, align 4
  %252 = call %struct.TYPE_16__* @PackAddInt64Ex(i32* %244, i8* %31, i32 %249, i32 %250, i32 %251)
  %253 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %252)
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  store i32 %243, i32* %254, align 4
  store i32 1, i32* %16, align 4
  br label %255

255:                                              ; preds = %239, %233
  br label %256

256:                                              ; preds = %255, %218
  br label %257

257:                                              ; preds = %256, %196
  br label %553

258:                                              ; preds = %185
  %259 = trunc i64 %29 to i32
  %260 = load i8*, i8** %10, align 8
  %261 = call i64 @TrimEndWith(i8* %31, i32 %259, i8* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %336

263:                                              ; preds = %258
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @JSON_TYPE_BOOL, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %288

269:                                              ; preds = %263
  %270 = load i32, i32* %13, align 4
  %271 = icmp ne i32 %270, 0
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i32
  %274 = load i32*, i32** %8, align 8
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @MAKEBOOL(i32 %278)
  %280 = icmp ne i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %12, align 4
  %285 = call %struct.TYPE_16__* @PackAddStrEx(i32* %274, i8* %31, i8* %282, i32 %283, i32 %284)
  %286 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %285)
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  store i32 %273, i32* %287, align 4
  store i32 1, i32* %16, align 4
  br label %335

288:                                              ; preds = %263
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @JSON_TYPE_NUMBER, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %312

294:                                              ; preds = %288
  %295 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @ToStr64(i8* %295, i32 %299)
  %301 = load i32, i32* %13, align 4
  %302 = icmp ne i32 %301, 0
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i32
  %305 = load i32*, i32** %8, align 8
  %306 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %307 = load i32, i32* %11, align 4
  %308 = load i32, i32* %12, align 4
  %309 = call %struct.TYPE_16__* @PackAddStrEx(i32* %305, i8* %31, i8* %306, i32 %307, i32 %308)
  %310 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %309)
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  store i32 %304, i32* %311, align 4
  store i32 1, i32* %16, align 4
  br label %334

312:                                              ; preds = %288
  %313 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @JSON_TYPE_STRING, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %333

318:                                              ; preds = %312
  %319 = load i32, i32* %13, align 4
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  %323 = load i32*, i32** %8, align 8
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 2
  %327 = load i8*, i8** %326, align 8
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %12, align 4
  %330 = call %struct.TYPE_16__* @PackAddStrEx(i32* %323, i8* %31, i8* %327, i32 %328, i32 %329)
  %331 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %330)
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  store i32 %322, i32* %332, align 4
  store i32 1, i32* %16, align 4
  br label %333

333:                                              ; preds = %318, %312
  br label %334

334:                                              ; preds = %333, %294
  br label %335

335:                                              ; preds = %334, %269
  br label %552

336:                                              ; preds = %258
  %337 = trunc i64 %29 to i32
  %338 = load i8*, i8** %10, align 8
  %339 = call i64 @TrimEndWith(i8* %31, i32 %337, i8* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %422

341:                                              ; preds = %336
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @JSON_TYPE_BOOL, align 8
  %346 = icmp eq i64 %344, %345
  br i1 %346, label %347, label %367

347:                                              ; preds = %341
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = load i32*, i32** %8, align 8
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @MAKEBOOL(i32 %356)
  %358 = icmp ne i32 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.8, i64 0, i64 0)
  %361 = bitcast i32* %360 to i8*
  %362 = load i32, i32* %11, align 4
  %363 = load i32, i32* %12, align 4
  %364 = call %struct.TYPE_16__* @PackAddUniStrEx(i32* %352, i8* %31, i8* %361, i32 %362, i32 %363)
  %365 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %364)
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 0
  store i32 %351, i32* %366, align 4
  store i32 1, i32* %16, align 4
  br label %421

367:                                              ; preds = %341
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @JSON_TYPE_NUMBER, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %394

373:                                              ; preds = %367
  %374 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @ToStr64(i8* %374, i32 %378)
  %380 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %381 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %382 = call i32 @StrToUni(i8* %380, i32 64, i8* %381)
  %383 = load i32, i32* %13, align 4
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  %386 = zext i1 %385 to i32
  %387 = load i32*, i32** %8, align 8
  %388 = getelementptr inbounds [64 x i8], [64 x i8]* %20, i64 0, i64 0
  %389 = load i32, i32* %11, align 4
  %390 = load i32, i32* %12, align 4
  %391 = call %struct.TYPE_16__* @PackAddUniStrEx(i32* %387, i8* %31, i8* %388, i32 %389, i32 %390)
  %392 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %391)
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 0
  store i32 %386, i32* %393, align 4
  store i32 1, i32* %16, align 4
  br label %420

394:                                              ; preds = %367
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @JSON_TYPE_STRING, align 8
  %399 = icmp eq i64 %397, %398
  br i1 %399, label %400, label %419

400:                                              ; preds = %394
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 2
  %404 = load i8*, i8** %403, align 8
  %405 = call i8* @CopyUtfToUni(i8* %404)
  store i8* %405, i8** %21, align 8
  %406 = load i32, i32* %13, align 4
  %407 = icmp ne i32 %406, 0
  %408 = xor i1 %407, true
  %409 = zext i1 %408 to i32
  %410 = load i32*, i32** %8, align 8
  %411 = load i8*, i8** %21, align 8
  %412 = load i32, i32* %11, align 4
  %413 = load i32, i32* %12, align 4
  %414 = call %struct.TYPE_16__* @PackAddUniStrEx(i32* %410, i8* %31, i8* %411, i32 %412, i32 %413)
  %415 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %414)
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 0
  store i32 %409, i32* %416, align 4
  %417 = load i8*, i8** %21, align 8
  %418 = call i32 @Free(i8* %417)
  store i32 1, i32* %16, align 4
  br label %419

419:                                              ; preds = %400, %394
  br label %420

420:                                              ; preds = %419, %373
  br label %421

421:                                              ; preds = %420, %347
  br label %551

422:                                              ; preds = %336
  %423 = trunc i64 %29 to i32
  %424 = load i8*, i8** %10, align 8
  %425 = call i64 @TrimEndWith(i8* %31, i32 %423, i8* %424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %465

427:                                              ; preds = %422
  %428 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @JSON_TYPE_STRING, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %464

433:                                              ; preds = %427
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %435 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 2
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @StrLen(i8* %437)
  store i32 %438, i32* %22, align 4
  %439 = load i32, i32* %22, align 4
  %440 = mul nsw i32 %439, 4
  %441 = add nsw i32 %440, 64
  %442 = call i8* @ZeroMalloc(i32 %441)
  store i8* %442, i8** %23, align 8
  %443 = load i8*, i8** %23, align 8
  %444 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %445 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 2
  %447 = load i8*, i8** %446, align 8
  %448 = load i32, i32* %22, align 4
  %449 = call i32 @B64_Decode(i8* %443, i8* %447, i32 %448)
  store i32 %449, i32* %24, align 4
  %450 = load i32, i32* %13, align 4
  %451 = icmp ne i32 %450, 0
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i32
  %454 = load i32*, i32** %8, align 8
  %455 = load i8*, i8** %23, align 8
  %456 = load i32, i32* %24, align 4
  %457 = load i32, i32* %11, align 4
  %458 = load i32, i32* %12, align 4
  %459 = call %struct.TYPE_16__* @PackAddDataEx(i32* %454, i8* %31, i8* %455, i32 %456, i32 %457, i32 %458)
  %460 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %459)
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %460, i32 0, i32 0
  store i32 %453, i32* %461, align 4
  %462 = load i8*, i8** %23, align 8
  %463 = call i32 @Free(i8* %462)
  store i32 1, i32* %16, align 4
  br label %464

464:                                              ; preds = %433, %427
  br label %550

465:                                              ; preds = %422
  %466 = trunc i64 %29 to i32
  %467 = load i8*, i8** %10, align 8
  %468 = call i64 @TrimEndWith(i8* %31, i32 %466, i8* %467, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %522

470:                                              ; preds = %465
  %471 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %472 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @JSON_TYPE_NUMBER, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %491

476:                                              ; preds = %470
  %477 = load i32, i32* %13, align 4
  %478 = icmp ne i32 %477, 0
  %479 = xor i1 %478, true
  %480 = zext i1 %479 to i32
  %481 = load i32*, i32** %8, align 8
  %482 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %483 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %11, align 4
  %487 = load i32, i32* %12, align 4
  %488 = call %struct.TYPE_16__* @PackAddInt64Ex(i32* %481, i8* %31, i32 %485, i32 %486, i32 %487)
  %489 = call %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__* %488)
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 0
  store i32 %480, i32* %490, align 4
  store i32 1, i32* %16, align 4
  br label %521

491:                                              ; preds = %470
  %492 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = load i64, i64* @JSON_TYPE_STRING, align 8
  %496 = icmp eq i64 %494, %495
  br i1 %496, label %497, label %520

497:                                              ; preds = %491
  %498 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %499 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 2
  %501 = load i8*, i8** %500, align 8
  %502 = call i32 @DateTimeStrRFC3339ToSystemTime64(i8* %501)
  store i32 %502, i32* %25, align 4
  %503 = load i32*, i32** %8, align 8
  %504 = load i32, i32* %25, align 4
  %505 = load i32, i32* %11, align 4
  %506 = load i32, i32* %12, align 4
  %507 = call %struct.TYPE_16__* @PackAddInt64Ex(i32* %503, i8* %31, i32 %504, i32 %505, i32 %506)
  store %struct.TYPE_16__* %507, %struct.TYPE_16__** %26, align 8
  %508 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %509 = icmp ne %struct.TYPE_16__* %508, null
  br i1 %509, label %510, label %519

510:                                              ; preds = %497
  %511 = load i32, i32* %13, align 4
  %512 = icmp ne i32 %511, 0
  %513 = xor i1 %512, true
  %514 = zext i1 %513 to i32
  %515 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %516 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %515, i32 0, i32 0
  store i32 %514, i32* %516, align 4
  %517 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %518 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %517, i32 0, i32 1
  store i32 1, i32* %518, align 4
  br label %519

519:                                              ; preds = %510, %497
  store i32 1, i32* %16, align 4
  br label %520

520:                                              ; preds = %519, %491
  br label %521

521:                                              ; preds = %520, %476
  br label %549

522:                                              ; preds = %465
  %523 = trunc i64 %29 to i32
  %524 = load i8*, i8** %10, align 8
  %525 = call i64 @TrimEndWith(i8* %31, i32 %523, i8* %524, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %548

527:                                              ; preds = %522
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = load i64, i64* @JSON_TYPE_STRING, align 8
  %532 = icmp eq i64 %530, %531
  br i1 %532, label %533, label %547

533:                                              ; preds = %527
  %534 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %534, i32 0, i32 1
  %536 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %535, i32 0, i32 2
  %537 = load i8*, i8** %536, align 8
  %538 = call i64 @StrToIP(i32* %27, i8* %537)
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %533
  %541 = load i32*, i32** %8, align 8
  %542 = load i32, i32* %11, align 4
  %543 = load i32, i32* %12, align 4
  %544 = load i32, i32* %13, align 4
  %545 = call i32 @PackAddIpEx2(i32* %541, i8* %31, i32* %27, i32 %542, i32 %543, i32 %544)
  store i32 1, i32* %16, align 4
  br label %546

546:                                              ; preds = %540, %533
  br label %547

547:                                              ; preds = %546, %527
  br label %548

548:                                              ; preds = %547, %522
  br label %549

549:                                              ; preds = %548, %521
  br label %550

550:                                              ; preds = %549, %464
  br label %551

551:                                              ; preds = %550, %421
  br label %552

552:                                              ; preds = %551, %335
  br label %553

553:                                              ; preds = %552, %257
  br label %554

554:                                              ; preds = %553, %184
  br label %555

555:                                              ; preds = %554, %111
  %556 = load i32, i32* %16, align 4
  store i32 %556, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %557

557:                                              ; preds = %555, %37
  %558 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %558)
  %559 = load i32, i32* %7, align 4
  ret i32 %559
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @TrimEndWith(i8*, i32, i8*, i8*) #2

declare dso_local %struct.TYPE_13__* @ElementNullSafe(%struct.TYPE_16__*) #2

declare dso_local %struct.TYPE_16__* @PackAddBoolEx(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @MAKEBOOL(i32) #2

declare dso_local i32 @ToBool(i8*) #2

declare dso_local %struct.TYPE_16__* @PackAddIntEx(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ToInt(i8*) #2

declare dso_local %struct.TYPE_16__* @PackAddInt64Ex(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @ToInt64(i8*) #2

declare dso_local %struct.TYPE_16__* @PackAddStrEx(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @ToStr64(i8*, i32) #2

declare dso_local %struct.TYPE_16__* @PackAddUniStrEx(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @StrToUni(i8*, i32, i8*) #2

declare dso_local i8* @CopyUtfToUni(i8*) #2

declare dso_local i32 @Free(i8*) #2

declare dso_local i32 @StrLen(i8*) #2

declare dso_local i8* @ZeroMalloc(i32) #2

declare dso_local i32 @B64_Decode(i8*, i8*, i32) #2

declare dso_local %struct.TYPE_16__* @PackAddDataEx(i32*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @DateTimeStrRFC3339ToSystemTime64(i8*) #2

declare dso_local i64 @StrToIP(i32*, i8*) #2

declare dso_local i32 @PackAddIpEx2(i32*, i8*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
