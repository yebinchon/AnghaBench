; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_pool.c_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_pool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32, %struct.TYPE_6__, %struct.TYPE_6__*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"ab:i:p:s:twv:\00", align 1
@affinity = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@iterations = common dso_local global i32 0, align 4
@WORKERS_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@halting = common dso_local global i32 0, align 4
@reader_writer_fn = common dso_local global i32 0, align 4
@consumer_fnp = common dso_local global i32* null, align 8
@verbosity = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@funnel = common dso_local global i32 0, align 4
@barrier = common dso_local global i32 0, align 4
@threads = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [99 x i8] c"Launching %d producer%s with %d stage%s of %d consumer%s\0A  with %saffinity, consumer reads%s data\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"no \00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" and writes\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"  %dkB bytes per buffer, \00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"  %dMB bytes per buffer, \00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%d buffer%s per producer \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"(total %dkB)\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(total %dMB)\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"  processing %d buffer%s...\0A\00", align 1
@producer_fnp = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [9 x i8] c"producer\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@link = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"  empty work item %p for data %p\0A\00", align 1
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 256, i32* %9, align 4
  store i32 2, i32* %10, align 4
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 2, i32* %13, align 4
  br label %26

26:                                               ; preds = %69, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %20, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  %32 = load i32, i32* %20, align 4
  switch i32 %32, label %67 [
    i32 97, label %33
    i32 98, label %38
    i32 105, label %42
    i32 112, label %46
    i32 115, label %50
    i32 116, label %60
    i32 119, label %62
    i32 118, label %63
    i32 104, label %66
    i32 63, label %66
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @affinity, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @affinity, align 4
  br label %69

38:                                               ; preds = %31
  %39 = load i8*, i8** @optarg, align 8
  %40 = call i8* @atoi(i8* %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %10, align 4
  br label %69

42:                                               ; preds = %31
  %43 = load i8*, i8** @optarg, align 8
  %44 = call i8* @atoi(i8* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* @iterations, align 4
  br label %69

46:                                               ; preds = %31
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i8* @atoi(i8* %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %9, align 4
  br label %69

50:                                               ; preds = %31
  %51 = load i8*, i8** @optarg, align 8
  %52 = call i8* @atoi(i8* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @WORKERS_MAX, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %50
  br label %69

60:                                               ; preds = %31
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* @halting, align 4
  br label %69

62:                                               ; preds = %31
  store i32* @reader_writer_fn, i32** @consumer_fnp, align 8
  br label %69

63:                                               ; preds = %31
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i8* @atoi(i8* %64)
  store i8* %65, i8** @verbosity, align 8
  br label %69

66:                                               ; preds = %31, %31
  br label %67

67:                                               ; preds = %31, %66
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %63, %62, %60, %59, %46, %42, %38, %33
  br label %26

70:                                               ; preds = %26
  %71 = load i64, i64* @optind, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i64, i64* @optind, align 8
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 %76
  store i8** %78, i8*** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @atoi(i8* %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %81, %70
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %5, align 8
  %91 = load i32, i32* %4, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i8**, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @atoi(i8* %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %93, %86
  %99 = call i32 @pthread_mutex_init(i32* @funnel, i32* null)
  %100 = call i32 @pthread_cond_init(i32* @barrier, i32* null)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 1
  %104 = mul nsw i32 %101, %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* @threads, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @s_if_plural(i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, 1
  %114 = call i32 @s_if_plural(i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @s_if_plural(i32 %116)
  %118 = load i32, i32* @affinity, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %122 = load i32*, i32** @consumer_fnp, align 8
  %123 = icmp eq i32* %122, @reader_writer_fn
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %126 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %109, i32 %111, i32 %114, i32 %115, i32 %117, i8* %121, i8* %125)
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 256
  br i1 %128, label %129, label %133

129:                                              ; preds = %98
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, 4
  %132 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %137

133:                                              ; preds = %98
  %134 = load i32, i32* %9, align 4
  %135 = sdiv i32 %134, 256
  %136 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @s_if_plural(i32 %139)
  %141 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %138, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %142, %143
  %145 = icmp slt i32 %144, 256
  br i1 %145, label %146, label %152

146:                                              ; preds = %137
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %9, align 4
  %149 = mul nsw i32 %147, %148
  %150 = mul nsw i32 %149, 4
  %151 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %150)
  br label %158

152:                                              ; preds = %137
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %9, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sdiv i32 %155, 256
  %157 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load i32, i32* @iterations, align 4
  %160 = load i32, i32* @iterations, align 4
  %161 = call i32 @s_if_plural(i32 %160)
  %162 = call i32 (i8*, i32, ...) @mutter(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %159, i32 %161)
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 72
  %166 = trunc i64 %165 to i32
  %167 = call i64 @malloc(i32 %166)
  %168 = inttoptr i64 %167 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %15, align 8
  %169 = load i32, i32* @threads, align 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 16
  %172 = trunc i64 %171 to i32
  %173 = call i64 @malloc(i32 %172)
  %174 = inttoptr i64 %173 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %174, %struct.TYPE_7__** %17, align 8
  store i32 0, i32* %6, align 4
  br label %175

175:                                              ; preds = %237, %158
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %240

179:                                              ; preds = %175
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %182
  store %struct.TYPE_9__* %183, %struct.TYPE_9__** %16, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 3
  %190 = call i32 @pthread_mutex_init(i32* %189, i32* null)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = call i32 @pthread_cond_init(i32* %193, i32* null)
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = call i32 @TAILQ_INIT(i32* %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* %6, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %179
  %205 = load i32*, i32** @producer_fnp, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 6
  store i32* %205, i32** %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %209, align 8
  br label %216

210:                                              ; preds = %179
  %211 = load i32*, i32** @consumer_fnp, align 8
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 6
  store i32* %211, i32** %213, align 8
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %215, align 8
  br label %216

216:                                              ; preds = %210, %204
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 5
  store %struct.TYPE_6__* %218, %struct.TYPE_6__** %220, align 8
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  %224 = load i32, i32* %13, align 4
  %225 = srem i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 4
  store %struct.TYPE_6__* %228, %struct.TYPE_6__** %230, align 8
  %231 = load i32, i32* @iterations, align 4
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 2
  store i32 %231, i32* %236, align 8
  br label %237

237:                                              ; preds = %216
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %6, align 4
  br label %175

240:                                              ; preds = %175
  store i32 0, i32* %6, align 4
  br label %241

241:                                              ; preds = %337, %240
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %340

245:                                              ; preds = %241
  %246 = load i32, i32* %9, align 4
  %247 = mul nsw i32 %246, 4096
  %248 = sext i32 %247 to i64
  %249 = udiv i64 %248, 4
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %23, align 4
  %251 = load i32, i32* %10, align 4
  %252 = load i32, i32* %9, align 4
  %253 = mul nsw i32 %251, %252
  %254 = mul nsw i32 %253, 4096
  %255 = call i64 @malloc(i32 %254)
  %256 = inttoptr i64 %255 to i32*
  store i32* %256, i32** %22, align 8
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 %258, 24
  %260 = trunc i64 %259 to i32
  %261 = call i64 @malloc(i32 %260)
  %262 = inttoptr i64 %261 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %262, %struct.TYPE_8__** %21, align 8
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %311, %245
  %264 = load i32, i32* %7, align 4
  %265 = load i32, i32* %10, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %314

267:                                              ; preds = %263
  %268 = load i32*, i32** %22, align 8
  %269 = load i32, i32* %23, align 4
  %270 = load i32, i32* %7, align 4
  %271 = mul nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %268, i64 %272
  %274 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  store i32* %273, i32** %278, align 8
  %279 = load i32, i32* %23, align 4
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %281 = load i32, i32* %7, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 1
  store i32 %279, i32* %284, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  store i64 0, i64* %289, align 8
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i64 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i64 %296
  %298 = load i32, i32* @link, align 4
  %299 = call i32 @TAILQ_INSERT_TAIL(i32* %293, %struct.TYPE_8__* %297, i32 %298)
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i64 %302
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 0
  %309 = load i32*, i32** %308, align 8
  %310 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_8__* %303, i32* %309)
  br label %311

311:                                              ; preds = %267
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  br label %263

314:                                              ; preds = %263
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %316 = load i32, i32* %6, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i64 %317
  store %struct.TYPE_7__* %318, %struct.TYPE_7__** %18, align 8
  %319 = load i32, i32* %6, align 4
  %320 = add nsw i32 %319, 1
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i64 0
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 2
  store %struct.TYPE_9__* %324, %struct.TYPE_9__** %326, align 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %330 = bitcast %struct.TYPE_7__* %329 to i8*
  %331 = call i32 @pthread_create(i32* %328, i32* null, i32* @manager_fn, i8* %330)
  store i32 %331, i32* %19, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %314
  %334 = load i32, i32* %6, align 4
  %335 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 0, i32 %334)
  br label %336

336:                                              ; preds = %333, %314
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %6, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %6, align 4
  br label %241

340:                                              ; preds = %241
  store i32 1, i32* %6, align 4
  br label %341

341:                                              ; preds = %387, %340
  %342 = load i32, i32* %6, align 4
  %343 = load i32, i32* %13, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %390

345:                                              ; preds = %341
  store i32 0, i32* %7, align 4
  br label %346

346:                                              ; preds = %383, %345
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %12, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %386

350:                                              ; preds = %346
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %352 = load i32, i32* %11, align 4
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* %6, align 4
  %355 = sub nsw i32 %354, 1
  %356 = mul nsw i32 %353, %355
  %357 = add nsw i32 %352, %356
  %358 = load i32, i32* %7, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i64 %360
  store %struct.TYPE_7__* %361, %struct.TYPE_7__** %18, align 8
  %362 = load i32, i32* %7, align 4
  %363 = add nsw i32 %362, 1
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 0
  store i32 %363, i32* %365, align 8
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i64 %368
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 2
  store %struct.TYPE_9__* %369, %struct.TYPE_9__** %371, align 8
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 1
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %375 = bitcast %struct.TYPE_7__* %374 to i8*
  %376 = call i32 @pthread_create(i32* %373, i32* null, i32* @manager_fn, i8* %375)
  store i32 %376, i32* %19, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %350
  %379 = load i32, i32* %6, align 4
  %380 = load i32, i32* %7, align 4
  %381 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %378, %350
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %7, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %7, align 4
  br label %346

386:                                              ; preds = %346
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %6, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %6, align 4
  br label %341

390:                                              ; preds = %341
  store i32 0, i32* %8, align 4
  br label %391

391:                                              ; preds = %432, %390
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* @threads, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %435

395:                                              ; preds = %391
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %397 = load i32, i32* %8, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i64 %398
  store %struct.TYPE_7__* %399, %struct.TYPE_7__** %18, align 8
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* %11, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %395
  store i32 0, i32* %24, align 4
  %404 = load i32, i32* %8, align 4
  store i32 %404, i32* %25, align 4
  br label %416

405:                                              ; preds = %395
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* %11, align 4
  %408 = sub nsw i32 %406, %407
  %409 = load i32, i32* %12, align 4
  %410 = sdiv i32 %408, %409
  store i32 %410, i32* %24, align 4
  %411 = load i32, i32* %8, align 4
  %412 = load i32, i32* %11, align 4
  %413 = sub nsw i32 %411, %412
  %414 = load i32, i32* %12, align 4
  %415 = srem i32 %413, %414
  store i32 %415, i32* %25, align 4
  br label %416

416:                                              ; preds = %405, %403
  %417 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %418 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = bitcast i32** %14 to i8**
  %421 = call i32 @pthread_join(i32 %419, i8** %420)
  store i32 %421, i32* %19, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %427

423:                                              ; preds = %416
  %424 = load i32, i32* %24, align 4
  %425 = load i32, i32* %25, align 4
  %426 = call i32 @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %424, i32 %425)
  br label %427

427:                                              ; preds = %423, %416
  %428 = load i32, i32* %24, align 4
  %429 = load i32, i32* %25, align 4
  %430 = load i32*, i32** %14, align 8
  %431 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %428, i32 %429, i32* %430)
  br label %432

432:                                              ; preds = %427
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  br label %391

435:                                              ; preds = %391
  %436 = call i64 (...) @mach_absolute_time()
  %437 = load i64, i64* @timer, align 8
  %438 = sub i64 %436, %437
  store i64 %438, i64* @timer, align 8
  %439 = load i64, i64* @timer, align 8
  %440 = udiv i64 %439, 1000000
  store i64 %440, i64* @timer, align 8
  %441 = load i64, i64* @timer, align 8
  %442 = udiv i64 %441, 1000
  %443 = trunc i64 %442 to i32
  %444 = load i64, i64* @timer, align 8
  %445 = urem i64 %444, 1000
  %446 = trunc i64 %445 to i32
  %447 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %443, i32 %446)
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @mutter(i8*, i32, ...) #1

declare dso_local i32 @s_if_plural(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

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
