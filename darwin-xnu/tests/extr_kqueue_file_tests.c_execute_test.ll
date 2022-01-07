; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_execute_test.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kqueue_file_tests.c_execute_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i64, i64, %struct.TYPE_11__, i64, i64, i32, i32, i32, i64, i64, %struct.TYPE_10__, i64, i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.kevent = type { i32, i32 }
%struct.timespec = type { i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.pollfd = type { i32, i32 }

@WAIT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[BEGIN] %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Expecting an event.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Not expecting events.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"kqueue() failed: %d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_SYMLINK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"open() of watchfile %s failed: %d (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Opened file to monitor.\0A\00", align 1
@NOSLEEP = common dso_local global i32 0, align 4
@WRITEFD = common dso_local global i32 0, align 4
@thread_status = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Created helper thread.\0A\00", align 1
@USLEEP_TIME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Finished poll() call.\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"error is in errno, %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Finished kevent() call.\0A\00", align 1
@EV_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"kevent() call failed.\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"error is in data, %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Couldn't join helper thread: %d (%s).\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Helper action had result %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Couldn't start thread: %d (%s).\0A\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Couldn't open test file %s to monitor: %d (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Couldn't open kqueue.\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Got an event.\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Did not get an event.\0A\00", align 1
@EVFILT_READ = common dso_local global i64 0, align 8
@EVFILT_WRITE = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [58 x i8] c"Read wrong number of bytes available.  Wanted %d, got %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Got unexpected event or lack thereof.\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Failed to execute test. res = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"XXX non-deterministic test result = %d (%s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@T_MAYFAIL = common dso_local global i32 0, align 4
@T_EXPECTFAIL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Test %s done with result %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @execute_test(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kevent, align 4
  %13 = alloca %struct.timespec, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca %struct.pollfd, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 -1, i32* %5, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  %18 = load i32, i32* @WAIT_TIME, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = call i32 @memset(%struct.kevent* %12, i32 0, i32 8)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 (i8*, ...) @T_LOG(i8* %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 16
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @execute_action_list(i32 %35, i32 %38, i32 1)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 0, %40
  br i1 %41, label %42, label %271

42:                                               ; preds = %1
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = call i32 (...) @kqueue()
  store i32 %48, i32* %4, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %268

64:                                               ; preds = %61, %56
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  store i32 -1, i32* %5, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @open_fifo(i32 %72, i32* %5, i32* %9)
  br label %92

74:                                               ; preds = %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @O_RDONLY, align 4
  %79 = load i32, i32* @O_SYMLINK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @open(i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @errno, align 4
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @strerror(i32 %88)
  %90 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %83, %74
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i32, i32* %5, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %254

95:                                               ; preds = %92
  %96 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* %9, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  br label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 12
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 14
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @read_to_end(i32 %113)
  br label %128

115:                                              ; preds = %103
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 13
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32, i32* @NOSLEEP, align 4
  %122 = load i32, i32* @WRITEFD, align 4
  %123 = call i32 @init_action(%struct.TYPE_13__* %15, i32 %121, i32 %122, i32 0)
  %124 = load i32, i32* %9, align 4
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = call i32 @execute_action(%struct.TYPE_13__* %15)
  br label %127

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127, %112
  store i64 0, i64* @thread_status, align 8
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 12
  %131 = bitcast %struct.TYPE_10__* %130 to i8*
  %132 = call i32 @pthread_create(i32* %11, i32* null, i32 (%struct.TYPE_13__*)* @execute_action, i8* %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp eq i32 0, %133
  br i1 %134, label %135, label %238

135:                                              ; preds = %128
  %136 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @USLEEP_TIME, align 4
  %143 = call i32 @usleep(i32 %142)
  br label %144

144:                                              ; preds = %141, %135
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %168

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %16, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @WAIT_TIME, align 4
  %158 = call i32 @poll(%struct.pollfd* %16, i32 1, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %149
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 @strerror(i32 %163)
  %165 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %7, align 4
  br label %167

167:                                              ; preds = %162, %149
  br label %204

168:                                              ; preds = %144
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 8
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = call i32 @kevent(i32 %174, %struct.TYPE_14__* %177, i32 1, %struct.kevent* %12, i32 1, %struct.timespec* %13)
  store i32 %178, i32* %8, align 4
  %179 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %168
  %183 = getelementptr inbounds %struct.kevent, %struct.kevent* %12, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @EV_ERROR, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %182, %168
  %189 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %188
  %193 = load i32, i32* @errno, align 4
  %194 = call i32 @strerror(i32 %193)
  %195 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %194)
  br label %201

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.kevent, %struct.kevent* %12, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @strerror(i32 %198)
  %200 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %196, %192
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %7, align 4
  br label %203

203:                                              ; preds = %201, %182
  br label %204

204:                                              ; preds = %203, %167
  store i32* null, i32** %14, align 8
  %205 = load i32, i32* %11, align 4
  %206 = bitcast i32** %14 to i8**
  %207 = call i32 @pthread_join(i32 %205, i8** %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @strerror(i32 %212)
  %214 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %211, i32 %213)
  br label %224

215:                                              ; preds = %204
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i32*, i32** %14, align 8
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %210
  %225 = load i32, i32* %7, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = load i32, i32* %6, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32*, i32** %14, align 8
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br label %234

234:                                              ; preds = %230, %227, %224
  %235 = phi i1 [ false, %227 ], [ false, %224 ], [ %233, %230 ]
  %236 = zext i1 %235 to i64
  %237 = select i1 %235, i32 0, i32 -1
  store i32 %237, i32* %7, align 4
  br label %243

238:                                              ; preds = %128
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @strerror(i32 %240)
  %242 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %239, i32 %241)
  br label %243

243:                                              ; preds = %238, %234
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @close(i32 %244)
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 10
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %243
  %251 = load i32, i32* %9, align 4
  %252 = call i32 @close(i32 %251)
  br label %253

253:                                              ; preds = %250, %243
  br label %259

254:                                              ; preds = %92
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 9
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %257)
  store i32 -1, i32* %7, align 4
  br label %259

259:                                              ; preds = %254, %253
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 5
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %4, align 4
  %266 = call i32 @close(i32 %265)
  br label %267

267:                                              ; preds = %264, %259
  br label %270

268:                                              ; preds = %61
  %269 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %270

270:                                              ; preds = %268, %267
  br label %271

271:                                              ; preds = %270, %1
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @execute_action_list(i32 %274, i32 %277, i32 0)
  %279 = load i32, i32* %7, align 4
  %280 = icmp eq i32 0, %279
  br i1 %280, label %281, label %348

281:                                              ; preds = %271
  %282 = load i32, i32* %8, align 4
  %283 = icmp sgt i32 %282, 0
  %284 = zext i1 %283 to i64
  %285 = select i1 %283, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0)
  %286 = call i32 (i8*, ...) @T_LOG(i8* %285)
  %287 = load i32, i32* %8, align 4
  %288 = icmp sgt i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %281
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %289, %281
  %295 = load i32, i32* %8, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %345

297:                                              ; preds = %294
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 6
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %345, label %302

302:                                              ; preds = %297, %289
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 5
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %343, label %307

307:                                              ; preds = %302
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @EVFILT_READ, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %323, label %315

315:                                              ; preds = %307
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 4
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @EVFILT_WRITE, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %343

323:                                              ; preds = %315, %307
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %323
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.kevent, %struct.kevent* %12, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = icmp ne i64 %331, %334
  br i1 %335, label %336, label %343

336:                                              ; preds = %328
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = getelementptr inbounds %struct.kevent, %struct.kevent* %12, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0), i64 %339, i32 %341)
  store i32 -1, i32* %10, align 4
  br label %344

343:                                              ; preds = %328, %323, %315, %302
  store i32 0, i32* %10, align 4
  br label %344

344:                                              ; preds = %343, %336
  br label %347

345:                                              ; preds = %297, %294
  %346 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %347

347:                                              ; preds = %345, %344
  br label %351

348:                                              ; preds = %271
  %349 = load i32, i32* %7, align 4
  %350 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 %349)
  store i32 -1, i32* %10, align 4
  br label %351

351:                                              ; preds = %348, %347
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %351
  %357 = load i32, i32* %10, align 4
  %358 = load i32, i32* %10, align 4
  %359 = icmp eq i32 %358, 0
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)
  %362 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %357, i8* %361)
  %363 = load i32, i32* @T_MAYFAIL, align 4
  br label %372

