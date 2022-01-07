; ModuleID = '/home/carl/AnghaBench/disque/src/extr_latency.c_createLatencyReport.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_latency.c_createLatencyReport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32, i32 }
%struct.latencyTimeSeries = type { i64 }
%struct.latencyStats = type { double, i64, i64, i64 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [290 x i8] c"I'm sorry, Dave, I can't do that. Latency monitoring is disabled in this Disque instance. You may use \22CONFIG SET latency-monitor-threshold <milliseconds>.\22 in order to enable it. If we weren't in a deep space mission I'd suggest to take a look at http://disque.io/topics/latency-monitor.\0A\00", align 1
@.str.1 = private unnamed_addr constant [110 x i8] c"Dave, I have observed latency spikes in this Disque instance. You don't mind talking about it, do you Dave?\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"%d. %s: %d latency spikes (average %lums, mean deviation %lums, period %.2f sec). Worst all time event %lums.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"terrible\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"poor\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"good\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"excellent\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c" Fork rate is %.2f GB/sec (%s).\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"fast-command\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"aof-write-pending-fsync\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"aof-write-active-child\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"aof-write-alone\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"aof-fsync-always\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"aof-fstat\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"rdb-unlik-temp-file\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"aof-rewrite-diff-write\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"aof-rename\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"expire-cycle\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [198 x i8] c"Dave, no latency spike was observed during the lifetime of this Disque instance, not in the slightest bit. I honestly think you ought to sit down calmly, take a stress pill, and think things over.\0A\00", align 1
@.str.23 = private unnamed_addr constant [173 x i8] c"\0AWhile there are latency events logged, I'm not able to suggest any easy fix. Please use the Disque community to get some help, providing this report in your help request.\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"\0AI have a few advices for you:\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [303 x i8] c"- If you are using a virtual machine, consider upgrading it with a faster one using an hypervisior that provides less latency during fork() calls. Xen is known to have poor fork() performance. Even in the context of the same VM provider, certain kinds of instances can execute fork faster than others.\0A\00", align 1
@.str.26 = private unnamed_addr constant [264 x i8] c"- There are latency issues with potentially slow commands you are using. Try to enable the Slow Log Disque feature using the command 'CONFIG SET slowlog-log-slower-than %llu'. If the Slow log is disabled Disque is not able to log slow commands execution for you.\0A\00", align 1
@.str.27 = private unnamed_addr constant [174 x i8] c"- Your current Slow Log configuration only logs events that are slower than your configured latency monitor threshold. Please use 'CONFIG SET slowlog-log-slower-than %llu'.\0A\00", align 1
@.str.28 = private unnamed_addr constant [175 x i8] c"- Check your Slow Log to understand what are the commands you are running which are too slow to execute. Please check http://disque.io/commands/slowlog for more information.\0A\00", align 1
@.str.29 = private unnamed_addr constant [623 x i8] c"- The system is slow to execute Disque code paths not containing system calls. This usually means the system does not provide Disque CPU time to run for long periods. You should try to:\0A  1) Lower the system load.\0A  2) Use a computer / VM just for Disque if you are running other softawre in the same system.\0A  3) Check if you have a \22noisy neighbour\22 problem.\0A  4) Check with 'disque-cli --intrinsic-latency 100' what is the intrinsic latency in your system.\0A  5) Check if the problem is allocator-related by recompiling Disque with MALLOC=libc, if you are using Jemalloc. However this may create fragmentation problems.\0A\00", align 1
@.str.30 = private unnamed_addr constant [174 x i8] c"- It is strongly advised to use local disks for persistence, especially if you are using AOF. Remote disks provided by platform-as-a-service providers are known to be slow.\0A\00", align 1
@.str.31 = private unnamed_addr constant [363 x i8] c"- SSD disks are able to reduce fsync latency, and total time needed for snapshotting and AOF log rewriting (resulting in smaller memory usage and smaller final AOF rewrite buffer flushes). With extremely high write load SSD disks can be a good option. However Disque should perform reasonably with high load using normal disks. Use this advice as a last resort.\0A\00", align 1
@.str.32 = private unnamed_addr constant [332 x i8] c"- Mounting ext3/4 filesystems with data=writeback can provide a performance boost compared to data=ordered, however this mode of operation provides less guarantees, and sometimes it can happen that after a hard crash the AOF file will have an half-written command at the end and will require to be repaired before Disque restarts.\0A\00", align 1
@.str.33 = private unnamed_addr constant [157 x i8] c"- Try to lower the disk contention. This is often caused by other disk intensive processes running in the same computer (including other Disque instances).\0A\00", align 1
@.str.34 = private unnamed_addr constant [307 x i8] c"- Assuming from the point of view of data safety this is viable in your environment, you could try to enable the 'no-appendfsync-on-rewrite' option, so that fsync will not be performed while there is a child rewriting the AOF file or producing an RDB file (the moment where there is high disk contention).\0A\00", align 1
@AOF_FSYNC_ALWAYS = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [156 x i8] c"- Your fsync policy is set to 'always'. It is very hard to get good performances with such a setup, if possible try to relax the fsync policy to 'onesec'.\0A\00", align 1
@.str.36 = private unnamed_addr constant [363 x i8] c"- Latency during the AOF atomic rename operation or when the final difference is flushed to the AOF file at the end of the rewrite, sometimes is caused by very high write load, causing the AOF buffer to get very large. If possible try to send less commands to accomplish the same work, or use Lua scripts to group multiple operations into a single EVALSHA call.\0A\00", align 1
@.str.37 = private unnamed_addr constant [149 x i8] c"- In order to make the Disque keys expiring process more incremental, try to set the 'hz' configuration parameter to 100 using 'CONFIG SET hz 100'.\0A\00", align 1
@.str.38 = private unnamed_addr constant [240 x i8] c"- Deleting, expiring or evicting (because of maxmemory policy) large objects is a blocking operation. If you have very large objects that are often deleted, expired, or evicted, try to fragment those objects into multiple smaller objects.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @createLatencyReport() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.latencyTimeSeries*, align 8
  %23 = alloca %struct.latencyStats, align 8
  %24 = alloca i8*, align 8
  %25 = call i32 (...) @sdsempty()
  store i32 %25, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %27 = call i64 @dictSize(i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %0
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @sdscat(i32 %33, i8* getelementptr inbounds ([290 x i8], [290 x i8]* @.str, i64 0, i64 0))
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %1, align 4
  br label %323

36:                                               ; preds = %29, %0
  store i32 0, i32* %20, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  %38 = call i32* @dictGetSafeIterator(i32 %37)
  store i32* %38, i32** %18, align 8
  br label %39

39:                                               ; preds = %203, %50, %36
  %40 = load i32*, i32** %18, align 8
  %41 = call i32* @dictNext(i32* %40)
  store i32* %41, i32** %19, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %206

43:                                               ; preds = %39
  %44 = load i32*, i32** %19, align 8
  %45 = call i8* @dictGetKey(i32* %44)
  store i8* %45, i8** %21, align 8
  %46 = load i32*, i32** %19, align 8
  %47 = call %struct.latencyTimeSeries* @dictGetVal(i32* %46)
  store %struct.latencyTimeSeries* %47, %struct.latencyTimeSeries** %22, align 8
  %48 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %22, align 8
  %49 = icmp eq %struct.latencyTimeSeries* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %39

51:                                               ; preds = %43
  %52 = load i32, i32* %20, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @sdscat(i32 %57, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %21, align 8
  %61 = call i32 @analyzeLatencyForEvent(i8* %60, %struct.latencyStats* %23)
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = load i8*, i8** %21, align 8
  %66 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %23, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %23, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %23, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %23, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sitofp i64 %73 to double
  %75 = getelementptr inbounds %struct.latencyStats, %struct.latencyStats* %23, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = fdiv double %74, %76
  %78 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %22, align 8
  %79 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %62, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0), i64 %64, i8* %65, double %67, i64 %69, i64 %71, double %77, i64 %80)
  store i32 %81, i32* %2, align 4
  %82 = load i8*, i8** %21, align 8
  %83 = call i32 @strcasecmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %59
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %87 = icmp slt i32 %86, 10
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %24, align 8
  store i32 1, i32* %3, align 4
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %104

91:                                               ; preds = %85
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %93 = icmp slt i32 %92, 25
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %24, align 8
  store i32 1, i32* %3, align 4
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %103

97:                                               ; preds = %91
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %99 = icmp slt i32 %98, 100
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %24, align 8
  br label %102

101:                                              ; preds = %97
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %24, align 8
  br label %102

102:                                              ; preds = %101, %100
  br label %103

103:                                              ; preds = %102, %94
  br label %104

104:                                              ; preds = %103, %88
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %107 = sext i32 %106 to i64
  %108 = load i8*, i8** %24, align 8
  %109 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i64 %107, i8* %108)
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %104, %59
  %111 = load i8*, i8** %21, align 8
  %112 = call i32 @strcasecmp(i8* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  br label %129

120:                                              ; preds = %114
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %122 = sdiv i32 %121, 1000
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %117
  store i32 1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, 2
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %129, %110
  %133 = load i8*, i8** %21, align 8
  %134 = call i32 @strcasecmp(i8* %133, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  store i32 1, i32* %8, align 4
  %137 = load i32, i32* %17, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i8*, i8** %21, align 8
  %141 = call i32 @strcasecmp(i8* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  store i32 1, i32* %11, align 4
  store i32 1, i32* %7, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 4
  store i32 %145, i32* %17, align 4
  br label %146

146:                                              ; preds = %143, %139
  %147 = load i8*, i8** %21, align 8
  %148 = call i32 @strcasecmp(i8* %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %151 = load i32, i32* %17, align 4
  %152 = add nsw i32 %151, 3
  store i32 %152, i32* %17, align 4
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i8*, i8** %21, align 8
  %155 = call i32 @strcasecmp(i8* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  store i32 1, i32* %11, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %158 = load i32, i32* %17, align 4
  %159 = add nsw i32 %158, 3
  store i32 %159, i32* %17, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i8*, i8** %21, align 8
  %162 = call i32 @strcasecmp(i8* %161, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %160
  store i32 1, i32* %16, align 4
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i8*, i8** %21, align 8
  %169 = call i32 @strcasecmp(i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i8*, i8** %21, align 8
  %173 = call i32 @strcasecmp(i8* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171, %167
  store i32 1, i32* %7, align 4
  store i32 1, i32* %11, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 2
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i8*, i8** %21, align 8
  %180 = call i32 @strcasecmp(i8* %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i8*, i8** %21, align 8
  %184 = call i32 @strcasecmp(i8* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %182, %178
  store i32 1, i32* %13, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, 4
  store i32 %188, i32* %17, align 4
  br label %189

189:                                              ; preds = %186, %182
  %190 = load i8*, i8** %21, align 8
  %191 = call i32 @strcasecmp(i8* %190, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 2
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %193, %189
  %197 = load i8*, i8** %21, align 8
  %198 = call i32 @strcasecmp(i8* %197, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %196
  store i32 1, i32* %15, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %200, %196
  %204 = load i32, i32* %2, align 4
  %205 = call i32 @sdscatlen(i32 %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i32 1)
  store i32 %205, i32* %2, align 4
  br label %39

206:                                              ; preds = %39
  %207 = load i32*, i32** %18, align 8
  %208 = call i32 @dictReleaseIterator(i32* %207)
  %209 = load i32, i32* %20, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* %2, align 4
  %213 = call i32 @sdscat(i32 %212, i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.22, i64 0, i64 0))
  store i32 %213, i32* %2, align 4
  br label %321

214:                                              ; preds = %206
  %215 = load i32, i32* %17, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %2, align 4
  %219 = call i32 @sdscat(i32 %218, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.23, i64 0, i64 0))
  store i32 %219, i32* %2, align 4
  br label %320

220:                                              ; preds = %214
  %221 = load i32, i32* %2, align 4
  %222 = call i32 @sdscat(i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  store i32 %222, i32* %2, align 4
  %223 = load i32, i32* %3, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i32, i32* %2, align 4
  %227 = call i32 @sdscat(i32 %226, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.25, i64 0, i64 0))
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %225, %220
  %229 = load i32, i32* %4, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load i32, i32* %2, align 4
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %234 = sext i32 %233 to i64
  %235 = mul i64 %234, 1000
  %236 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %232, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @.str.26, i64 0, i64 0), i64 %235)
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %231, %228
  %238 = load i32, i32* %5, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i32, i32* %2, align 4
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 1000
  %245 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %241, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.27, i64 0, i64 0), i64 %244)
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %240, %237
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %2, align 4
  %251 = call i32 @sdscat(i32 %250, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @.str.28, i64 0, i64 0))
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %2, align 4
  %257 = call i32 @sdscat(i32 %256, i8* getelementptr inbounds ([623 x i8], [623 x i8]* @.str.29, i64 0, i64 0))
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, i32* %2, align 4
  %263 = call i32 @sdscat(i32 %262, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str.30, i64 0, i64 0))
  store i32 %263, i32* %2, align 4
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %2, align 4
  %269 = call i32 @sdscat(i32 %268, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.31, i64 0, i64 0))
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %267, %264
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* %2, align 4
  %275 = call i32 @sdscat(i32 %274, i8* getelementptr inbounds ([332 x i8], [332 x i8]* @.str.32, i64 0, i64 0))
  store i32 %275, i32* %2, align 4
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* %7, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load i32, i32* %2, align 4
  %281 = call i32 @sdscat(i32 %280, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.33, i64 0, i64 0))
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %279, %276
  %283 = load i32, i32* %10, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* %2, align 4
  %287 = call i32 @sdscat(i32 %286, i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.34, i64 0, i64 0))
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i32, i32* %16, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %293 = load i64, i64* @AOF_FSYNC_ALWAYS, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = load i32, i32* %2, align 4
  %297 = call i32 @sdscat(i32 %296, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.35, i64 0, i64 0))
  store i32 %297, i32* %2, align 4
  br label %298

