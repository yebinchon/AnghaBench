; ModuleID = '/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_ParseParams.c'
source_filename = "/home/carl/AnghaBench/brotli/c/tools/extr_brotli.c_ParseParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32*, i8, i32, i8*, i32, i8*, i64, i64, i32, i32, i8*, i8*, i8*, i8* }

@BROTLI_FALSE = common dso_local global i8* null, align 8
@MAX_OPTIONS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"too many options passed\0A\00", align 1
@COMMAND_INVALID = common dso_local global i64 0, align 8
@BROTLI_TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"quality already set\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"write to standard output already set\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"command already set when parsing -d\0A\00", align 1
@COMMAND_DECOMPRESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"force output overwrite already set\0A\00", align 1
@COMMAND_HELP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [47 x i8] c"argument --rm / -j or --keep / -k already set\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"argument --no-copy-stat / -n already set\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"command already set when parsing -t\0A\00", align 1
@COMMAND_TEST_INTEGRITY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"argument --verbose / -v already set\0A\00", align 1
@COMMAND_VERSION = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"invalid argument -%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"expected parameter for argument -%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"write to standard output already set (-o)\0A\00", align 1
@BROTLI_MIN_QUALITY = common dso_local global i32 0, align 4
@BROTLI_MAX_QUALITY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"error parsing quality value [%s]\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"lgwin parameter already set\0A\00", align 1
@BROTLI_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"error parsing lgwin value [%s]\0A\00", align 1
@BROTLI_MIN_WINDOW_BITS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [52 x i8] c"lgwin parameter (%d) smaller than the minimum (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"suffix already set\0A\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"command already set when parsing --decompress\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"no-copy-stat\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"command already set when parsing --test\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"must pass the parameter as --%s=value\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"lgwin\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"large_window\00", align 1
@BROTLI_LARGE_MAX_WINDOW_BITS = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"write to standard output already set (--output)\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"invalid parameter: [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @ParseParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ParseParams(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  store i8** %29, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %30 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %32, i8** %12, align 8
  %33 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** @BROTLI_FALSE, align 8
  store i8* %36, i8** %16, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @ParseAlias(i8* %39)
  store i64 %40, i64* %17, align 8
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %871, %1
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %874

45:                                               ; preds = %41
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %18, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i8*, i8** %18, align 8
  %55 = call i64 @strlen(i8* %54)
  br label %57

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i64 [ %55, %53 ], [ 0, %56 ]
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %19, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  store i32 %62, i32* %69, align 4
  br label %871

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAX_OPTIONS, align 4
  %73 = sub nsw i32 %72, 2
  %74 = icmp sgt i32 %71, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %78 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %78, i64* %2, align 8
  br label %936

79:                                               ; preds = %70
  %80 = load i8*, i8** %16, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %18, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 45
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %19, align 8
  %90 = icmp eq i64 %89, 1
  br i1 %90, label %91, label %100

91:                                               ; preds = %88, %82, %79
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %19, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* %19, align 8
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %97, %91
  br label %871

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %101, i32* %108, align 4
  %109 = load i64, i64* %19, align 8
  %110 = icmp eq i64 %109, 2
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load i8*, i8** %18, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 45
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %118, i8** %16, align 8
  br label %871

119:                                              ; preds = %111, %100
  %120 = load i8*, i8** %18, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 45
  br i1 %124, label %125, label %520

125:                                              ; preds = %119
  store i64 1, i64* %20, align 8
  br label %126

126:                                              ; preds = %516, %125
  %127 = load i64, i64* %20, align 8
  %128 = load i64, i64* %19, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %519

130:                                              ; preds = %126
  %131 = load i8*, i8** %18, align 8
  %132 = load i64, i64* %20, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  store i8 %134, i8* %21, align 1
  %135 = load i8, i8* %21, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sge i32 %136, 48
  br i1 %137, label %138, label %157

138:                                              ; preds = %130
  %139 = load i8, i8* %21, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sle i32 %140, 57
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load i8*, i8** %11, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %148 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %148, i64* %2, align 8
  br label %936

149:                                              ; preds = %142
  %150 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %150, i8** %11, align 8
  %151 = load i8, i8* %21, align 1
  %152 = sext i8 %151 to i32
  %153 = sub nsw i32 %152, 48
  %154 = trunc i32 %153 to i8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  store i8 %154, i8* %156, align 8
  br label %516

157:                                              ; preds = %138, %130
  %158 = load i8, i8* %21, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 99
  br i1 %160, label %161, label %173

161:                                              ; preds = %157
  %162 = load i8*, i8** %12, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %167, i64* %2, align 8
  br label %936

168:                                              ; preds = %161
  %169 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %169, i8** %12, align 8
  %170 = load i8*, i8** @BROTLI_TRUE, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 12
  store i8* %170, i8** %172, align 8
  br label %516

173:                                              ; preds = %157
  %174 = load i8, i8* %21, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 100
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i8*, i8** %10, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32, i32* @stderr, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %183 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %183, i64* %2, align 8
  br label %936

184:                                              ; preds = %177
  %185 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %185, i8** %10, align 8
  %186 = load i64, i64* @COMMAND_DECOMPRESS, align 8
  store i64 %186, i64* %17, align 8
  br label %516

187:                                              ; preds = %173
  %188 = load i8, i8* %21, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 102
  br i1 %190, label %191, label %204

191:                                              ; preds = %187
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 15
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i32, i32* @stderr, align 4
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %199 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %199, i64* %2, align 8
  br label %936

200:                                              ; preds = %191
  %201 = load i8*, i8** @BROTLI_TRUE, align 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 15
  store i8* %201, i8** %203, align 8
  br label %516

204:                                              ; preds = %187
  %205 = load i8, i8* %21, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 104
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i64, i64* @COMMAND_HELP, align 8
  store i64 %209, i64* %2, align 8
  br label %936

210:                                              ; preds = %204
  %211 = load i8, i8* %21, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 106
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load i8, i8* %21, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 107
  br i1 %217, label %218, label %234

218:                                              ; preds = %214, %210
  %219 = load i8*, i8** %13, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load i32, i32* @stderr, align 4
  %223 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %224 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %224, i64* %2, align 8
  br label %936

225:                                              ; preds = %218
  %226 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %226, i8** %13, align 8
  %227 = load i8, i8* %21, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 106
  %230 = zext i1 %229 to i32
  %231 = call i8* @TO_BROTLI_BOOL(i32 %230)
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 13
  store i8* %231, i8** %233, align 8
  br label %516

234:                                              ; preds = %214
  %235 = load i8, i8* %21, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 110
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 14
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %238
  %244 = load i32, i32* @stderr, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %246 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %246, i64* %2, align 8
  br label %936

247:                                              ; preds = %238
  %248 = load i8*, i8** @BROTLI_FALSE, align 8
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 14
  store i8* %248, i8** %250, align 8
  br label %516

251:                                              ; preds = %234
  %252 = load i8, i8* %21, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 116
  br i1 %254, label %255, label %265

255:                                              ; preds = %251
  %256 = load i8*, i8** %10, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %261 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %261, i64* %2, align 8
  br label %936

262:                                              ; preds = %255
  %263 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %263, i8** %10, align 8
  %264 = load i64, i64* @COMMAND_TEST_INTEGRITY, align 8
  store i64 %264, i64* %17, align 8
  br label %516

265:                                              ; preds = %251
  %266 = load i8, i8* %21, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 118
  br i1 %268, label %269, label %281

269:                                              ; preds = %265
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %269
  %275 = load i32, i32* @stderr, align 4
  %276 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %277 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %277, i64* %2, align 8
  br label %936

278:                                              ; preds = %269
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 4
  store i32 1, i32* %280, align 4
  br label %516

281:                                              ; preds = %265
  %282 = load i8, i8* %21, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 86
  br i1 %284, label %285, label %287

285:                                              ; preds = %281
  %286 = load i64, i64* @COMMAND_VERSION, align 8
  store i64 %286, i64* %2, align 8
  br label %936

287:                                              ; preds = %281
  %288 = load i8, i8* %21, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 90
  br i1 %290, label %291, label %302

291:                                              ; preds = %287
  %292 = load i8*, i8** %11, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %291
  %295 = load i32, i32* @stderr, align 4
  %296 = call i32 (i32, i8*, ...) @fprintf(i32 %295, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %297 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %297, i64* %2, align 8
  br label %936

298:                                              ; preds = %291
  %299 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %299, i8** %11, align 8
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 3
  store i8 11, i8* %301, align 8
  br label %516

302:                                              ; preds = %287
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  %313 = load i8, i8* %21, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp ne i32 %314, 111
  br i1 %315, label %316, label %338

316:                                              ; preds = %312
  %317 = load i8, i8* %21, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 113
  br i1 %319, label %320, label %338

320:                                              ; preds = %316
  %321 = load i8, i8* %21, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp ne i32 %322, 119
  br i1 %323, label %324, label %338

324:                                              ; preds = %320
  %325 = load i8, i8* %21, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp ne i32 %326, 68
  br i1 %327, label %328, label %338

328:                                              ; preds = %324
  %329 = load i8, i8* %21, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp ne i32 %330, 83
  br i1 %331, label %332, label %338

332:                                              ; preds = %328
  %333 = load i32, i32* @stderr, align 4
  %334 = load i8, i8* %21, align 1
  %335 = sext i8 %334 to i32
  %336 = call i32 (i32, i8*, ...) @fprintf(i32 %333, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %335)
  %337 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %337, i64* %2, align 8
  br label %936

338:                                              ; preds = %328, %324, %320, %316, %312
  %339 = load i64, i64* %20, align 8
  %340 = add i64 %339, 1
  %341 = load i64, i64* %19, align 8
  %342 = icmp ne i64 %340, %341
  br i1 %342, label %343, label %349

343:                                              ; preds = %338
  %344 = load i32, i32* @stderr, align 4
  %345 = load i8, i8* %21, align 1
  %346 = sext i8 %345 to i32
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %344, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %346)
  %348 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %348, i64* %2, align 8
  br label %936

349:                                              ; preds = %338
  %350 = load i32, i32* %6, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* %4, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %372, label %355

355:                                              ; preds = %349
  %356 = load i8**, i8*** %5, align 8
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8*, i8** %356, i64 %358
  %360 = load i8*, i8** %359, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %372

362:                                              ; preds = %355
  %363 = load i8**, i8*** %5, align 8
  %364 = load i32, i32* %6, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8*, i8** %363, i64 %365
  %367 = load i8*, i8** %366, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 0
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %362, %355, %349
  %373 = load i32, i32* @stderr, align 4
  %374 = load i8, i8* %21, align 1
  %375 = sext i8 %374 to i32
  %376 = call i32 (i32, i8*, ...) @fprintf(i32 %373, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %375)
  %377 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %377, i64* %2, align 8
  br label %936

378:                                              ; preds = %362
  %379 = load i32, i32* %6, align 4
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 2
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %7, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %7, align 4
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i32, i32* %382, i64 %385
  store i32 %379, i32* %386, align 4
  %387 = load i8, i8* %21, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 111
  br i1 %389, label %390, label %405

390:                                              ; preds = %378
  %391 = load i8*, i8** %12, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i32, i32* @stderr, align 4
  %395 = call i32 (i32, i8*, ...) @fprintf(i32 %394, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %396 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %396, i64* %2, align 8
  br label %936

397:                                              ; preds = %390
  %398 = load i8**, i8*** %5, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %398, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 5
  store i8* %402, i8** %404, align 8
  br label %515

405:                                              ; preds = %378
  %406 = load i8, i8* %21, align 1
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 %407, 113
  br i1 %408, label %409, label %440

409:                                              ; preds = %405
  %410 = load i8*, i8** %11, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %416

412:                                              ; preds = %409
  %413 = load i32, i32* @stderr, align 4
  %414 = call i32 (i32, i8*, ...) @fprintf(i32 %413, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %415 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %415, i64* %2, align 8
  br label %936

416:                                              ; preds = %409
  %417 = load i8**, i8*** %5, align 8
  %418 = load i32, i32* %6, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8*, i8** %417, i64 %419
  %421 = load i8*, i8** %420, align 8
  %422 = load i32, i32* @BROTLI_MIN_QUALITY, align 4
  %423 = load i32, i32* @BROTLI_MAX_QUALITY, align 4
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 3
  %426 = bitcast i8* %425 to i32*
  %427 = call i8* @ParseInt(i8* %421, i32 %422, i32 %423, i32* %426)
  store i8* %427, i8** %11, align 8
  %428 = load i8*, i8** %11, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %439, label %430

430:                                              ; preds = %416
  %431 = load i32, i32* @stderr, align 4
  %432 = load i8**, i8*** %5, align 8
  %433 = load i32, i32* %6, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8*, i8** %432, i64 %434
  %436 = load i8*, i8** %435, align 8
  %437 = call i32 (i32, i8*, ...) @fprintf(i32 %431, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %436)
  %438 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %438, i64* %2, align 8
  br label %936

439:                                              ; preds = %416
  br label %514

440:                                              ; preds = %405
  %441 = load i8, i8* %21, align 1
  %442 = sext i8 %441 to i32
  %443 = icmp eq i32 %442, 119
  br i1 %443, label %444, label %492

444:                                              ; preds = %440
  %445 = load i8*, i8** %14, align 8
  %446 = icmp ne i8* %445, null
  br i1 %446, label %447, label %451

447:                                              ; preds = %444
  %448 = load i32, i32* @stderr, align 4
  %449 = call i32 (i32, i8*, ...) @fprintf(i32 %448, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %450 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %450, i64* %2, align 8
  br label %936

451:                                              ; preds = %444
  %452 = load i8**, i8*** %5, align 8
  %453 = load i32, i32* %6, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8*, i8** %452, i64 %454
  %456 = load i8*, i8** %455, align 8
  %457 = load i32, i32* @BROTLI_MAX_WINDOW_BITS, align 4
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 6
  %460 = call i8* @ParseInt(i8* %456, i32 0, i32 %457, i32* %459)
  store i8* %460, i8** %14, align 8
  %461 = load i8*, i8** %14, align 8
  %462 = icmp ne i8* %461, null
  br i1 %462, label %472, label %463

463:                                              ; preds = %451
  %464 = load i32, i32* @stderr, align 4
  %465 = load i8**, i8*** %5, align 8
  %466 = load i32, i32* %6, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8*, i8** %465, i64 %467
  %469 = load i8*, i8** %468, align 8
  %470 = call i32 (i32, i8*, ...) @fprintf(i32 %464, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %469)
  %471 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %471, i64* %2, align 8
  br label %936

472:                                              ; preds = %451
  %473 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %473, i32 0, i32 6
  %475 = load i32, i32* %474, align 8
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %491

477:                                              ; preds = %472
  %478 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %478, i32 0, i32 6
  %480 = load i32, i32* %479, align 8
  %481 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %483, label %491

483:                                              ; preds = %477
  %484 = load i32, i32* @stderr, align 4
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 6
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %489 = call i32 (i32, i8*, ...) @fprintf(i32 %484, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i32 %487, i32 %488)
  %490 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %490, i64* %2, align 8
  br label %936

491:                                              ; preds = %477, %472
  br label %513

492:                                              ; preds = %440
  %493 = load i8, i8* %21, align 1
  %494 = sext i8 %493 to i32
  %495 = icmp eq i32 %494, 83
  br i1 %495, label %496, label %512

496:                                              ; preds = %492
  %497 = load i8*, i8** %15, align 8
  %498 = icmp ne i8* %497, null
  br i1 %498, label %499, label %503

499:                                              ; preds = %496
  %500 = load i32, i32* @stderr, align 4
  %501 = call i32 (i32, i8*, ...) @fprintf(i32 %500, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %502 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %502, i64* %2, align 8
  br label %936

503:                                              ; preds = %496
  %504 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %504, i8** %15, align 8
  %505 = load i8**, i8*** %5, align 8
  %506 = load i32, i32* %6, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8*, i8** %505, i64 %507
  %509 = load i8*, i8** %508, align 8
  %510 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 7
  store i8* %509, i8** %511, align 8
  br label %512

512:                                              ; preds = %503, %492
  br label %513

513:                                              ; preds = %512, %491
  br label %514

514:                                              ; preds = %513, %439
  br label %515

515:                                              ; preds = %514, %397
  br label %516

516:                                              ; preds = %515, %298, %278, %262, %247, %225, %200, %184, %168, %149
  %517 = load i64, i64* %20, align 8
  %518 = add i64 %517, 1
  store i64 %518, i64* %20, align 8
  br label %126

519:                                              ; preds = %126
  br label %870

520:                                              ; preds = %119
  %521 = load i8*, i8** %18, align 8
  %522 = getelementptr inbounds i8, i8* %521, i64 2
  store i8* %522, i8** %18, align 8
  %523 = load i8*, i8** %18, align 8
  %524 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %523)
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %537

526:                                              ; preds = %520
  %527 = load i8*, i8** %11, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %533

529:                                              ; preds = %526
  %530 = load i32, i32* @stderr, align 4
  %531 = call i32 (i32, i8*, ...) @fprintf(i32 %530, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %532 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %532, i64* %2, align 8
  br label %936

533:                                              ; preds = %526
  %534 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %534, i8** %11, align 8
  %535 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %535, i32 0, i32 3
  store i8 11, i8* %536, align 8
  br label %869

537:                                              ; preds = %520
  %538 = load i8*, i8** %18, align 8
  %539 = call i64 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* %538)
  %540 = icmp eq i64 %539, 0
  br i1 %540, label %541, label %551

541:                                              ; preds = %537
  %542 = load i8*, i8** %10, align 8
  %543 = icmp ne i8* %542, null
  br i1 %543, label %544, label %548

544:                                              ; preds = %541
  %545 = load i32, i32* @stderr, align 4
  %546 = call i32 (i32, i8*, ...) @fprintf(i32 %545, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  %547 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %547, i64* %2, align 8
  br label %936

548:                                              ; preds = %541
  %549 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %549, i8** %10, align 8
  %550 = load i64, i64* @COMMAND_DECOMPRESS, align 8
  store i64 %550, i64* %17, align 8
  br label %868

551:                                              ; preds = %537
  %552 = load i8*, i8** %18, align 8
  %553 = call i64 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %552)
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %568

555:                                              ; preds = %551
  %556 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %557 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %556, i32 0, i32 15
  %558 = load i8*, i8** %557, align 8
  %559 = icmp ne i8* %558, null
  br i1 %559, label %560, label %564

560:                                              ; preds = %555
  %561 = load i32, i32* @stderr, align 4
  %562 = call i32 (i32, i8*, ...) @fprintf(i32 %561, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %563 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %563, i64* %2, align 8
  br label %936

564:                                              ; preds = %555
  %565 = load i8*, i8** @BROTLI_TRUE, align 8
  %566 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %567 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %566, i32 0, i32 15
  store i8* %565, i8** %567, align 8
  br label %867

568:                                              ; preds = %551
  %569 = load i8*, i8** %18, align 8
  %570 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %569)
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %568
  %573 = load i64, i64* @COMMAND_HELP, align 8
  store i64 %573, i64* %2, align 8
  br label %936

574:                                              ; preds = %568
  %575 = load i8*, i8** %18, align 8
  %576 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* %575)
  %577 = icmp eq i64 %576, 0
  br i1 %577, label %578, label %590

578:                                              ; preds = %574
  %579 = load i8*, i8** %13, align 8
  %580 = icmp ne i8* %579, null
  br i1 %580, label %581, label %585

581:                                              ; preds = %578
  %582 = load i32, i32* @stderr, align 4
  %583 = call i32 (i32, i8*, ...) @fprintf(i32 %582, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %584 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %584, i64* %2, align 8
  br label %936

585:                                              ; preds = %578
  %586 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %586, i8** %13, align 8
  %587 = load i8*, i8** @BROTLI_FALSE, align 8
  %588 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %589 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %588, i32 0, i32 13
  store i8* %587, i8** %589, align 8
  br label %865

590:                                              ; preds = %574
  %591 = load i8*, i8** %18, align 8
  %592 = call i64 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i8* %591)
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %607

594:                                              ; preds = %590
  %595 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %596 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %595, i32 0, i32 14
  %597 = load i8*, i8** %596, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %603, label %599

599:                                              ; preds = %594
  %600 = load i32, i32* @stderr, align 4
  %601 = call i32 (i32, i8*, ...) @fprintf(i32 %600, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %602 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %602, i64* %2, align 8
  br label %936

603:                                              ; preds = %594
  %604 = load i8*, i8** @BROTLI_FALSE, align 8
  %605 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %606 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %605, i32 0, i32 14
  store i8* %604, i8** %606, align 8
  br label %864

607:                                              ; preds = %590
  %608 = load i8*, i8** %18, align 8
  %609 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %608)
  %610 = icmp eq i64 %609, 0
  br i1 %610, label %611, label %623

611:                                              ; preds = %607
  %612 = load i8*, i8** %13, align 8
  %613 = icmp ne i8* %612, null
  br i1 %613, label %614, label %618

614:                                              ; preds = %611
  %615 = load i32, i32* @stderr, align 4
  %616 = call i32 (i32, i8*, ...) @fprintf(i32 %615, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %617 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %617, i64* %2, align 8
  br label %936

618:                                              ; preds = %611
  %619 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %619, i8** %13, align 8
  %620 = load i8*, i8** @BROTLI_TRUE, align 8
  %621 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %622 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %621, i32 0, i32 13
  store i8* %620, i8** %622, align 8
  br label %863

623:                                              ; preds = %607
  %624 = load i8*, i8** %18, align 8
  %625 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* %624)
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %627, label %639

627:                                              ; preds = %623
  %628 = load i8*, i8** %12, align 8
  %629 = icmp ne i8* %628, null
  br i1 %629, label %630, label %634

630:                                              ; preds = %627
  %631 = load i32, i32* @stderr, align 4
  %632 = call i32 (i32, i8*, ...) @fprintf(i32 %631, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %633 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %633, i64* %2, align 8
  br label %936

634:                                              ; preds = %627
  %635 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %635, i8** %12, align 8
  %636 = load i8*, i8** @BROTLI_TRUE, align 8
  %637 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %638 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %637, i32 0, i32 12
  store i8* %636, i8** %638, align 8
  br label %862

639:                                              ; preds = %623
  %640 = load i8*, i8** %18, align 8
  %641 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i8* %640)
  %642 = icmp eq i64 %641, 0
  br i1 %642, label %643, label %653

643:                                              ; preds = %639
  %644 = load i8*, i8** %10, align 8
  %645 = icmp ne i8* %644, null
  br i1 %645, label %646, label %650

646:                                              ; preds = %643
  %647 = load i32, i32* @stderr, align 4
  %648 = call i32 (i32, i8*, ...) @fprintf(i32 %647, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  %649 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %649, i64* %2, align 8
  br label %936

650:                                              ; preds = %643
  %651 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %651, i8** %10, align 8
  %652 = load i64, i64* @COMMAND_TEST_INTEGRITY, align 8
  store i64 %652, i64* %17, align 8
  br label %861

653:                                              ; preds = %639
  %654 = load i8*, i8** %18, align 8
  %655 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* %654)
  %656 = icmp eq i64 %655, 0
  br i1 %656, label %657, label %669

657:                                              ; preds = %653
  %658 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %659 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %658, i32 0, i32 4
  %660 = load i32, i32* %659, align 4
  %661 = icmp sgt i32 %660, 0
  br i1 %661, label %662, label %666

662:                                              ; preds = %657
  %663 = load i32, i32* @stderr, align 4
  %664 = call i32 (i32, i8*, ...) @fprintf(i32 %663, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %665 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %665, i64* %2, align 8
  br label %936

666:                                              ; preds = %657
  %667 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %668 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %667, i32 0, i32 4
  store i32 1, i32* %668, align 4
  br label %860

669:                                              ; preds = %653
  %670 = load i8*, i8** %18, align 8
  %671 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %670)
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %673, label %675

673:                                              ; preds = %669
  %674 = load i64, i64* @COMMAND_VERSION, align 8
  store i64 %674, i64* %2, align 8
  br label %936

675:                                              ; preds = %669
  %676 = load i8*, i8** %18, align 8
  %677 = call i8* @strrchr(i8* %676, i8 signext 61)
  store i8* %677, i8** %22, align 8
  %678 = load i8*, i8** %22, align 8
  %679 = icmp ne i8* %678, null
  br i1 %679, label %680, label %686

680:                                              ; preds = %675
  %681 = load i8*, i8** %22, align 8
  %682 = getelementptr inbounds i8, i8* %681, i64 1
  %683 = load i8, i8* %682, align 1
  %684 = sext i8 %683 to i32
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %691

686:                                              ; preds = %680, %675
  %687 = load i32, i32* @stderr, align 4
  %688 = load i8*, i8** %18, align 8
  %689 = call i32 (i32, i8*, ...) @fprintf(i32 %687, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i8* %688)
  %690 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %690, i64* %2, align 8
  br label %936

691:                                              ; preds = %680
  %692 = load i8*, i8** %22, align 8
  %693 = load i8*, i8** %18, align 8
  %694 = ptrtoint i8* %692 to i64
  %695 = ptrtoint i8* %693 to i64
  %696 = sub i64 %694, %695
  store i64 %696, i64* %23, align 8
  %697 = load i8*, i8** %22, align 8
  %698 = getelementptr inbounds i8, i8* %697, i32 1
  store i8* %698, i8** %22, align 8
  %699 = load i8*, i8** %18, align 8
  %700 = load i64, i64* %23, align 8
  %701 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* %699, i64 %700)
  %702 = icmp eq i64 %701, 0
  br i1 %702, label %703, label %743

703:                                              ; preds = %691
  %704 = load i8*, i8** %14, align 8
  %705 = icmp ne i8* %704, null
  br i1 %705, label %706, label %710

706:                                              ; preds = %703
  %707 = load i32, i32* @stderr, align 4
  %708 = call i32 (i32, i8*, ...) @fprintf(i32 %707, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %709 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %709, i64* %2, align 8
  br label %936

710:                                              ; preds = %703
  %711 = load i8*, i8** %22, align 8
  %712 = load i32, i32* @BROTLI_MAX_WINDOW_BITS, align 4
  %713 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %714 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %713, i32 0, i32 6
  %715 = call i8* @ParseInt(i8* %711, i32 0, i32 %712, i32* %714)
  store i8* %715, i8** %14, align 8
  %716 = load i8*, i8** %14, align 8
  %717 = icmp ne i8* %716, null
  br i1 %717, label %723, label %718

718:                                              ; preds = %710
  %719 = load i32, i32* @stderr, align 4
  %720 = load i8*, i8** %22, align 8
  %721 = call i32 (i32, i8*, ...) @fprintf(i32 %719, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %720)
  %722 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %722, i64* %2, align 8
  br label %936

723:                                              ; preds = %710
  %724 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %725 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %724, i32 0, i32 6
  %726 = load i32, i32* %725, align 8
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %742

728:                                              ; preds = %723
  %729 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %730 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %729, i32 0, i32 6
  %731 = load i32, i32* %730, align 8
  %732 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %733 = icmp slt i32 %731, %732
  br i1 %733, label %734, label %742

734:                                              ; preds = %728
  %735 = load i32, i32* @stderr, align 4
  %736 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %737 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %736, i32 0, i32 6
  %738 = load i32, i32* %737, align 8
  %739 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %740 = call i32 (i32, i8*, ...) @fprintf(i32 %735, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i32 %738, i32 %739)
  %741 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %741, i64* %2, align 8
  br label %936

742:                                              ; preds = %728, %723
  br label %858

743:                                              ; preds = %691
  %744 = load i8*, i8** %18, align 8
  %745 = load i64, i64* %23, align 8
  %746 = call i64 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0), i8* %744, i64 %745)
  %747 = icmp eq i64 %746, 0
  br i1 %747, label %748, label %788

748:                                              ; preds = %743
  %749 = load i8*, i8** %14, align 8
  %750 = icmp ne i8* %749, null
  br i1 %750, label %751, label %755

751:                                              ; preds = %748
  %752 = load i32, i32* @stderr, align 4
  %753 = call i32 (i32, i8*, ...) @fprintf(i32 %752, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %754 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %754, i64* %2, align 8
  br label %936

755:                                              ; preds = %748
  %756 = load i8*, i8** %22, align 8
  %757 = load i32, i32* @BROTLI_LARGE_MAX_WINDOW_BITS, align 4
  %758 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %759 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %758, i32 0, i32 6
  %760 = call i8* @ParseInt(i8* %756, i32 0, i32 %757, i32* %759)
  store i8* %760, i8** %14, align 8
  %761 = load i8*, i8** %14, align 8
  %762 = icmp ne i8* %761, null
  br i1 %762, label %768, label %763

763:                                              ; preds = %755
  %764 = load i32, i32* @stderr, align 4
  %765 = load i8*, i8** %22, align 8
  %766 = call i32 (i32, i8*, ...) @fprintf(i32 %764, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %765)
  %767 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %767, i64* %2, align 8
  br label %936

768:                                              ; preds = %755
  %769 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %770 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %769, i32 0, i32 6
  %771 = load i32, i32* %770, align 8
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %787

773:                                              ; preds = %768
  %774 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %775 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %774, i32 0, i32 6
  %776 = load i32, i32* %775, align 8
  %777 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %778 = icmp slt i32 %776, %777
  br i1 %778, label %779, label %787

779:                                              ; preds = %773
  %780 = load i32, i32* @stderr, align 4
  %781 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %782 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %781, i32 0, i32 6
  %783 = load i32, i32* %782, align 8
  %784 = load i32, i32* @BROTLI_MIN_WINDOW_BITS, align 4
  %785 = call i32 (i32, i8*, ...) @fprintf(i32 %780, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i32 %783, i32 %784)
  %786 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %786, i64* %2, align 8
  br label %936

787:                                              ; preds = %773, %768
  br label %857

788:                                              ; preds = %743
  %789 = load i8*, i8** %18, align 8
  %790 = load i64, i64* %23, align 8
  %791 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i8* %789, i64 %790)
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %793, label %804

793:                                              ; preds = %788
  %794 = load i8*, i8** %12, align 8
  %795 = icmp ne i8* %794, null
  br i1 %795, label %796, label %800

796:                                              ; preds = %793
  %797 = load i32, i32* @stderr, align 4
  %798 = call i32 (i32, i8*, ...) @fprintf(i32 %797, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.34, i64 0, i64 0))
  %799 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %799, i64* %2, align 8
  br label %936

800:                                              ; preds = %793
  %801 = load i8*, i8** %22, align 8
  %802 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %803 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %802, i32 0, i32 5
  store i8* %801, i8** %803, align 8
  br label %856

804:                                              ; preds = %788
  %805 = load i8*, i8** %18, align 8
  %806 = load i64, i64* %23, align 8
  %807 = call i64 @strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* %805, i64 %806)
  %808 = icmp eq i64 %807, 0
  br i1 %808, label %809, label %832