364:                                              ; preds = %351
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %364
  %370 = load i32, i32* @T_EXPECTFAIL, align 4
  br label %371

371:                                              ; preds = %369, %364
  br label %372

372:                                              ; preds = %371, %356
  %373 = load i32, i32* %10, align 4
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %372
  %376 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @T_PASS(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %378)
  br label %385

380:                                              ; preds = %372
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @T_FAIL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 %383)
  br label %385

385:                                              ; preds = %380, %375
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %10, align 4
  %390 = call i32 (i8*, ...) @T_LOG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i32 %388, i32 %389)
  %391 = load i32, i32* %10, align 4
  ret i32 %391
}

declare dso_local i32 @memset(%struct.kevent*, i32, i32) #1

declare dso_local i32 @T_LOG(i8*, ...) #1

declare dso_local i32 @execute_action_list(i32, i32, i32) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @open_fifo(i32, i32*, i32*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @read_to_end(i32) #1

declare dso_local i32 @init_action(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @execute_action(%struct.TYPE_13__*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32 (%struct.TYPE_13__*)*, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @kevent(i32, %struct.TYPE_14__*, i32, %struct.kevent*, i32, %struct.timespec*) #1

declare dso_local i32 @pthread_join(i32, i8**) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @T_PASS(i8*, i32) #1

declare dso_local i32 @T_FAIL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
