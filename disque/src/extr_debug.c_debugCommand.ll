; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_debugCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_debugCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"segfault\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"crash-and-recover\00", align 1
@C_OK = common dso_local global i64 0, align 8
@RESTART_SERVER_GRACEFULLY = common dso_local global i32 0, align 4
@RESTART_SERVER_CONFIG_REWRITE = common dso_local global i32 0, align 4
@RESTART_SERVER_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to restart the server. Check server logs.\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"oom\00", align 1
@ULONG_MAX = common dso_local global i32 0, align 4
@shared = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"flushall\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"loadaof\00", align 1
@server = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@AOF_ON = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Append Only File loaded by DEBUG LOADAOF\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\0D\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"structsize\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"bits:%d \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"job:%d \00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"queue:%d \00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"robj:%d \00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"dictentry:%d \00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"sdshdr5:%d \00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"sdshdr8:%d \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"sdshdr16:%d \00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"sdshdr32:%d \00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"sdshdr64:%d \00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"Unknown DEBUG subcommand or wrong number of arguments for '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugCommand(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %13, i64 1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @strcasecmp(i64 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i8 120, i8* inttoptr (i64 -1 to i8*), align 1
  br label %314

21:                                               ; preds = %1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %24, i64 1
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @strcasecmp(i64 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %34, i64 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @strcasecmp(i64 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %31, %21
  store i64 0, i64* %3, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 3
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %50, i64 2
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = call i64 @getLongLongFromObjectOrReply(%struct.TYPE_16__* %47, %struct.TYPE_17__* %52, i64* %3, i32* null)
  %54 = load i64, i64* @C_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %314

57:                                               ; preds = %46
  %58 = load i64, i64* %3, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %60, %57
  br label %62

62:                                               ; preds = %61, %41
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %65, i64 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @strcasecmp(i64 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* @RESTART_SERVER_GRACEFULLY, align 4
  %74 = load i32, i32* @RESTART_SERVER_CONFIG_REWRITE, align 4
  %75 = or i32 %73, %74
  br label %78

76:                                               ; preds = %62
  %77 = load i32, i32* @RESTART_SERVER_NONE, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ]
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i64, i64* %3, align 8
  %82 = call i32 @restartServer(i32 %80, i64 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %84 = call i32 @addReplyError(%struct.TYPE_16__* %83, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %313

85:                                               ; preds = %31
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %88, i64 1
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @strcasecmp(i64 %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %85
  %96 = load i32, i32* @ULONG_MAX, align 4
  %97 = call i8* @zmalloc(i32 %96)
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @zfree(i8* %98)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %102 = call i32 @addReply(%struct.TYPE_16__* %100, i32 %101)
  br label %312

103:                                              ; preds = %85
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %106, i64 1
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @strcasecmp(i64 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %103
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %116, 3
  br i1 %117, label %118, label %129

118:                                              ; preds = %113
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %121, i64 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = call %struct.TYPE_17__* @tryObjectEncoding(%struct.TYPE_17__* %123)
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %127, i64 2
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %128, align 8
  br label %129

129:                                              ; preds = %118, %113
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %133, i64 0
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = call i32 @serverAssertWithInfo(%struct.TYPE_16__* %130, %struct.TYPE_17__* %135, i32 0)
  br label %311

137:                                              ; preds = %103
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %140, i64 1
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @strcasecmp(i64 %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %137
  %148 = call i32 (...) @flushServerData()
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %151 = call i32 @addReply(%struct.TYPE_16__* %149, i32 %150)
  br label %310

152:                                              ; preds = %137
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %155, i64 1
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @strcasecmp(i64 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %152
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 0), align 8
  %164 = load i64, i64* @AOF_ON, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = call i32 @flushAppendOnlyFile(i32 1)
  br label %168

168:                                              ; preds = %166, %162
  %169 = call i32 (...) @flushServerData()
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @server, i32 0, i32 1), align 8
  %171 = call i64 @loadAppendOnlyFile(i32 %170)
  %172 = load i64, i64* @C_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 1), align 4
  %177 = call i32 @addReply(%struct.TYPE_16__* %175, i32 %176)
  br label %314

178:                                              ; preds = %168
  %179 = load i32, i32* @LL_WARNING, align 4
  %180 = call i32 @serverLog(i32 %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %183 = call i32 @addReply(%struct.TYPE_16__* %181, i32 %182)
  br label %309

184:                                              ; preds = %152
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %187, i64 1
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @strcasecmp(i64 %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %222, label %194

194:                                              ; preds = %184
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %222

199:                                              ; preds = %194
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %202, i64 2
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call double @strtod(i64 %206, i32* null)
  store double %207, double* %6, align 8
  %208 = load double, double* %6, align 8
  %209 = fmul double %208, 1.000000e+06
  %210 = fptosi double %209 to i64
  store i64 %210, i64* %7, align 8
  %211 = load i64, i64* %7, align 8
  %212 = sdiv i64 %211, 1000000
  %213 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 0
  store i64 %212, i64* %213, align 8
  %214 = load i64, i64* %7, align 8
  %215 = srem i64 %214, 1000000
  %216 = mul nsw i64 %215, 1000
  %217 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i32 0, i32 1
  store i64 %216, i64* %217, align 8
  %218 = call i32 @nanosleep(%struct.timespec* %8, i32* null)
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @shared, i32 0, i32 0), align 4
  %221 = call i32 @addReply(%struct.TYPE_16__* %219, i32 %220)
  br label %308

222:                                              ; preds = %194, %184
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %225, i64 1
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @strcasecmp(i64 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %255, label %232

232:                                              ; preds = %222
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, 3
  br i1 %236, label %237, label %255

237:                                              ; preds = %232
  %238 = call i32 @sdsnewlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %242, i64 2
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @sdscatsds(i32 %239, i64 %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @sdsmapchars(i32 %248, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 2)
  store i32 %249, i32* %9, align 4
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @sdscatlen(i32 %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 2)
  store i32 %251, i32* %9, align 4
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @addReplySds(%struct.TYPE_16__* %252, i32 %253)
  br label %307

255:                                              ; preds = %232, %222
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %258, i64 1
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @strcasecmp(i64 %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %295, label %265

265:                                              ; preds = %255
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %270, label %295

270:                                              ; preds = %265
  %271 = call i32 (...) @sdsempty()
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = call i32 @sdscatprintf(i32 %272, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 64)
  store i32 %273, i32* %10, align 4
  %274 = load i32, i32* %10, align 4
  %275 = call i32 @sdscatprintf(i32 %274, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 4)
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %10, align 4
  %277 = call i32 @sdscatprintf(i32 %276, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 4)
  store i32 %277, i32* %10, align 4
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @sdscatprintf(i32 %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 4)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @sdscatprintf(i32 %280, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 4)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = call i32 @sdscatprintf(i32 %282, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 4)
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* %10, align 4
  %285 = call i32 @sdscatprintf(i32 %284, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 4)
  store i32 %285, i32* %10, align 4
  %286 = load i32, i32* %10, align 4
  %287 = call i32 @sdscatprintf(i32 %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 4)
  store i32 %287, i32* %10, align 4
  %288 = load i32, i32* %10, align 4
  %289 = call i32 @sdscatprintf(i32 %288, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 4)
  store i32 %289, i32* %10, align 4
  %290 = load i32, i32* %10, align 4
  %291 = call i32 @sdscatprintf(i32 %290, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 4)
  store i32 %291, i32* %10, align 4
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @addReplyBulkSds(%struct.TYPE_16__* %292, i32 %293)
  br label %306

295:                                              ; preds = %265, %255
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %299, i64 1
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = inttoptr i64 %303 to i8*
  %305 = call i32 @addReplyErrorFormat(%struct.TYPE_16__* %296, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.26, i64 0, i64 0), i8* %304)
  br label %306

306:                                              ; preds = %295, %270
  br label %307

307:                                              ; preds = %306, %237
  br label %308

308:                                              ; preds = %307, %199
  br label %309

309:                                              ; preds = %308, %178
  br label %310

310:                                              ; preds = %309, %147
  br label %311

311:                                              ; preds = %310, %129
  br label %312

312:                                              ; preds = %311, %95
  br label %313

313:                                              ; preds = %312, %78
  br label %314

314:                                              ; preds = %56, %174, %313, %20
  ret void
}

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local i64 @getLongLongFromObjectOrReply(%struct.TYPE_16__*, %struct.TYPE_17__*, i64*, i32*) #1

declare dso_local i32 @restartServer(i32, i64) #1

declare dso_local i32 @addReplyError(%struct.TYPE_16__*, i8*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @zfree(i8*) #1

declare dso_local i32 @addReply(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_17__* @tryObjectEncoding(%struct.TYPE_17__*) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @flushServerData(...) #1

declare dso_local i32 @flushAppendOnlyFile(i32) #1

declare dso_local i64 @loadAppendOnlyFile(i32) #1

declare dso_local i32 @serverLog(i32, i8*) #1

declare dso_local double @strtod(i64, i32*) #1

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #1

declare dso_local i32 @sdsnewlen(i8*, i32) #1

declare dso_local i32 @sdscatsds(i32, i64) #1

declare dso_local i32 @sdsmapchars(i32, i8*, i8*, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @addReplySds(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i32) #1

declare dso_local i32 @addReplyBulkSds(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_16__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
