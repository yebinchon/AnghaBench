; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_sets.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_sets.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { i32, i8*, i32, %struct.TYPE_6__, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [16 x i8] c"ab:chi:p:s:twv:\00", align 1
@affinity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@cache_config = common dso_local global i8* null, align 8
@iterations = common dso_local global i32 0, align 4
@WORKERS_MAX = common dso_local global i32 0, align 4
@halting = common dso_local global i8* null, align 8
@reader_writer_fn = common dso_local global i32 0, align 4
@consumer_fnp = common dso_local global i32* null, align 8
@verbosity = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@funnel = common dso_local global i32 0, align 4
@barrier = common dso_local global i32 0, align 4
@threads = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Launching %d set%s of %d threads with %saffinity, consumer reads%s data\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" and writes\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  %dkB bytes per buffer, \00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  %dMB bytes per buffer, \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%d buffer%s per set \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"(total %dkB)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(total %dMB)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"  processing %d buffer%s...\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@producer_fnp = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"producer\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@link = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"  empty work item %p for set %d data %p\0A\00", align 1
@manager_fn = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"pthread_create %d,%d\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"pthread_join %d,%d\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Thread %d,%d status %d\0A\00", align 1
@timer = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [26 x i8] c"%d.%03d seconds elapsed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 256, i32* %8, align 4
  store i32 2, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %20

20:                                               ; preds = %65, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %18, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %66

25:                                               ; preds = %20
  %26 = load i32, i32* %18, align 4
  switch i32 %26, label %63 [
    i32 97, label %27
    i32 98, label %32
    i32 99, label %36
    i32 105, label %38
    i32 112, label %42
    i32 115, label %46
    i32 116, label %56
    i32 119, label %58
    i32 118, label %59
    i32 63, label %62
    i32 104, label %62
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @affinity, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* @affinity, align 4
  br label %65

32:                                               ; preds = %25
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @atoi(i8* %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %9, align 4
  br label %65

36:                                               ; preds = %25
  %37 = load i8*, i8** @TRUE, align 8
  store i8* %37, i8** @cache_config, align 8
  br label %65

38:                                               ; preds = %25
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @atoi(i8* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* @iterations, align 4
  br label %65

42:                                               ; preds = %25
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @atoi(i8* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %8, align 4
  br label %65

46:                                               ; preds = %25
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i8* @atoi(i8* %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @WORKERS_MAX, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %46
  br label %65

56:                                               ; preds = %25
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @halting, align 8
  br label %65

58:                                               ; preds = %25
  store i32* @reader_writer_fn, i32** @consumer_fnp, align 8
  br label %65

59:                                               ; preds = %25
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i8* @atoi(i8* %60)
  store i8* %61, i8** @verbosity, align 8
  br label %65

62:                                               ; preds = %25, %25
  br label %63

63:                                               ; preds = %25, %62
  %64 = call i32 (...) @usage()
  br label %65

65:                                               ; preds = %63, %59, %58, %56, %55, %42, %38, %36, %32, %27
  br label %20

66:                                               ; preds = %20
  %67 = load i64, i64* @optind, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %4, align 4
  %72 = load i64, i64* @optind, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 %72
  store i8** %74, i8*** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %66
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @atoi(i8* %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %77, %66
  %83 = load i8*, i8** @cache_config, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @auto_config(i32 %86, i32* %9, i32* %10)
  br label %88

88:                                               ; preds = %85, %82
  %89 = call i32 @pthread_mutex_init(i32* @funnel, i32* null)
  %90 = call i32 @pthread_cond_init(i32* @barrier, i32* null)
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* @threads, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @s_if_plural(i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @affinity, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %102 = load i32*, i32** @consumer_fnp, align 8
  %103 = icmp eq i32* %102, @reader_writer_fn
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %106 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %96, i32 %97, i8* %101, i8* %105)
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %107, 256
  br i1 %108, label %109, label %113

109:                                              ; preds = %88
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %110, 4
  %112 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  br label %117

113:                                              ; preds = %88
  %114 = load i32, i32* %8, align 4
  %115 = sdiv i32 %114, 256
  %116 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @s_if_plural(i32 %119)
  %121 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %118, i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = mul nsw i32 %122, %123
  %125 = icmp slt i32 %124, 256
  br i1 %125, label %126, label %132

126:                                              ; preds = %117
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = mul nsw i32 %127, %128
  %130 = mul nsw i32 %129, 4
  %131 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  br label %138

132:                                              ; preds = %117
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = mul nsw i32 %133, %134
  %136 = sdiv i32 %135, 256
  %137 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %132, %126
  %139 = load i32, i32* @iterations, align 4
  %140 = load i32, i32* @iterations, align 4
  %141 = call i32 @s_if_plural(i32 %140)
  %142 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %139, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 24
  %146 = trunc i64 %145 to i32
  %147 = call i64 @malloc(i32 %146)
  %148 = inttoptr i64 %147 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %13, align 8
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = mul i64 %152, 72
  %154 = trunc i64 %153 to i32
  %155 = call i64 @malloc(i32 %154)
  %156 = inttoptr i64 %155 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** %15, align 8
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %372, %138
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %375

161:                                              ; preds = %157
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i64 %164
  store %struct.TYPE_9__* %165, %struct.TYPE_9__** %14, align 8
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* %8, align 4
  %171 = mul nsw i32 %170, 4096
  %172 = sext i32 %171 to i64
  %173 = udiv i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = mul nsw i32 %177, %178
  %180 = mul nsw i32 %179, 4096
  %181 = call i64 @malloc(i32 %180)
  %182 = inttoptr i64 %181 to i32*
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 2
  store i32* %182, i32** %184, align 8
  store i32 0, i32* %7, align 4
  br label %185

185:                                              ; preds = %227, %161
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %230

189:                                              ; preds = %185
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %196
  store %struct.TYPE_8__* %197, %struct.TYPE_8__** %16, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 7
  store %struct.TYPE_9__* %201, %struct.TYPE_9__** %203, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %207, i64 %209
  store %struct.TYPE_8__* %204, %struct.TYPE_8__** %210, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 3
  %214 = call i32 @pthread_mutex_init(i32* %213, i32* null)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = call i32 @pthread_cond_init(i32* %217, i32* null)
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = call i32 @TAILQ_INIT(i32* %221)
  %223 = load i32, i32* @FALSE, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %189
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %7, align 4
  br label %185

230:                                              ; preds = %185
  store i32 0, i32* %7, align 4
  br label %231

231:                                              ; preds = %281, %230
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* %11, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %284

235:                                              ; preds = %231
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %238, i64 %240
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  store %struct.TYPE_8__* %242, %struct.TYPE_8__** %16, align 8
  %243 = load i32, i32* %7, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %235
  %246 = load i32*, i32** @producer_fnp, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 6
  store i32* %246, i32** %248, align 8
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %250, align 8
  br label %257

251:                                              ; preds = %235
  %252 = load i32*, i32** @consumer_fnp, align 8
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 6
  store i32* %252, i32** %254, align 8
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %256, align 8
  br label %257

257:                                              ; preds = %251, %245
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %260, i64 %262
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 5
  store %struct.TYPE_6__* %265, %struct.TYPE_6__** %267, align 8
  %268 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  %273 = load i32, i32* %11, align 4
  %274 = srem i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %270, i64 %275
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 4
  store %struct.TYPE_6__* %278, %struct.TYPE_6__** %280, align 8
  br label %281

281:                                              ; preds = %257
  %282 = load i32, i32* %7, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %7, align 4
  br label %231

284:                                              ; preds = %231
  %285 = load i32, i32* %9, align 4
  %286 = sext i32 %285 to i64
  %287 = mul i64 %286, 8
  %288 = trunc i64 %287 to i32
  %289 = call i64 @malloc(i32 %288)
  %290 = inttoptr i64 %289 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %290, %struct.TYPE_7__** %19, align 8
  store i32 0, i32* %7, align 4
  br label %291

291:                                              ; preds = %336, %284
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %339

295:                                              ; preds = %291
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %7, align 4
  %303 = mul nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %298, i64 %304
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %307 = load i32, i32* %7, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 0
  store i32* %305, i32** %310, align 8
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %313, i64 0
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i64 %320
  %322 = load i32, i32* @link, align 4
  %323 = call i32 @TAILQ_INSERT_TAIL(i32* %317, %struct.TYPE_7__* %321, i32 %322)
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %325 = load i32, i32* %7, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i64 %326
  %328 = load i32, i32* %6, align 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_7__* %327, i32 %328, i32* %334)
  br label %336

336:                                              ; preds = %295
  %337 = load i32, i32* %7, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %7, align 4
  br label %291

339:                                              ; preds = %291
  store i32 0, i32* %7, align 4
  br label %340

340:                                              ; preds = %368, %339
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* %11, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %371

344:                                              ; preds = %340
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %346, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %347, i64 %349
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 3
  %355 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %354, align 8
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %355, i64 %357
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %358, align 8
  %360 = bitcast %struct.TYPE_8__* %359 to i8*
  %361 = call i32 @pthread_create(i32* %352, i32* null, i32* @manager_fn, i8* %360)
  store i32 %361, i32* %17, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %344
  %364 = load i32, i32* %6, align 4
  %365 = load i32, i32* %7, align 4
  %366 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %364, i32 %365)
  br label %367

367:                                              ; preds = %363, %344
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %7, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %7, align 4
  br label %340

371:                                              ; preds = %340
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %6, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %6, align 4
  br label %157

375:                                              ; preds = %157
  store i32 0, i32* %6, align 4
  br label %376

376:                                              ; preds = %415, %375
  %377 = load i32, i32* %6, align 4
  %378 = load i32, i32* %10, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %418

380:                                              ; preds = %376
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %382 = load i32, i32* %6, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i64 %383
  store %struct.TYPE_9__* %384, %struct.TYPE_9__** %14, align 8
  store i32 0, i32* %7, align 4
  br label %385

385:                                              ; preds = %411, %380
  %386 = load i32, i32* %7, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %414

389:                                              ; preds = %385
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 3
  %392 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %391, align 8
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %392, i64 %394
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = bitcast i32** %12 to i8**
  %400 = call i32 @pthread_join(i32 %398, i8** %399)
  store i32 %400, i32* %17, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %389
  %403 = load i32, i32* %6, align 4
  %404 = load i32, i32* %7, align 4
  %405 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %403, i32 %404)
  br label %406

406:                                              ; preds = %402, %389
  %407 = load i32, i32* %6, align 4
  %408 = load i32, i32* %7, align 4
  %409 = load i32*, i32** %12, align 8
  %410 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %407, i32 %408, i32* %409)
  br label %411

411:                                              ; preds = %406
  %412 = load i32, i32* %7, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %7, align 4
  br label %385

414:                                              ; preds = %385
  br label %415

415:                                              ; preds = %414
  %416 = load i32, i32* %6, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %6, align 4
  br label %376

418:                                              ; preds = %376
  %419 = call i64 (...) @mach_absolute_time()
  %420 = load i64, i64* @timer, align 8
  %421 = sub i64 %419, %420
  store i64 %421, i64* @timer, align 8
  %422 = load i64, i64* @timer, align 8
  %423 = udiv i64 %422, 1000000
  store i64 %423, i64* @timer, align 8
  %424 = load i64, i64* @timer, align 8
  %425 = udiv i64 %424, 1000
  %426 = trunc i64 %425 to i32
  %427 = load i64, i64* @timer, align 8
  %428 = urem i64 %427, 1000
  %429 = trunc i64 %428 to i32
  %430 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %426, i32 %429)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @auto_config(i32, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @mutter(i8*, i32, ...) #1

declare dso_local i32 @s_if_plural(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @err(i32, i8*, i32, i32) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
