; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_config.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/unused/dos/extr_config.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"-vdriver\00", align 1
@video_driver_table = common dso_local global %struct.TYPE_4__* null, align 8
@option = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"-res\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-depth\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-remap\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-scanlines\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"-scale\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"-vsync\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"-throttle\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-skip\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"-sound\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"-sndcard\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"-sndrate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"-swap\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"-joy\00", align 1
@joy_driver_table = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %305, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %308

11:                                               ; preds = %7
  %12 = load i8**, i8*** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @stricmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %51, %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @video_driver_table, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %20
  %29 = load i8**, i8*** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @video_driver_table, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @stricmp(i8* %34, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %28
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @video_driver_table, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 14), align 8
  br label %50

50:                                               ; preds = %43, %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %20

54:                                               ; preds = %20
  br label %55

55:                                               ; preds = %54, %11
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %55
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %64, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @atoi(i8* %69)
  store i8* %70, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 13), align 8
  %71 = load i8**, i8*** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i8* @atoi(i8* %76)
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 12), align 8
  br label %78

78:                                               ; preds = %63, %55
  %79 = load i8**, i8*** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load i8**, i8*** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @atoi(i8* %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 0), align 8
  br label %95

95:                                               ; preds = %86, %78
  %96 = load i8**, i8*** %4, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load i8**, i8*** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @check_bool(i8* %109)
  store i8* %110, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 2), align 8
  br label %111

111:                                              ; preds = %103, %95
  %112 = load i8**, i8*** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i8**, i8*** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %120, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* @check_bool(i8* %125)
  store i8* %126, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 11), align 8
  br label %127

127:                                              ; preds = %119, %111
  %128 = load i8**, i8*** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load i8**, i8*** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %136, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i8* @check_bool(i8* %141)
  store i8* %142, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 10), align 8
  br label %143

143:                                              ; preds = %135, %127
  %144 = load i8**, i8*** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8*, i8** %144, i64 %146
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load i8**, i8*** %4, align 8
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %152, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @check_bool(i8* %157)
  store i8* %158, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 9), align 8
  br label %159

159:                                              ; preds = %151, %143
  %160 = load i8**, i8*** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @stricmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %164)
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load i8**, i8*** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @check_bool(i8* %173)
  store i8* %174, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 8), align 8
  br label %175

175:                                              ; preds = %167, %159
  %176 = load i8**, i8*** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @stricmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %175
  %184 = load i8**, i8*** %4, align 8
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %184, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @atoi(i8* %189)
  %191 = ptrtoint i8* %190 to i32
  store i32 %191, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 1), align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 1), align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %183
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 1), align 4
  br label %195

195:                                              ; preds = %194, %183
  br label %196

196:                                              ; preds = %195, %175
  %197 = load i8**, i8*** %4, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  %201 = load i8*, i8** %200, align 8
  %202 = call i64 @stricmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %196
  %205 = load i8**, i8*** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = add nsw i32 %206, 1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %205, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = call i8* @check_bool(i8* %210)
  store i8* %211, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 7), align 8
  br label %212

212:                                              ; preds = %204, %196
  %213 = load i8**, i8*** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @stricmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %217)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %212
  %221 = load i8**, i8*** %4, align 8
  %222 = load i32, i32* %5, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %221, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = call i8* @atoi(i8* %226)
  store i8* %227, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 6), align 8
  br label %228

228:                                              ; preds = %220, %212
  %229 = load i8**, i8*** %4, align 8
  %230 = load i32, i32* %5, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @stricmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %233)
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %228
  %237 = load i8**, i8*** %4, align 8
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = call i8* @atoi(i8* %242)
  store i8* %243, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 5), align 8
  br label %244

244:                                              ; preds = %236, %228
  %245 = load i8**, i8*** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i64 @stricmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %249)
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %244
  %253 = load i8**, i8*** %4, align 8
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %253, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = call i8* @check_bool(i8* %258)
  store i8* %259, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 4), align 8
  br label %260

260:                                              ; preds = %252, %244
  %261 = load i8**, i8*** %4, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %261, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i64 @stricmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %265)
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %304

268:                                              ; preds = %260
  store i32 0, i32* %6, align 4
  br label %269

269:                                              ; preds = %300, %268
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** @joy_driver_table, align 8
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %303

277:                                              ; preds = %269
  %278 = load i8**, i8*** %4, align 8
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %278, i64 %281
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** @joy_driver_table, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i8*, i8** %288, align 8
  %290 = call i64 @stricmp(i8* %283, i8* %289)
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %299

292:                                              ; preds = %277
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** @joy_driver_table, align 8
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 3), align 8
  br label %299

299:                                              ; preds = %292, %277
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %6, align 4
  br label %269

303:                                              ; preds = %269
  br label %304

304:                                              ; preds = %303, %260
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %5, align 4
  br label %7

308:                                              ; preds = %7
  %309 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 2), align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @option, i32 0, i32 0), align 8
  br label %312

312:                                              ; preds = %311, %308
  ret void
}

declare dso_local i64 @stricmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i8* @check_bool(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
