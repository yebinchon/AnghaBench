; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c_main.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_lcc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, %struct.TYPE_3__* }

@progname = common dso_local global i8* null, align 8
@ac = common dso_local global i32 0, align 4
@av = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@interrupt = common dso_local global i64 0, align 8
@SIGTERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@tempdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"-D__LCC__\00", align 1
@plist = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"LCCDIR\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"-lccdir=%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@suffixes = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"-o would overwrite %s\00", align 1
@outfile = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"unrecognized option `%s'\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"-target\00", align 1
@cflag = common dso_local global i64 0, align 8
@Sflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"%s: -o %s ignored\0A\00", align 1
@include = common dso_local global i8** null, align 8
@ilist = common dso_local global %struct.TYPE_3__* null, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"can't find `%s'\00", align 1
@errcnt = common dso_local global i64 0, align 8
@Eflag = common dso_local global i32 0, align 4
@llist = common dso_local global i64* null, align 8
@ld = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@rmlist = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 50
  store i32 %15, i32* @ac, align 4
  %16 = load i32, i32* @ac, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @alloc(i32 %19)
  store i32 %20, i32* @av, align 4
  %21 = load i32, i32* @SIGINT, align 4
  %22 = load i64, i64* @SIG_IGN, align 8
  %23 = call i64 @signal(i32 %21, i64 %22)
  %24 = load i64, i64* @SIG_IGN, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @SIGINT, align 4
  %28 = load i64, i64* @interrupt, align 8
  %29 = call i64 @signal(i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* @SIGTERM, align 4
  %32 = load i64, i64* @SIG_IGN, align 8
  %33 = call i64 @signal(i32 %31, i64 %32)
  %34 = load i64, i64* @SIG_IGN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @SIGTERM, align 4
  %38 = load i64, i64* @interrupt, align 8
  %39 = call i64 @signal(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** @tempdir, align 8
  br label %57

45:                                               ; preds = %40
  %46 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %49, i8** @tempdir, align 8
  br label %56

50:                                               ; preds = %45
  %51 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** @tempdir, align 8
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i8*, i8** @tempdir, align 8
  %59 = call i32 @assert(i8* %58)
  %60 = load i8*, i8** @tempdir, align 8
  %61 = call i32 @strlen(i8* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %91, %57
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i8*, i8** @tempdir, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 47
  br i1 %73, label %83, label %74

74:                                               ; preds = %65, %62
  %75 = load i8*, i8** @tempdir, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 92
  br label %83

83:                                               ; preds = %74, %65
  %84 = phi i1 [ true, %65 ], [ %82, %74 ]
  br i1 %84, label %85, label %94

85:                                               ; preds = %83
  %86 = load i8*, i8** @tempdir, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %6, align 4
  br label %62

94:                                               ; preds = %83
  %95 = load i32, i32* %4, align 4
  %96 = icmp sle i32 %95, 1
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = call i32 (...) @help()
  %99 = call i32 @exit(i32 0) #3
  unreachable

100:                                              ; preds = %94
  %101 = call i64 @append(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 0)
  store i64 %101, i64* @plist, align 8
  %102 = call i32 (...) @initinputs()
  %103 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %107 = call i32 @stringf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  %108 = call i32 @option(i32 %107)
  br label %109

109:                                              ; preds = %105, %100
  store i32 0, i32* %8, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %110

110:                                              ; preds = %250, %109
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %253

114:                                              ; preds = %110
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %159

122:                                              ; preds = %114
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = load i8**, i8*** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load i32*, i32** @suffixes, align 8
  %134 = call i64 @suffix(i8* %132, i32* %133, i32 2)
  %135 = icmp sge i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load i8**, i8*** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8*, i8** %137, i64 %139
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %141)
  %143 = call i32 @exit(i32 8) #3
  unreachable

144:                                              ; preds = %127
  %145 = load i8**, i8*** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** @outfile, align 8
  br label %250

150:                                              ; preds = %122
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %151, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %156)
  %158 = call i32 @exit(i32 8) #3
  unreachable

159:                                              ; preds = %114
  %160 = load i8**, i8*** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %189

167:                                              ; preds = %159
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %188

175:                                              ; preds = %167
  %176 = load i8**, i8*** %5, align 8
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %176, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 45
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %185, %175, %167
  br label %250

189:                                              ; preds = %159
  %190 = load i8**, i8*** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8*, i8** %190, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 45
  br i1 %197, label %198, label %215

198:                                              ; preds = %189
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp ne i32 %206, 108
  br i1 %207, label %208, label %215

208:                                              ; preds = %198
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @opt(i8* %213)
  br label %250

215:                                              ; preds = %198, %189
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 45
  br i1 %223, label %224, label %236

224:                                              ; preds = %215
  %225 = load i8**, i8*** %5, align 8
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = load i32*, i32** @suffixes, align 8
  %231 = call i64 @suffix(i8* %229, i32* %230, i32 3)
  %232 = icmp sge i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %224
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %233, %224, %215
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  %240 = load i8**, i8*** %5, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load i8**, i8*** %5, align 8
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8*, i8** %245, i64 %248
  store i8* %244, i8** %249, align 8
  br label %250

250:                                              ; preds = %239, %208, %188, %144
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %110

253:                                              ; preds = %110
  %254 = load i64, i64* @cflag, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i64, i64* @Sflag, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %270

259:                                              ; preds = %256, %253
  %260 = load i8*, i8** @outfile, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %270

262:                                              ; preds = %259
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 1
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load i32, i32* @stderr, align 4
  %267 = load i8*, i8** @progname, align 8
  %268 = load i8*, i8** @outfile, align 8
  %269 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %267, i8* %268)
  store i8* null, i8** @outfile, align 8
  br label %270

