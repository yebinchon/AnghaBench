; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_rewriteAppendOnlyFile.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_rewriteAppendOnlyFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i64 }
%struct.dictEntry = type { i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"temp-rewriteaof-%d.aof\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AOF_AUTOSYNC_BYTES = common dso_local global i32 0, align 4
@JOB_STATE_ACTIVE = common dso_local global i64 0, align 8
@JOB_STATE_QUEUED = common dso_local global i64 0, align 8
@__const.rewriteAppendOnlyFile.cmd = private unnamed_addr constant [18 x i8] c"*2\0D\0A$7\0D\0ALOADJOB\0D\0A\00", align 16
@SER_STORAGE = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@AE_READABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@ANET_OK = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Parent agreed to stop sending diffs. Finalizing AOF...\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Concatenating %.2f MB of AOF diff received from parent.\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Error moving temp append only file on the final destination: %s\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"SYNC append only file rewrite performed\00", align 1
@C_OK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Write error writing append only file on disk: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteAppendOnlyFile(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i8, align 1
  %11 = alloca %struct.dictEntry*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca [18 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %18 = call i64 (...) @getpid()
  %19 = trunc i64 %18 to i32
  %20 = call i32 @snprintf(i8* %17, i32 256, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @LL_WARNING, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call double @strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @serverLog(i32 %26, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), double %28)
  %30 = load i32, i32* @C_ERR, align 4
  store i32 %30, i32* %3, align 4
  br label %214

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i8* (...) @sdsempty()
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @rioInitWithFile(i32* %7, i32* %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 5), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @AOF_AUTOSYNC_BYTES, align 4
  %43 = call i32 @rioSetAutoSync(i32* %7, i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 4), align 4
  %46 = call i32* @dictGetIterator(i32 %45)
  store i32* %46, i32** %6, align 8
  br label %47

47:                                               ; preds = %83, %65, %44
  %48 = load i32*, i32** %6, align 8
  %49 = call %struct.dictEntry* @dictNext(i32* %48)
  store %struct.dictEntry* %49, %struct.dictEntry** %11, align 8
  %50 = icmp ne %struct.dictEntry* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.dictEntry*, %struct.dictEntry** %11, align 8
  %53 = call %struct.TYPE_5__* @dictGetKey(%struct.dictEntry* %52)
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %12, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @JOB_STATE_ACTIVE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @JOB_STATE_QUEUED, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %47

66:                                               ; preds = %59, %51
  %67 = bitcast [18 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.rewriteAppendOnlyFile.cmd, i32 0, i32 0), i64 18, i1 false)
  %68 = call i8* (...) @sdsempty()
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %70 = load i32, i32* @SER_STORAGE, align 4
  %71 = call i8* @serializeJob(i8* %68, %struct.TYPE_5__* %69, i32 %70)
  store i8* %71, i8** %14, align 8
  %72 = getelementptr inbounds [18 x i8], [18 x i8]* %13, i64 0, i64 0
  %73 = call i64 @rioWrite(i32* %7, i8* %72, i32 17)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %198

76:                                               ; preds = %66
  %77 = load i8*, i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @sdslen(i8* %78)
  %80 = call i64 @rioWriteBulkString(i32* %7, i8* %77, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %198

83:                                               ; preds = %76
  %84 = load i8*, i8** %14, align 8
  %85 = call i32 @sdsfree(i8* %84)
  br label %47

86:                                               ; preds = %47
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @dictReleaseIterator(i32* %87)
  store i32* null, i32** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  br label %163

92:                                               ; preds = %86
  %93 = load i32*, i32** %8, align 8
  %94 = call i64 @fflush(i32* %93)
  %95 = load i64, i64* @EOF, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %198

98:                                               ; preds = %92
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @fileno(i32* %99)
  %101 = call i32 @fsync(i32 %100)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %198

104:                                              ; preds = %98
  store i32 0, i32* %15, align 4
  %105 = call i32 (...) @mstime()
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %124, %121, %104
  %107 = call i32 (...) @mstime()
  %108 = load i32, i32* %16, align 4
  %109 = sub nsw i32 %107, %108
  %110 = icmp slt i32 %109, 1000
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %112, 20
  br label %114

114:                                              ; preds = %111, %106
  %115 = phi i1 [ false, %106 ], [ %113, %111 ]
  br i1 %115, label %116, label %126

116:                                              ; preds = %114
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 3), align 8
  %118 = load i32, i32* @AE_READABLE, align 4
  %119 = call i64 @aeWait(i32 %117, i32 %118, i32 1)
  %120 = icmp sle i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %106

124:                                              ; preds = %116
  store i32 0, i32* %15, align 4
  %125 = call i32 (...) @aofReadDiffFromParent()
  br label %106

126:                                              ; preds = %114
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 2), align 4
  %128 = call i32 @write(i32 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %129 = icmp ne i32 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %198

131:                                              ; preds = %126
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %133 = call i64 @anetNonBlock(i32* null, i32 %132)
  %134 = load i64, i64* @ANET_OK, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %198

137:                                              ; preds = %131
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 1), align 8
  %139 = call i32 @syncRead(i32 %138, i8* %10, i32 1, i32 5000)
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i8, i8* %10, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 33
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %137
  br label %198

146:                                              ; preds = %141
  %147 = load i32, i32* @LL_NOTICE, align 4
  %148 = call i32 (i32, i8*, ...) @serverLog(i32 %147, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %149 = call i32 (...) @aofReadDiffFromParent()
  %150 = load i32, i32* @LL_NOTICE, align 4
  %151 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %152 = call i32 @sdslen(i8* %151)
  %153 = sitofp i32 %152 to double
  %154 = fdiv double %153, 0x4130000000000000
  %155 = call i32 (i32, i8*, ...) @serverLog(i32 %150, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), double %154)
  %156 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %157 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @server, i32 0, i32 0), align 8
  %158 = call i32 @sdslen(i8* %157)
  %159 = call i64 @rioWrite(i32* %7, i8* %156, i32 %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %146
  br label %198

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162, %91
  %164 = load i32*, i32** %8, align 8
  %165 = call i64 @fflush(i32* %164)
  %166 = load i64, i64* @EOF, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %198

169:                                              ; preds = %163
  %170 = load i32*, i32** %8, align 8
  %171 = call i32 @fileno(i32* %170)
  %172 = call i32 @fsync(i32 %171)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %198

175:                                              ; preds = %169
  %176 = load i32*, i32** %8, align 8
  %177 = call i64 @fclose(i32* %176)
  %178 = load i64, i64* @EOF, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %198

181:                                              ; preds = %175
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %183 = load i8*, i8** %4, align 8
  %184 = call i32 @rename(i8* %182, i8* %183)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %194

186:                                              ; preds = %181
  %187 = load i32, i32* @LL_WARNING, align 4
  %188 = load i32, i32* @errno, align 4
  %189 = call double @strerror(i32 %188)
  %190 = call i32 (i32, i8*, ...) @serverLog(i32 %187, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), double %189)
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %192 = call i32 @unlink(i8* %191)
  %193 = load i32, i32* @C_ERR, align 4
  store i32 %193, i32* %3, align 4
  br label %214

