; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_TransactionStateMachine.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/executor/extr_adaptive_executor.c_TransactionStateMachine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__*, %struct.TYPE_26__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }

@WL_SOCKET_READABLE = common dso_local global i32 0, align 4
@MULTI_CONNECTION_LOST = common dso_local global i32 0, align 4
@WL_SOCKET_WRITEABLE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @TransactionStateMachine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TransactionStateMachine(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  store %struct.TYPE_22__* %21, %struct.TYPE_22__** %3, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %23, align 8
  store %struct.TYPE_27__* %24, %struct.TYPE_27__** %4, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  store %struct.TYPE_26__* %27, %struct.TYPE_26__** %5, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  store %struct.TYPE_25__* %29, %struct.TYPE_25__** %6, align 8
  br label %30

30:                                               ; preds = %204, %1
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %35 = call i32 @CheckConnectionReady(%struct.TYPE_21__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %210

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %202 [
    i32 131, label %40
    i32 130, label %86
    i32 132, label %86
    i32 128, label %147
    i32 129, label %175
  ]

40:                                               ; preds = %38
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %47 = call i32 @Activate2PCIfModifyingTransactionExpandsToNewNode(%struct.TYPE_21__* %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %49 = call i32 @StartRemoteTransactionBegin(%struct.TYPE_26__* %48)
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  store i32 132, i32* %51, align 4
  br label %80

52:                                               ; preds = %40
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  store i32 0, i32* %9, align 4
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = call %struct.TYPE_23__* @PopPlacementExecution(%struct.TYPE_21__* %53)
  store %struct.TYPE_23__* %54, %struct.TYPE_23__** %8, align 8
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %56 = icmp eq %struct.TYPE_23__* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %59 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %60 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_21__* %58, i32 %59)
  br label %203

61:                                               ; preds = %52
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %64 = call i32 @StartPlacementExecutionOnSession(%struct.TYPE_23__* %62, %struct.TYPE_21__* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MULTI_CONNECTION_LOST, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @Assert(i32 %75)
  br label %210

77:                                               ; preds = %61
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  store i32 129, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %45
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %82 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %83 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_21__* %81, i32 %84)
  br label %203

86:                                               ; preds = %38, %38
  store i32* null, i32** %10, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @PQgetResult(i32 %89)
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @IsResponseOK(i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* @ERROR, align 4
  %101 = call i32 @ReportResultError(%struct.TYPE_26__* %98, i32* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32*, i32** %10, align 8
  %104 = call i32 @PQclear(i32* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %106 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %107 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_21__* %105, i32 %108)
  br label %203

110:                                              ; preds = %86
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = icmp ne %struct.TYPE_23__* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %117, align 8
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %11, align 8
  store i32 1, i32* %12, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %120 = call i32 @MarkRemoteTransactionCritical(%struct.TYPE_26__* %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @PlacementExecutionDone(%struct.TYPE_23__* %123, i32 %124)
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %115, %110
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %132 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %133 = load i32, i32* @WL_SOCKET_WRITEABLE, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_21__* %131, i32 %134)
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  store i32 128, i32* %142, align 4
  br label %146

143:                                              ; preds = %130
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  store i32 131, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140
  br label %203

147:                                              ; preds = %38
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %13, align 8
  store i32 0, i32* %14, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %149 = call %struct.TYPE_23__* @PopPlacementExecution(%struct.TYPE_21__* %148)
  store %struct.TYPE_23__* %149, %struct.TYPE_23__** %13, align 8
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %151 = icmp eq %struct.TYPE_23__* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %154 = load i32, i32* @WL_SOCKET_READABLE, align 4
  %155 = call i32 @UpdateConnectionWaitFlags(%struct.TYPE_21__* %153, i32 %154)
  br label %203

156:                                              ; preds = %147
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %159 = call i32 @StartPlacementExecutionOnSession(%struct.TYPE_23__* %157, %struct.TYPE_21__* %158)
  store i32 %159, i32* %14, align 4
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MULTI_CONNECTION_LOST, align 4
  %169 = icmp eq i32 %167, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  br label %210

172:                                              ; preds = %156
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  store i32 129, i32* %174, align 4
  br label %203

175:                                              ; preds = %38
  store i32 0, i32* %15, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  store %struct.TYPE_23__* %178, %struct.TYPE_23__** %16, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %180, align 8
  store %struct.TYPE_24__* %181, %struct.TYPE_24__** %17, align 8
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %18, align 4
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %175
  store i32 0, i32* %18, align 4
  br label %190

190:                                              ; preds = %189, %175
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %192 = load i32, i32* %18, align 4
  %193 = call i32 @ReceiveResults(%struct.TYPE_21__* %191, i32 %192)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %190
  br label %203

197:                                              ; preds = %190
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 1
  store i32 1, i32* %199, align 4
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  store i32 132, i32* %201, align 4
  br label %203

202:                                              ; preds = %38
  br label %203

203:                                              ; preds = %202, %197, %196, %172, %152, %146, %102, %80, %57
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %30, label %210

210:                                              ; preds = %67, %162, %204, %37
  ret void
}

declare dso_local i32 @CheckConnectionReady(%struct.TYPE_21__*) #1

declare dso_local i32 @Activate2PCIfModifyingTransactionExpandsToNewNode(%struct.TYPE_21__*) #1

declare dso_local i32 @StartRemoteTransactionBegin(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_23__* @PopPlacementExecution(%struct.TYPE_21__*) #1

declare dso_local i32 @UpdateConnectionWaitFlags(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @StartPlacementExecutionOnSession(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @PQgetResult(i32) #1

declare dso_local i32 @IsResponseOK(i32*) #1

declare dso_local i32 @ReportResultError(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @MarkRemoteTransactionCritical(%struct.TYPE_26__*) #1

declare dso_local i32 @PlacementExecutionDone(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ReceiveResults(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
