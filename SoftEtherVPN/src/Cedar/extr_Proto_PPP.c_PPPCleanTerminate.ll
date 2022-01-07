; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPCleanTerminate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPCleanTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@PPP_TERMINATE_TIMEOUT = common dso_local global i64 0, align 8
@PPP_PROTOCOL_LCP = common dso_local global i64 0, align 8
@PPP_LCP_CODE_TERMINATE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"PPP: Terminate Request is Sent.\0A\00", align 1
@PPP_LCP_CODE_TERMINATE_ACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"PPP: Terminate ACK is Received.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PPPCleanTerminate(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = call i64 (...) @Tick64()
  %9 = load i64, i64* @PPP_TERMINATE_TIMEOUT, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %97

14:                                               ; preds = %1
  %15 = call %struct.TYPE_14__* @ZeroMalloc(i32 24)
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %3, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @PPP_LCP_CODE_TERMINATE_REQ, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = call %struct.TYPE_15__* @NewPPPLCP(i32 %21, i32 %24)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %28, align 8
  %29 = call i32 @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = call i32 @PPPSendPacket(%struct.TYPE_13__* %30, %struct.TYPE_14__* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %94

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35, %82
  %37 = call i64 (...) @Tick64()
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %93

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %79
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = call i32 @IsTubeConnected(%struct.TYPE_12__* %46)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %82

50:                                               ; preds = %43
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = call %struct.TYPE_14__* @PPPRecvPacket(%struct.TYPE_13__* %51, i32 1)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = icmp eq %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %82

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PPP_LCP_CODE_TERMINATE_ACK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = call i32 @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = call i32 @FreePPPPacket(%struct.TYPE_14__* %77)
  br label %94

79:                                               ; preds = %67, %61, %56
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = call i32 @FreePPPPacket(%struct.TYPE_14__* %80)
  br label %43

82:                                               ; preds = %55, %49
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = sub nsw i64 %83, %84
  store i64 %85, i64* %7, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @Wait(i32 %90, i64 %91)
  br label %36

93:                                               ; preds = %41
  br label %94

94:                                               ; preds = %93, %75, %34
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %96 = call i32 @FreePPPPacket(%struct.TYPE_14__* %95)
  br label %97

97:                                               ; preds = %94, %13
  ret void
}

declare dso_local i64 @Tick64(...) #1

declare dso_local %struct.TYPE_14__* @ZeroMalloc(i32) #1

declare dso_local %struct.TYPE_15__* @NewPPPLCP(i32, i32) #1

declare dso_local i32 @Debug(i8*) #1

declare dso_local i32 @PPPSendPacket(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @IsTubeConnected(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_14__* @PPPRecvPacket(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @FreePPPPacket(%struct.TYPE_14__*) #1

declare dso_local i32 @Wait(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
