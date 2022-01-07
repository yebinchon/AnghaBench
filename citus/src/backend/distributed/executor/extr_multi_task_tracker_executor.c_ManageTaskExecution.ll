; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTaskExecution.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_multi_task_tracker_executor.c_ManageTaskExecution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__*, i32, i32 }
%struct.TYPE_21__ = type { i32*, i64, i64 }
%struct.TYPE_23__ = type { i32 }

@EXEC_TASK_INVALID_FIRST = common dso_local global i32 0, align 4
@TASK_TYPE_INVALID_FIRST = common dso_local global i32 0, align 4
@MAP_OUTPUT_FETCH_TASK = common dso_local global i32 0, align 4
@SQL_TASK = common dso_local global i32 0, align 4
@TASK_STATUS_INVALID_FIRST = common dso_local global i32 0, align 4
@TASK_SUCCEEDED = common dso_local global i32 0, align 4
@TASK_CLIENT_SIDE_ASSIGN_FAILED = common dso_local global i32 0, align 4
@TASK_CLIENT_SIDE_STATUS_FAILED = common dso_local global i32 0, align 4
@TASK_PERMANENTLY_FAILED = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid execution status: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_21__*)* @ManageTaskExecution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ManageTaskExecution(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, %struct.TYPE_22__* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_22__*, align 8
  %26 = alloca %struct.TYPE_21__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %9, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* @EXEC_TASK_INVALID_FIRST, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %221 [
    i32 128, label %42
    i32 131, label %99
    i32 129, label %140
    i32 133, label %172
    i32 130, label %219
    i32 134, label %219
    i32 132, label %220
  ]

42:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %43 = load i32, i32* @TASK_TYPE_INVALID_FIRST, align 4
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %45 = call i32 @TrackerHealthy(%struct.TYPE_20__* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 130, i32* %13, align 4
  br label %226

49:                                               ; preds = %42
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @TaskExecutionsCompleted(i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 128, i32* %13, align 4
  br label %226

57:                                               ; preds = %49
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @MAP_OUTPUT_FETCH_TASK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %17, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @linitial(i32 %67)
  %69 = inttoptr i64 %68 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %69, %struct.TYPE_22__** %18, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %19, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %75 = call %struct.TYPE_23__* @MapFetchTaskQueryString(%struct.TYPE_22__* %73, %struct.TYPE_22__* %74)
  store %struct.TYPE_23__* %75, %struct.TYPE_23__** %17, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %64, %57
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* @SQL_TASK, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %93 = call i32 @TrackerQueueSqlTask(%struct.TYPE_20__* %91, %struct.TYPE_22__* %92)
  br label %98

94:                                               ; preds = %86
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = call i32 @TrackerQueueTask(%struct.TYPE_20__* %95, %struct.TYPE_22__* %96)
  br label %98

98:                                               ; preds = %94, %90
  store i32 131, i32* %13, align 4
  br label %226

99:                                               ; preds = %4
  %100 = load i32, i32* @TASK_STATUS_INVALID_FIRST, align 4
  store i32 %100, i32* %20, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %102 = call i32 @TrackerHealthy(%struct.TYPE_20__* %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  store i32 130, i32* %13, align 4
  br label %226

106:                                              ; preds = %99
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = call i32 @TrackerTaskStatus(%struct.TYPE_20__* %107, %struct.TYPE_22__* %108)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @TASK_SUCCEEDED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 132, i32* %13, align 4
  br label %139

114:                                              ; preds = %106
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* @TASK_CLIENT_SIDE_ASSIGN_FAILED, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @TASK_CLIENT_SIDE_STATUS_FAILED, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %114
  store i32 129, i32* %13, align 4
  br label %138

123:                                              ; preds = %118
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @TASK_PERMANENTLY_FAILED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @MAP_OUTPUT_FETCH_TASK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 133, i32* %13, align 4
  br label %135

134:                                              ; preds = %127
  store i32 130, i32* %13, align 4
  br label %135

135:                                              ; preds = %134, %133
  br label %137

136:                                              ; preds = %123
  store i32 131, i32* %13, align 4
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %122
  br label %139

139:                                              ; preds = %138, %113
  br label %226

140:                                              ; preds = %4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = call i32 @TrackerConnectionUp(%struct.TYPE_20__* %141)
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %23, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %152 = call i32 @TrackerHealthy(%struct.TYPE_20__* %151)
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %150
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %158 = call i32 @TrackerTaskStatus(%struct.TYPE_20__* %156, %struct.TYPE_22__* %157)
  store i32 %158, i32* %24, align 4
  %159 = load i32, i32* %24, align 4
  %160 = load i32, i32* @TASK_CLIENT_SIDE_ASSIGN_FAILED, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  store i32 128, i32* %13, align 4
  br label %169

163:                                              ; preds = %155
  %164 = load i32, i32* %24, align 4
  %165 = load i32, i32* @TASK_CLIENT_SIDE_STATUS_FAILED, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 131, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %163
  br label %169

169:                                              ; preds = %168, %162
  br label %171

170:                                              ; preds = %150
  store i32 130, i32* %13, align 4
  br label %171

171:                                              ; preds = %170, %169
  br label %226

172:                                              ; preds = %4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @linitial(i32 %175)
  %177 = inttoptr i64 %176 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %177, %struct.TYPE_22__** %25, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  store %struct.TYPE_21__* %180, %struct.TYPE_21__** %26, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %26, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %27, align 8
  store i32 0, i32* %28, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %185 = icmp ne %struct.TYPE_20__* %184, null
  %186 = zext i1 %185 to i32
  %187 = call i32 @Assert(i32 %186)
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @MAP_OUTPUT_FETCH_TASK, align 4
  %192 = icmp eq i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @Assert(i32 %193)
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %27, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %211

200:                                              ; preds = %172
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %202 = call i32 @TrackerConnectionUp(%struct.TYPE_20__* %201)
  store i32 %202, i32* %29, align 4
  %203 = load i32, i32* %29, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %205, %200
  br label %211

211:                                              ; preds = %210, %172
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %213 = call i32 @TrackerHealthy(%struct.TYPE_20__* %212)
  store i32 %213, i32* %28, align 4
  %214 = load i32, i32* %28, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 128, i32* %13, align 4
  br label %218

217:                                              ; preds = %211
  store i32 134, i32* %13, align 4
  br label %218

218:                                              ; preds = %217, %216
  br label %226

219:                                              ; preds = %4, %4
  store i32 128, i32* %13, align 4
  br label %226

220:                                              ; preds = %4
  store i32 132, i32* %13, align 4
  br label %226

221:                                              ; preds = %4
  %222 = load i32, i32* @FATAL, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %223)
  %225 = call i32 @ereport(i32 %222, i32 %224)
  br label %226

226:                                              ; preds = %221, %220, %219, %218, %171, %139, %105, %98, %56, %48
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %11, align 8
  %230 = load i32, i32* %13, align 4
  %231 = load i32*, i32** %9, align 8
  %232 = load i64, i64* %11, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  store i32 %230, i32* %233, align 4
  %234 = load i32, i32* %13, align 4
  ret i32 %234
}

declare dso_local i32 @TrackerHealthy(%struct.TYPE_20__*) #1

declare dso_local i32 @TaskExecutionsCompleted(i32) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local %struct.TYPE_23__* @MapFetchTaskQueryString(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrackerQueueSqlTask(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrackerQueueTask(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrackerTaskStatus(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrackerConnectionUp(%struct.TYPE_20__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
