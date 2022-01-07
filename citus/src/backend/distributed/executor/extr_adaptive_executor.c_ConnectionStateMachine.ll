; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ConnectionStateMachine.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_ConnectionStateMachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, i32, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32 }

@CONNECTION_OK = common dso_local global i32 0, align 4
@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"established connection to %s:%d for session %ld\00", align 1
@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@CONNECTION_BAD = common dso_local global i32 0, align 4
@PGRES_POLLING_FAILED = common dso_local global i32 0, align 4
@PGRES_POLLING_READING = common dso_local global i32 0, align 4
@PGRES_POLLING_WRITING = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@REMOTE_TRANS_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ConnectionStateMachine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConnectionStateMachine(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %3, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %5, align 8
  br label %19

19:                                               ; preds = %208, %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %206 [
    i32 129, label %24
    i32 131, label %27
    i32 132, label %129
    i32 128, label %132
    i32 130, label %149
  ]

24:                                               ; preds = %19
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32 131, i32* %26, align 4
  br label %207

27:                                               ; preds = %19
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PQstatus(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @CONNECTION_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %27
  %36 = load i32, i32* @DEBUG4, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  %47 = call i32 @ereport(i32 %36, i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %57 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %58 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_16__* %56, i32 %59)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  store i32 132, i32* %62, align 4
  br label %207

63:                                               ; preds = %27
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @CONNECTION_BAD, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  store i32 130, i32* %69, align 4
  br label %207

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PQconnectPoll(i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @PGRES_POLLING_FAILED, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  store i32 130, i32* %81, align 4
  br label %128

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @PGRES_POLLING_READING, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %88 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %89 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_16__* %87, i32 %88)
  br label %127

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @PGRES_POLLING_WRITING, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %96 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %97 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_16__* %95, i32 %96)
  br label %126

98:                                               ; preds = %90
  %99 = load i32, i32* @DEBUG4, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %108)
  %110 = call i32 @ereport(i32 %99, i32 %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %121 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_16__* %119, i32 %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 0
  store i32 132, i32* %125, align 4
  br label %126

126:                                              ; preds = %98, %94
  br label %127

127:                                              ; preds = %126, %86
  br label %128

128:                                              ; preds = %127, %79
  br label %207

129:                                              ; preds = %19
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %131 = call i32 @TransactionStateMachine(%struct.TYPE_16__* %130)
  br label %207

132:                                              ; preds = %19
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %134, align 4
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %141, %132
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  store i32 130, i32* %148, align 4
  br label %207

149:                                              ; preds = %19
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @list_length(i32 %152)
  store i32 %153, i32* %9, align 4
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = call i32 @MarkRemoteTransactionFailed(%struct.TYPE_18__* %158, i32 0)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %161 = call i32 @WorkerSessionFailed(%struct.TYPE_16__* %160)
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %9, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %149
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %169 = call i32 @WorkerPoolFailed(%struct.TYPE_17__* %168)
  br label %170

170:                                              ; preds = %167, %149
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175, %170
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = load i32, i32* @ERROR, align 4
  %183 = call i32 @ReportConnectionError(%struct.TYPE_18__* %181, i32 %182)
  br label %188

184:                                              ; preds = %175
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %186 = load i32, i32* @WARNING, align 4
  %187 = call i32 @ReportConnectionError(%struct.TYPE_18__* %185, i32 %186)
  br label %188

188:                                              ; preds = %184, %180
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = call i32 @UnclaimConnection(%struct.TYPE_18__* %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %192 = call i32 @ShutdownConnection(%struct.TYPE_18__* %191)
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  store i32 1, i32* %194, align 4
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %188
  %201 = load i32, i32* @REMOTE_TRANS_INVALID, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 4
  br label %205

205:                                              ; preds = %200, %188
  br label %207

206:                                              ; preds = %19
  br label %207

207:                                              ; preds = %206, %205, %146, %129, %128, %67, %35, %24
  br label %208

208:                                              ; preds = %207
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %19, label %214

214:                                              ; preds = %208
  ret void
}

declare dso_local i32 @PQstatus(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @UpdateConnectionWaitFlags(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @PQconnectPoll(i32) #1

declare dso_local i32 @TransactionStateMachine(%struct.TYPE_16__*) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @MarkRemoteTransactionFailed(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @WorkerSessionFailed(%struct.TYPE_16__*) #1

declare dso_local i32 @WorkerPoolFailed(%struct.TYPE_17__*) #1

declare dso_local i32 @ReportConnectionError(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @UnclaimConnection(%struct.TYPE_18__*) #1

declare dso_local i32 @ShutdownConnection(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
