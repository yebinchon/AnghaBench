; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_flushAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_flushAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i64, i64, i32, i64, i32, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_FSYNC_EVERYSEC = common dso_local global i64 0, align 8
@BIO_AOF_FSYNC = common dso_local global i32 0, align 4
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [148 x i8] c"Asynchronous AOF fsync is taking too long (disk is busy?). Writing the AOF buffer without waiting for fsync to complete, this may slow down Disque.\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"aof-write\00", align 1
@flushAppendOnlyFile.last_write_error_log = internal global i64 0, align 8
@AOF_WRITE_LOG_ERROR_RATE = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Error writing to the AOF file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [74 x i8] c"Short write while writing to the AOF file: (nwritten=%lld, expected=%lld)\00", align 1
@.str.7 = private unnamed_addr constant [131 x i8] c"Could not remove short write from the append-only file.  Disque may refuse to load the AOF the next time it starts.  ftruncate: %s\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@AOF_FSYNC_ALWAYS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [85 x i8] c"Can't recover from AOF write error when the AOF fsync policy is 'always'. Exiting...\00", align 1
@C_ERR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [54 x i8] c"AOF write error looks solved, Disque can write again.\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushAppendOnlyFile(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %8 = call i32 @sdslen(i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %213

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %13 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @BIO_AOF_FSYNC, align 4
  %17 = call i64 @bioPendingJobsOfType(i32 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %22 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %27
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  br label %213

35:                                               ; preds = %30
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %38 = sub nsw i64 %36, %37
  %39 = icmp slt i64 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %213

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %45 = load i32, i32* @LL_NOTICE, align 4
  %46 = call i32 (i32, i8*, ...) @serverLog(i32 %45, i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %27
  br label %48

48:                                               ; preds = %47, %24, %20
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @latencyStartMonitor(i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %54 = call i32 @sdslen(i32 %53)
  %55 = call i32 @write(i32 %51, i32 %52, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @latencyEndMonitor(i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %73

63:                                               ; preds = %48
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %78 = call i32 @sdslen(i32 %77)
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %149

80:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %82 = load i64, i64* @flushAppendOnlyFile.last_write_error_log, align 8
  %83 = sub nsw i64 %81, %82
  %84 = load i64, i64* @AOF_WRITE_LOG_ERROR_RATE, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  store i32 1, i32* %6, align 4
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i64 %87, i64* @flushAppendOnlyFile.last_write_error_log, align 8
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32, i32* %3, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i32, i32* @LL_WARNING, align 4
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 @strerror(i32 %96)
  %98 = call i32 (i32, i8*, ...) @serverLog(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 4
  br label %100

100:                                              ; preds = %94, %91
  br label %129

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load i32, i32* @LL_WARNING, align 4
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %109 = call i32 @sdslen(i32 %108)
  %110 = sext i32 %109 to i64
  %111 = call i32 (i32, i8*, ...) @serverLog(i32 %105, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0), i64 %107, i64 %110)
  br label %112

112:                                              ; preds = %104, %101
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %115 = call i32 @ftruncate(i32 %113, i32 %114)
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32, i32* @LL_WARNING, align 4
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 @strerror(i32 %122)
  %124 = call i32 (i32, i8*, ...) @serverLog(i32 %121, i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.7, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %120, %117
  br label %127

126:                                              ; preds = %112
  store i32 -1, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* @ENOSPC, align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 4
  br label %129

129:                                              ; preds = %127, %100
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %131 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i32, i32* @LL_WARNING, align 4
  %135 = call i32 (i32, i8*, ...) @serverLog(i32 %134, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.8, i64 0, i64 0))
  %136 = call i32 @exit(i32 1) #3
  unreachable

137:                                              ; preds = %129
  %138 = load i64, i64* @C_ERR, align 8
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %139 = load i32, i32* %3, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @sdsrange(i32 %145, i32 %146, i32 -1)
  br label %148

148:                                              ; preds = %141, %137
  br label %213

149:                                              ; preds = %73
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %151 = load i64, i64* @C_ERR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* @LL_WARNING, align 4
  %155 = call i32 (i32, i8*, ...) @serverLog(i32 %154, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %156 = load i64, i64* @C_OK, align 8
  store i64 %156, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  br label %157

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %161 = add nsw i32 %160, %159
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %163 = call i32 @sdslen(i32 %162)
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %165 = call i32 @sdsavail(i32 %164)
  %166 = add nsw i32 %163, %165
  %167 = icmp slt i32 %166, 4000
  br i1 %167, label %168, label %171

168:                                              ; preds = %158
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %170 = call i32 @sdsclear(i32 %169)
  br label %175

171:                                              ; preds = %158
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %173 = call i32 @sdsfree(i32 %172)
  %174 = call i32 (...) @sdsempty()
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %180 = icmp ne i32 %179, -1
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  br label %213

182:                                              ; preds = %178, %175
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %184 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %196

186:                                              ; preds = %182
  %187 = load i32, i32* %5, align 4
  %188 = call i32 @latencyStartMonitor(i32 %187)
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %190 = call i32 @aof_fsync(i32 %189)
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @latencyEndMonitor(i32 %191)
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %193)
  %195 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i64 %195, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  br label %213

196:                                              ; preds = %182
  %197 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %198 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %212

200:                                              ; preds = %196
  %201 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %202 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %203 = icmp sgt i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %200
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %209 = call i32 @aof_background_fsync(i32 %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  store i64 %211, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  br label %212

212:                                              ; preds = %210, %200, %196
  br label %213

213:                                              ; preds = %10, %33, %40, %148, %181, %212, %186
  ret void
}

declare dso_local i32 @sdslen(i32) #1

declare dso_local i64 @bioPendingJobsOfType(i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sdsrange(i32, i32, i32) #1

declare dso_local i32 @sdsavail(i32) #1

declare dso_local i32 @sdsclear(i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @aof_fsync(i32) #1

declare dso_local i32 @aof_background_fsync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
