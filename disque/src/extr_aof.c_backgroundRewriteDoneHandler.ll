; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_backgroundRewriteDoneHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_backgroundRewriteDoneHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8*, i64, i32, i64, i32, i32, i64, i8*, i32, i32, i32 }

@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Background AOF rewrite terminated with success\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"temp-rewriteaof-bg-%d.aof\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Unable to open the temporary AOF produced by the child: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"Error trying to flush the parent diff to the rewritten AOF: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"aof-rewrite-diff-write\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"Residual parent diff successfully flushed to the rewritten AOF (%.2f MB)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"Error trying to rename the temporary AOF file: %s\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"aof-rename\00", align 1
@AOF_FSYNC_ALWAYS = common dso_local global i64 0, align 8
@AOF_FSYNC_EVERYSEC = common dso_local global i64 0, align 8
@C_OK = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"Background AOF rewrite finished successfully\00", align 1
@AOF_WAIT_REWRITE = common dso_local global i64 0, align 8
@AOF_ON = common dso_local global i64 0, align 8
@BIO_CLOSE_FILE = common dso_local global i32 0, align 4
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"Background AOF rewrite signal handler took %lldus\00", align 1
@C_ERR = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"Background AOF rewrite terminated with error\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Background AOF rewrite terminated by signal %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backgroundRewriteDoneHandler(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %143, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %143

15:                                               ; preds = %12
  %16 = call i64 (...) @ustime()
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* @LL_NOTICE, align 4
  %18 = call i32 (i32, i8*, ...) @serverLog(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @latencyStartMonitor(i32 %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %23 = call i32 @snprintf(i8* %21, i32 256, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* @O_WRONLY, align 4
  %26 = load i32, i32* @O_APPEND, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open(i8* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load i32, i32* @LL_WARNING, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (i32, i8*, ...) @serverLog(i32 %32, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %160

36:                                               ; preds = %15
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @aofRewriteBufferWrite(i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @LL_WARNING, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i32, i8*, ...) @serverLog(i32 %41, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @close(i32 %45)
  br label %160

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @latencyEndMonitor(i32 %48)
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @LL_NOTICE, align 4
  %53 = call i64 (...) @aofRewriteBufferSize()
  %54 = sitofp i64 %53 to double
  %55 = fdiv double %54, 0x4130000000000000
  %56 = call i32 (i32, i8*, ...) @serverLog(i32 %52, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), double %55)
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %61 = load i32, i32* @O_RDONLY, align 4
  %62 = load i32, i32* @O_NONBLOCK, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @open(i8* %60, i32 %63)
  store i32 %64, i32* %6, align 4
  br label %66

65:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @latencyStartMonitor(i32 %67)
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %71 = call i32 @rename(i8* %69, i8* %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load i32, i32* @LL_WARNING, align 4
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = call i32 (i32, i8*, ...) @serverLog(i32 %74, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @close(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  br label %85

85:                                               ; preds = %82, %73
  br label %160

86:                                               ; preds = %66
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @latencyEndMonitor(i32 %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @close(i32 %94)
  br label %119

96:                                               ; preds = %86
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %100 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @aof_fsync(i32 %103)
  br label %113

105:                                              ; preds = %96
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %107 = load i64, i64* @AOF_FSYNC_EVERYSEC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @aof_background_fsync(i32 %110)
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %102
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %114 = call i32 (...) @aofUpdateCurrentSize()
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 4
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 8
  %117 = call i32 @sdsfree(i32 %116)
  %118 = call i32 (...) @sdsempty()
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 8
  br label %119

119:                                              ; preds = %113, %93
  %120 = load i8*, i8** @C_OK, align 8
  store i8* %120, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %121 = load i32, i32* @LL_NOTICE, align 4
  %122 = call i32 (i32, i8*, ...) @serverLog(i32 %121, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %124 = load i64, i64* @AOF_WAIT_REWRITE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i64, i64* @AOF_ON, align 8
  store i64 %127, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  br label %128

128:                                              ; preds = %126, %119
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, -1
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* @BIO_CLOSE_FILE, align 4
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i32 @bioCreateBackgroundJob(i32 %132, i8* %135, i32* null, i32* null)
  br label %137

137:                                              ; preds = %131, %128
  %138 = load i32, i32* @LL_VERBOSE, align 4
  %139 = call i64 (...) @ustime()
  %140 = load i64, i64* %8, align 8
  %141 = sub nsw i64 %139, %140
  %142 = call i32 (i32, i8*, ...) @serverLog(i32 %138, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %141)
  br label %159

143:                                              ; preds = %12, %2
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i8*, i8** @C_ERR, align 8
  store i8* %150, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %151 = load i32, i32* @LL_WARNING, align 4
  %152 = call i32 (i32, i8*, ...) @serverLog(i32 %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  br label %158

153:                                              ; preds = %146, %143
  %154 = load i8*, i8** @C_ERR, align 8
  store i8* %154, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %155 = load i32, i32* @LL_WARNING, align 4
  %156 = load i32, i32* %4, align 4
  %157 = call i32 (i32, i8*, ...) @serverLog(i32 %155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %153, %149
  br label %159

159:                                              ; preds = %158, %137
  br label %160

160:                                              ; preds = %159, %85, %40, %31
  %161 = call i32 (...) @aofClosePipes()
  %162 = call i32 (...) @aofRewriteBufferReset()
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %164 = call i32 @aofRemoveTempFile(i32 %163)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %165 = call i64 @time(i32* null)
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %165, %167
  store i64 %168, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %170 = load i64, i64* @AOF_WAIT_REWRITE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %160
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 4
  br label %173

173:                                              ; preds = %172, %160
  ret void
}

declare dso_local i64 @ustime(...) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @aofRewriteBufferWrite(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

declare dso_local i64 @aofRewriteBufferSize(...) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @aof_fsync(i32) #1

declare dso_local i32 @aof_background_fsync(i32) #1

declare dso_local i32 @aofUpdateCurrentSize(...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @bioCreateBackgroundJob(i32, i8*, i32*, i32*) #1

declare dso_local i32 @aofClosePipes(...) #1

declare dso_local i32 @aofRewriteBufferReset(...) #1

declare dso_local i32 @aofRemoveTempFile(i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