809:                                              ; preds = %804
  %810 = load i8*, i8** %11, align 8
  %811 = icmp ne i8* %810, null
  br i1 %811, label %812, label %816

812:                                              ; preds = %809
  %813 = load i32, i32* @stderr, align 4
  %814 = call i32 (i32, i8*, ...) @fprintf(i32 %813, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %815 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %815, i64* %2, align 8
  br label %936

816:                                              ; preds = %809
  %817 = load i8*, i8** %22, align 8
  %818 = load i32, i32* @BROTLI_MIN_QUALITY, align 4
  %819 = load i32, i32* @BROTLI_MAX_QUALITY, align 4
  %820 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %821 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %820, i32 0, i32 3
  %822 = bitcast i8* %821 to i32*
  %823 = call i8* @ParseInt(i8* %817, i32 %818, i32 %819, i32* %822)
  store i8* %823, i8** %11, align 8
  %824 = load i8*, i8** %11, align 8
  %825 = icmp ne i8* %824, null
  br i1 %825, label %831, label %826

826:                                              ; preds = %816
  %827 = load i32, i32* @stderr, align 4
  %828 = load i8*, i8** %22, align 8
  %829 = call i32 (i32, i8*, ...) @fprintf(i32 %827, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %828)
  %830 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %830, i64* %2, align 8
  br label %936

831:                                              ; preds = %816
  br label %855

832:                                              ; preds = %804
  %833 = load i8*, i8** %18, align 8
  %834 = load i64, i64* %23, align 8
  %835 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* %833, i64 %834)
  %836 = icmp eq i64 %835, 0
  br i1 %836, label %837, label %849

