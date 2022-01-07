; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_ManageWorkerTask.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_task_tracker.c_ManageWorkerTask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64, i32, i32, i32, i32, i32 }

@INVALID_CONNECTION_ID = common dso_local global i8* null, align 8
@CLIENT_RESULT_READY = common dso_local global i32 0, align 4
@CLIENT_QUERY_DONE = common dso_local global i32 0, align 4
@CLIENT_QUERY_FAILED = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid query status: %d\00", align 1
@CLIENT_RESULT_BUSY = common dso_local global i32 0, align 4
@CLIENT_RESULT_UNAVAILABLE = common dso_local global i32 0, align 4
@MAX_TASK_FAILURE_COUNT = common dso_local global i64 0, align 8
@JOB_CLEANUP_TASK_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid task status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @ManageWorkerTask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ManageWorkerTask(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %202 [
    i32 136, label %14
    i32 130, label %15
    i32 131, label %70
    i32 133, label %139
    i32 132, label %152
    i32 129, label %152
    i32 134, label %153
    i32 135, label %184
    i32 128, label %201
  ]

14:                                               ; preds = %2
  br label %209

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @CreateJobDirectoryIfNotExists(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @ConnectToLocalBackend(i32 %22, i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %15
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @MultiClientSendQuery(i8* %37, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 131, i32* %46, align 8
  br label %61

47:                                               ; preds = %34
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 133, i32* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @MultiClientDisconnect(i8* %56)
  %58 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %47, %44
  br label %69

62:                                               ; preds = %15
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 133, i32* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %62, %61
  br label %209

70:                                               ; preds = %2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @MultiClientResultStatus(i8* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @CLIENT_RESULT_READY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @MultiClientQueryStatus(i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @CLIENT_QUERY_DONE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 129, i32* %87, align 8
  br label %105

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @CLIENT_QUERY_FAILED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 133, i32* %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %96, align 8
  br label %104

99:                                               ; preds = %88
  %100 = load i32, i32* @FATAL, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = call i32 @ereport(i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %85
  br label %126

106:                                              ; preds = %70
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @CLIENT_RESULT_BUSY, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 131, i32* %112, align 8
  br label %125

113:                                              ; preds = %106
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @CLIENT_RESULT_UNAVAILABLE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  store i32 133, i32* %119, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %117, %113
  br label %125

125:                                              ; preds = %124, %110
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @CLIENT_RESULT_BUSY, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @MultiClientDisconnect(i8* %133)
  %135 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %130, %126
  br label %209

139:                                              ; preds = %2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @MAX_TASK_FAILURE_COUNT, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i32 136, i32* %147, align 8
  br label %151

148:                                              ; preds = %139
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32 132, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %145
  br label %209

152:                                              ; preds = %2, %2
  br label %209

153:                                              ; preds = %2
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @JOB_CLEANUP_TASK_ID, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i32 135, i32* %161, align 8
  br label %209

162:                                              ; preds = %153
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %167 = icmp ne i8* %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** %9, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @MultiClientResultStatus(i8* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @CLIENT_RESULT_BUSY, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load i8*, i8** %9, align 8
  %179 = call i32 @MultiClientCancel(i8* %178)
  br label %180

180:                                              ; preds = %177, %168
  br label %181

181:                                              ; preds = %180, %162
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i32 135, i32* %183, align 8
  br label %209

184:                                              ; preds = %2
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %189 = icmp ne i8* %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %184
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @MultiClientDisconnect(i8* %193)
  %195 = load i8*, i8** @INVALID_CONNECTION_ID, align 8
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %190, %184
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32 128, i32* %200, align 8
  br label %209

201:                                              ; preds = %2
  br label %202

202:                                              ; preds = %2, %201
  %203 = load i32, i32* @FATAL, align 4
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  %208 = call i32 @ereport(i32 %203, i32 %207)
  br label %209

209:                                              ; preds = %202, %198, %181, %159, %152, %151, %138, %69, %14
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @MAX_TASK_FAILURE_COUNT, align 8
  %214 = icmp sle i64 %212, %213
  %215 = zext i1 %214 to i32
  %216 = call i32 @Assert(i32 %215)
  ret void
}

declare dso_local i32 @CreateJobDirectoryIfNotExists(i32) #1

declare dso_local i8* @ConnectToLocalBackend(i32, i32) #1

declare dso_local i32 @MultiClientSendQuery(i8*, i32) #1

declare dso_local i32 @MultiClientDisconnect(i8*) #1

declare dso_local i32 @MultiClientResultStatus(i8*) #1

declare dso_local i32 @MultiClientQueryStatus(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @MultiClientCancel(i8*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