270:                                              ; preds = %265, %262, %259, %256
  %271 = load i8**, i8*** %5, align 8
  %272 = load i32, i32* %7, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  store i8* null, i8** %274, align 8
  store i32 0, i32* %6, align 4
  br label %275

275:                                              ; preds = %290, %270
  %276 = load i8**, i8*** @include, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8*, i8** %276, i64 %278
  %280 = load i8*, i8** %279, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %282, label %293

282:                                              ; preds = %275
  %283 = load i8**, i8*** @include, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8*, i8** %283, i64 %285
  %287 = load i8*, i8** %286, align 8
  %288 = load i64, i64* @plist, align 8
  %289 = call i64 @append(i8* %287, i64 %288)
  store i64 %289, i64* @plist, align 8
  br label %290

290:                                              ; preds = %282
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %6, align 4
  br label %275

293:                                              ; preds = %275
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ilist, align 8
  %295 = icmp ne %struct.TYPE_3__* %294, null
  br i1 %295, label %296, label %312

296:                                              ; preds = %293
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ilist, align 8
  store %struct.TYPE_3__* %297, %struct.TYPE_3__** %9, align 8
  br label %298

298:                                              ; preds = %307, %296
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %300, align 8
  store %struct.TYPE_3__* %301, %struct.TYPE_3__** %9, align 8
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  %305 = load i64, i64* @plist, align 8
  %306 = call i64 @append(i8* %304, i64 %305)
  store i64 %306, i64* @plist, align 8
  br label %307

307:                                              ; preds = %298
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ilist, align 8
  %310 = icmp ne %struct.TYPE_3__* %308, %309
  br i1 %310, label %298, label %311

311:                                              ; preds = %307
  br label %312

312:                                              ; preds = %311, %293
  store %struct.TYPE_3__* null, %struct.TYPE_3__** @ilist, align 8
  store i32 1, i32* %6, align 4
  br label %313

313:                                              ; preds = %378, %312
  %314 = load i8**, i8*** %5, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8*, i8** %314, i64 %316
  %318 = load i8*, i8** %317, align 8
  %319 = icmp ne i8* %318, null
  br i1 %319, label %320, label %381

320:                                              ; preds = %313
  %321 = load i8**, i8*** %5, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %321, i64 %323
  %325 = load i8*, i8** %324, align 8
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 45
  br i1 %328, label %329, label %336

329:                                              ; preds = %320
  %330 = load i8**, i8*** %5, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 @opt(i8* %334)
  br label %377

336:                                              ; preds = %320
  %337 = load i8**, i8*** %5, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8*, i8** %337, i64 %339
  %341 = load i8*, i8** %340, align 8
  %342 = call i8* @exists(i8* %341)
  store i8* %342, i8** %10, align 8
  %343 = load i8*, i8** %10, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %369