837:                                              ; preds = %832
  %838 = load i8*, i8** %15, align 8
  %839 = icmp ne i8* %838, null
  br i1 %839, label %840, label %844

840:                                              ; preds = %837
  %841 = load i32, i32* @stderr, align 4
  %842 = call i32 (i32, i8*, ...) @fprintf(i32 %841, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %843 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %843, i64* %2, align 8
  br label %936

844:                                              ; preds = %837
  %845 = load i8*, i8** @BROTLI_TRUE, align 8
  store i8* %845, i8** %15, align 8
  %846 = load i8*, i8** %22, align 8
  %847 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %848 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %847, i32 0, i32 7
  store i8* %846, i8** %848, align 8
  br label %854

849:                                              ; preds = %832
  %850 = load i32, i32* @stderr, align 4
  %851 = load i8*, i8** %18, align 8
  %852 = call i32 (i32, i8*, ...) @fprintf(i32 %850, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i8* %851)
  %853 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %853, i64* %2, align 8
  br label %936

854:                                              ; preds = %844
  br label %855

855:                                              ; preds = %854, %831
  br label %856

856:                                              ; preds = %855, %800
  br label %857

857:                                              ; preds = %856, %787
  br label %858

858:                                              ; preds = %857, %742
  br label %859

859:                                              ; preds = %858
  br label %860

860:                                              ; preds = %859, %666
  br label %861

861:                                              ; preds = %860, %650
  br label %862

862:                                              ; preds = %861, %634
  br label %863

863:                                              ; preds = %862, %618
  br label %864

864:                                              ; preds = %863, %603
  br label %865

865:                                              ; preds = %864, %585
  br label %866

866:                                              ; preds = %865
  br label %867

867:                                              ; preds = %866, %564
  br label %868

868:                                              ; preds = %867, %548
  br label %869

869:                                              ; preds = %868, %533
  br label %870

870:                                              ; preds = %869, %519
  br label %871

871:                                              ; preds = %870, %117, %99, %61
  %872 = load i32, i32* %6, align 4
  %873 = add nsw i32 %872, 1
  store i32 %873, i32* %6, align 4
  br label %41

874:                                              ; preds = %41
  %875 = load i64, i64* %8, align 8
  %876 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %877 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %876, i32 0, i32 8
  store i64 %875, i64* %877, align 8
  %878 = load i64, i64* %9, align 8
  %879 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %880 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %879, i32 0, i32 9
  store i64 %878, i64* %880, align 8
  %881 = load i64, i64* %17, align 8
  %882 = load i64, i64* @COMMAND_DECOMPRESS, align 8
  %883 = icmp eq i64 %881, %882
  %884 = zext i1 %883 to i32
  %885 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %886 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %885, i32 0, i32 10
  store i32 %884, i32* %886, align 8
  %887 = load i64, i64* %17, align 8
  %888 = load i64, i64* @COMMAND_TEST_INTEGRITY, align 8
  %889 = icmp eq i64 %887, %888
  %890 = zext i1 %889 to i32
  %891 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %892 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %891, i32 0, i32 11
  store i32 %890, i32* %892, align 4
  %893 = load i64, i64* %8, align 8
  %894 = icmp ugt i64 %893, 1
  br i1 %894, label %895, label %900

895:                                              ; preds = %874
  %896 = load i8*, i8** %12, align 8
  %897 = icmp ne i8* %896, null
  br i1 %897, label %898, label %900

898:                                              ; preds = %895
  %899 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %899, i64* %2, align 8
  br label %936

900:                                              ; preds = %895, %874
  %901 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %902 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %901, i32 0, i32 11
  %903 = load i32, i32* %902, align 4
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %905, label %920

905:                                              ; preds = %900
  %906 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %907 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %906, i32 0, i32 5
  %908 = load i8*, i8** %907, align 8
  %909 = icmp ne i8* %908, null
  br i1 %909, label %910, label %912

910:                                              ; preds = %905
  %911 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %911, i64* %2, align 8
  br label %936

912:                                              ; preds = %905
  %913 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %914 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %913, i32 0, i32 12
  %915 = load i8*, i8** %914, align 8
  %916 = icmp ne i8* %915, null
  br i1 %916, label %917, label %919

917:                                              ; preds = %912
  %918 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %918, i64* %2, align 8
  br label %936

919:                                              ; preds = %912
  br label %920

920:                                              ; preds = %919, %900
  %921 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %922 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %921, i32 0, i32 7
  %923 = load i8*, i8** %922, align 8
  %924 = call i64 @strchr(i8* %923, i8 signext 47)
  %925 = icmp ne i64 %924, 0
  br i1 %925, label %932, label %926

926:                                              ; preds = %920
  %927 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %928 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %927, i32 0, i32 7
  %929 = load i8*, i8** %928, align 8
  %930 = call i64 @strchr(i8* %929, i8 signext 92)
  %931 = icmp ne i64 %930, 0
  br i1 %931, label %932, label %934

932:                                              ; preds = %926, %920
  %933 = load i64, i64* @COMMAND_INVALID, align 8
  store i64 %933, i64* %2, align 8
  br label %936

934:                                              ; preds = %926
  %935 = load i64, i64* %17, align 8
  store i64 %935, i64* %2, align 8
  br label %936

936:                                              ; preds = %934, %932, %917, %910, %898, %849, %840, %826, %812, %796, %779, %763, %751, %734, %718, %706, %686, %673, %662, %646, %630, %614, %599, %581, %572, %560, %544, %529, %499, %483, %463, %447, %430, %412, %393, %372, %343, %332, %294, %285, %274, %258, %243, %221, %208, %196, %180, %164, %145, %75
  %937 = load i64, i64* %2, align 8
  ret i64 %937
}

declare dso_local i64 @ParseAlias(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @TO_BROTLI_BOOL(i32) #1

declare dso_local i8* @ParseInt(i8*, i32, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
