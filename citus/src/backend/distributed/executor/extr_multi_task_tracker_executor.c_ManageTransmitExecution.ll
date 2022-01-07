; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTransmitExecution.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTransmitExecution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32* }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i32*, i64, i32*, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i8* }

@EXEC_TRANSMIT_INVALID_FIRST = common dso_local global i32 0, align 4
@SQL_TASK = common dso_local global i64 0, align 8
@EXEC_TASK_DONE = common dso_local global i32 0, align 4
@CLIENT_INVALID_QUERY = common dso_local global i32 0, align 4
@INVALID_CONNECTION_ID = common dso_local global i32 0, align 4
@TASK_STATUS_INVALID_FIRST = common dso_local global i32 0, align 4
@TASK_FILE_TRANSMIT_QUEUED = common dso_local global i32 0, align 4
@TASK_CLIENT_SIDE_TRANSMIT_FAILED = common dso_local global i32 0, align 4
@TASK_ASSIGNED = common dso_local global i32 0, align 4
@CLIENT_QUERY_COPY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@CLIENT_INVALID_COPY = common dso_local global i32 0, align 4
@SubPlanLevel = common dso_local global i32 0, align 4
@CLIENT_COPY_MORE = common dso_local global i32 0, align 4
@CLIENT_COPY_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not close copied file: %m\00", align 1
@CLIENT_COPY_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not close copy file: %m\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid transmit status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_25__*)* @ManageTransmitExecution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ManageTransmitExecution(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__* %2, %struct.TYPE_25__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_24__*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %8, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* @EXEC_TRANSMIT_INVALID_FIRST, align 4
  store i32 %48, i32* %14, align 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SQL_TASK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* %13, align 4
  switch i32 %56, label %267 [
    i32 128, label %57
    i32 131, label %79
    i32 133, label %174
    i32 129, label %247
    i32 130, label %265
    i32 132, label %266
  ]

57:                                               ; preds = %4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @EXEC_TASK_DONE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  store i32 128, i32* %14, align 4
  br label %272

69:                                               ; preds = %57
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %71 = call i32 @TrackerHealthy(%struct.TYPE_21__* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 130, i32* %14, align 4
  br label %272

75:                                               ; preds = %69
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %78 = call i32 @TrackerQueueFileTransmit(%struct.TYPE_21__* %76, %struct.TYPE_23__* %77)
  store i32 131, i32* %14, align 4
  br label %272

79:                                               ; preds = %4
  %80 = load i32, i32* @CLIENT_INVALID_QUERY, align 4
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* @INVALID_CONNECTION_ID, align 4
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* @TASK_STATUS_INVALID_FIRST, align 4
  store i32 %82, i32* %20, align 4
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = call i32 @TrackerHealthy(%struct.TYPE_21__* %83)
  store i32 %84, i32* %21, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 130, i32* %14, align 4
  br label %272

88:                                               ; preds = %79
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %91 = call i32 @TrackerTaskStatus(%struct.TYPE_21__* %89, %struct.TYPE_23__* %90)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @TASK_FILE_TRANSMIT_QUEUED, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 131, i32* %14, align 4
  br label %272

96:                                               ; preds = %88
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @TASK_CLIENT_SIDE_TRANSMIT_FAILED, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 129, i32* %14, align 4
  br label %272

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = call i32 @TransmitTrackerConnectionId(%struct.TYPE_21__* %103, %struct.TYPE_23__* %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* @INVALID_CONNECTION_ID, align 4
  %108 = icmp ne i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* @TASK_ASSIGNED, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @Assert(i32 %114)
  %116 = load i32, i32* %19, align 4
  %117 = call i32 @MultiClientQueryStatus(i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = load i32, i32* @CLIENT_QUERY_COPY, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %164

121:                                              ; preds = %102
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call %struct.TYPE_24__* @MasterJobDirectoryName(i32 %124)
  store %struct.TYPE_24__* %125, %struct.TYPE_24__** %22, align 8
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_24__* @TaskFilename(%struct.TYPE_24__* %126, i32 %129)
  store %struct.TYPE_24__* %130, %struct.TYPE_24__** %23, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %24, align 8
  %134 = load i32, i32* @O_APPEND, align 4
  %135 = load i32, i32* @O_CREAT, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @O_RDWR, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @O_TRUNC, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @PG_BINARY, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* @S_IRUSR, align 4
  %144 = load i32, i32* @S_IWUSR, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %26, align 4
  %146 = load i8*, i8** %24, align 8
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %26, align 4
  %149 = call i32 @BasicOpenFilePerm(i8* %146, i32 %147, i32 %148)
  store i32 %149, i32* %27, align 4
  %150 = load i32, i32* %27, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %121
  %153 = load i32, i32* %27, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 %153, i32* %156, align 4
  store i32 133, i32* %14, align 4
  br label %163

157:                                              ; preds = %121
  %158 = load i32, i32* @WARNING, align 4
  %159 = call i32 (...) @errcode_for_file_access()
  %160 = load i8*, i8** %24, align 8
  %161 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %160)
  %162 = call i32 @ereport(i32 %158, i32 %161)
  store i32 129, i32* %14, align 4
  br label %163

163:                                              ; preds = %157, %152
  br label %165

164:                                              ; preds = %102
  store i32 129, i32* %14, align 4
  br label %165

165:                                              ; preds = %164, %163
  %166 = load i32, i32* %14, align 4
  %167 = icmp eq i32 %166, 129
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %168, %165
  br label %272

174:                                              ; preds = %4
  %175 = load i32*, i32** %9, align 8
  %176 = load i64, i64* %10, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %28, align 4
  %179 = load i32, i32* @CLIENT_INVALID_COPY, align 4
  store i32 %179, i32* %29, align 4
  store i32 -1, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %182 = call i32 @TransmitTrackerConnectionId(%struct.TYPE_21__* %180, %struct.TYPE_23__* %181)
  store i32 %182, i32* %32, align 4
  %183 = load i32, i32* %32, align 4
  %184 = load i32, i32* @INVALID_CONNECTION_ID, align 4
  %185 = icmp ne i32 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @Assert(i32 %186)
  %188 = load i32, i32* %32, align 4
  %189 = load i32, i32* %28, align 4
  %190 = call i32 @MultiClientCopyData(i32 %188, i32 %189, i32* %31)
  store i32 %190, i32* %29, align 4
  %191 = load i32, i32* @SubPlanLevel, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %174
  %194 = load i32, i32* %31, align 4
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %194
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %193, %174
  %200 = load i32, i32* %29, align 4
  %201 = load i32, i32* @CLIENT_COPY_MORE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 133, i32* %14, align 4
  br label %272

204:                                              ; preds = %199
  %205 = load i32, i32* %29, align 4
  %206 = load i32, i32* @CLIENT_COPY_DONE, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %223

208:                                              ; preds = %204
  %209 = load i32, i32* %28, align 4
  %210 = call i32 @close(i32 %209)
  store i32 %210, i32* %30, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = load i64, i64* %10, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 -1, i32* %213, align 4
  %214 = load i32, i32* %30, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 132, i32* %14, align 4
  br label %222

217:                                              ; preds = %208
  %218 = load i32, i32* @WARNING, align 4
  %219 = call i32 (...) @errcode_for_file_access()
  %220 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %221 = call i32 @ereport(i32 %218, i32 %220)
  store i32 129, i32* %14, align 4
  br label %222

222:                                              ; preds = %217, %216
  br label %242

223:                                              ; preds = %204
  %224 = load i32, i32* %29, align 4
  %225 = load i32, i32* @CLIENT_COPY_FAILED, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %223
  store i32 129, i32* %14, align 4
  %228 = load i32, i32* %28, align 4
  %229 = call i32 @close(i32 %228)
  store i32 %229, i32* %30, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = load i64, i64* %10, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  store i32 -1, i32* %232, align 4
  %233 = load i32, i32* %30, align 4
  %234 = icmp slt i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = load i32, i32* @WARNING, align 4
  %237 = call i32 (...) @errcode_for_file_access()
  %238 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %239 = call i32 @ereport(i32 %236, i32 %238)
  br label %240

240:                                              ; preds = %235, %227
  br label %241

241:                                              ; preds = %240, %223
  br label %242

242:                                              ; preds = %241, %222
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 2
  store i32* null, i32** %246, align 8
  br label %272

247:                                              ; preds = %4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %249 = call i32 @TrackerConnectionUp(%struct.TYPE_21__* %248)
  store i32 %249, i32* %34, align 4
  %250 = load i32, i32* %34, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %252, %247
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %259 = call i32 @TrackerHealthy(%struct.TYPE_21__* %258)
  store i32 %259, i32* %33, align 4
  %260 = load i32, i32* %33, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  store i32 128, i32* %14, align 4
  br label %264

263:                                              ; preds = %257
  store i32 130, i32* %14, align 4
  br label %264

264:                                              ; preds = %263, %262
  br label %272

265:                                              ; preds = %4
  store i32 128, i32* %14, align 4
  br label %272

266:                                              ; preds = %4
  store i32 132, i32* %14, align 4
  br label %272

267:                                              ; preds = %4
  %268 = load i32, i32* @FATAL, align 4
  %269 = load i32, i32* %13, align 4
  %270 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %269)
  %271 = call i32 @ereport(i32 %268, i32 %270)
  br label %272

272:                                              ; preds = %267, %266, %265, %264, %242, %203, %173, %100, %95, %87, %75, %74, %68
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %11, align 8
  %276 = load i32, i32* %14, align 4
  %277 = load i32*, i32** %12, align 8
  %278 = load i64, i64* %11, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* %14, align 4
  ret i32 %280
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TrackerHealthy(%struct.TYPE_21__*) #1

declare dso_local i32 @TrackerQueueFileTransmit(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @TrackerTaskStatus(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @TransmitTrackerConnectionId(%struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @MultiClientQueryStatus(i32) #1

declare dso_local %struct.TYPE_24__* @MasterJobDirectoryName(i32) #1

declare dso_local %struct.TYPE_24__* @TaskFilename(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @BasicOpenFilePerm(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @MultiClientCopyData(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @TrackerConnectionUp(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