194:                                              ; preds = %181
  %195 = load i32, i32* @LL_NOTICE, align 4
  %196 = call i32 (i32, i8*, ...) @serverLog(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %197 = load i32, i32* @C_OK, align 4
  store i32 %197, i32* %3, align 4
  br label %214

198:                                              ; preds = %180, %174, %168, %161, %145, %136, %130, %103, %97, %82, %75
  %199 = load i32, i32* @LL_WARNING, align 4
  %200 = load i32, i32* @errno, align 4
  %201 = call double @strerror(i32 %200)
  %202 = call i32 (i32, i8*, ...) @serverLog(i32 %199, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), double %201)
  %203 = load i32*, i32** %8, align 8
  %204 = call i64 @fclose(i32* %203)
  %205 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %206 = call i32 @unlink(i8* %205)
  %207 = load i32*, i32** %6, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %198
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @dictReleaseIterator(i32* %210)
  br label %212

212:                                              ; preds = %209, %198
  %213 = load i32, i32* @C_ERR, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %212, %194, %186, %25
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local double @strerror(i32) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i32 @rioInitWithFile(i32*, i32*) #1

declare dso_local i32 @rioSetAutoSync(i32*, i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local %struct.dictEntry* @dictNext(i32*) #1

declare dso_local %struct.TYPE_5__* @dictGetKey(%struct.dictEntry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @serializeJob(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @rioWrite(i32*, i8*, i32) #1

declare dso_local i64 @rioWriteBulkString(i32*, i8*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i64 @fflush(i32*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i64 @aeWait(i32, i32, i32) #1

declare dso_local i32 @aofReadDiffFromParent(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @anetNonBlock(i32*, i32) #1

declare dso_local i32 @syncRead(i32, i8*, i32, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