298:                                              ; preds = %295, %291, %288
  %299 = load i32, i32* %13, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i32, i32* %2, align 4
  %303 = call i32 @sdscat(i32 %302, i8* getelementptr inbounds ([363 x i8], [363 x i8]* @.str.36, i64 0, i64 0))
  store i32 %303, i32* %2, align 4
  br label %304

304:                                              ; preds = %301, %298
  %305 = load i32, i32* %14, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %304
  %308 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %309 = icmp slt i32 %308, 100
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* %2, align 4
  %312 = call i32 @sdscat(i32 %311, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.37, i64 0, i64 0))
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %310, %307, %304
  %314 = load i32, i32* %15, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %319

316:                                              ; preds = %313
  %317 = load i32, i32* %2, align 4
  %318 = call i32 @sdscat(i32 %317, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.38, i64 0, i64 0))
  store i32 %318, i32* %2, align 4
  br label %319

319:                                              ; preds = %316, %313
  br label %320

320:                                              ; preds = %319, %217
  br label %321

321:                                              ; preds = %320, %211
  %322 = load i32, i32* %2, align 4
  store i32 %322, i32* %1, align 4
  br label %323

323:                                              ; preds = %321, %32
  %324 = load i32, i32* %1, align 4
  ret i32 %324
}

declare dso_local i32 @sdsempty(...) #1

declare dso_local i64 @dictSize(i32) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i32* @dictGetSafeIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i8* @dictGetKey(i32*) #1

declare dso_local %struct.latencyTimeSeries* @dictGetVal(i32*) #1

declare dso_local i32 @analyzeLatencyForEvent(i8*, %struct.latencyStats*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