345:                                              ; preds = %336
  %346 = load i8*, i8** %10, align 8
  %347 = load i8**, i8*** %5, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = call i64 @strcmp(i8* %346, i8* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %345
  %355 = load i32, i32* %8, align 4
  %356 = icmp sgt i32 %355, 1
  br i1 %356, label %357, label %366

357:                                              ; preds = %354
  %358 = load i8*, i8** %10, align 8
  %359 = load i32*, i32** @suffixes, align 8
  %360 = call i64 @suffix(i8* %358, i32* %359, i32 3)
  %361 = icmp sge i64 %360, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %357, %345
  %363 = load i32, i32* @stderr, align 4
  %364 = load i8*, i8** %10, align 8
  %365 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %363, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %364)
  br label %366

366:                                              ; preds = %362, %357, %354
  %367 = load i8*, i8** %10, align 8
  %368 = call i32 @filename(i8* %367, i32 0)
  br label %376

369:                                              ; preds = %336
  %370 = load i8**, i8*** %5, align 8
  %371 = load i32, i32* %6, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8*, i8** %370, i64 %372
  %374 = load i8*, i8** %373, align 8
  %375 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i8* %374)
  br label %376

376:                                              ; preds = %369, %366
  br label %377

377:                                              ; preds = %376, %329
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %6, align 4
  br label %313

381:                                              ; preds = %313
  %382 = load i64, i64* @errcnt, align 8
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %427

384:                                              ; preds = %381
  %385 = load i32, i32* @Eflag, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %427, label %387

387:                                              ; preds = %384
  %388 = load i64, i64* @Sflag, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %427, label %390

390:                                              ; preds = %387
  %391 = load i64, i64* @cflag, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %427, label %393

393:                                              ; preds = %390
  %394 = load i64*, i64** @llist, align 8
  %395 = getelementptr inbounds i64, i64* %394, i64 1
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %427

398:                                              ; preds = %393
  %399 = load i32, i32* @ld, align 4
  %400 = load i64*, i64** @llist, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 0
  %402 = load i64, i64* %401, align 8
  %403 = load i64*, i64** @llist, align 8
  %404 = getelementptr inbounds i64, i64* %403, i64 1
  %405 = load i64, i64* %404, align 8
  %406 = load i8*, i8** @outfile, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %408, label %410

408:                                              ; preds = %398
  %409 = load i8*, i8** @outfile, align 8
  br label %416

410:                                              ; preds = %398
  %411 = load i32*, i32** @suffixes, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 4
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @first(i32 %413)
  %415 = call i8* @concat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 %414)
  br label %416

416:                                              ; preds = %410, %408
  %417 = phi i8* [ %409, %408 ], [ %415, %410 ]
  %418 = call i64 @append(i8* %417, i64 0)
  %419 = call i32 @compose(i32 %399, i64 %402, i64 %405, i64 %418)
  %420 = load i32, i32* @av, align 4
  %421 = call i64 @callsys(i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %416
  %424 = load i64, i64* @errcnt, align 8
  %425 = add nsw i64 %424, 1
  store i64 %425, i64* @errcnt, align 8
  br label %426

426:                                              ; preds = %423, %416
  br label %427

427:                                              ; preds = %426, %393, %390, %387, %384, %381
  %428 = load i32, i32* @rmlist, align 4
  %429 = call i32 @rm(i32 %428)
  %430 = load i64, i64* @errcnt, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %434

432:                                              ; preds = %427
  %433 = load i32, i32* @EXIT_FAILURE, align 4
  br label %436

434:                                              ; preds = %427
  %435 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %436

436:                                              ; preds = %434, %432
  %437 = phi i32 [ %433, %432 ], [ %435, %434 ]
  ret i32 %437
}

declare dso_local i32 @alloc(i32) #1

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @append(i8*, i64) #1

declare dso_local i32 @initinputs(...) #1

declare dso_local i32 @option(i32) #1

declare dso_local i32 @stringf(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @suffix(i8*, i32*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @opt(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @exists(i8*) #1

declare dso_local i32 @filename(i8*, i32) #1

declare dso_local i32 @compose(i32, i64, i64, i64) #1

declare dso_local i8* @concat(i8*, i32) #1

declare dso_local i32 @first(i32) #1

declare dso_local i64 @callsys(i32) #1

declare dso_local i32 @rm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
