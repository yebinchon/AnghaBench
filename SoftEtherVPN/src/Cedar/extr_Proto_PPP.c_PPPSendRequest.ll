; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPSendRequest.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_PPP.c_PPPSendRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i64 }

@PPP_PROTOCOL_LCP = common dso_local global i64 0, align 8
@PPP_PROTOCOL_IPCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PPPSendRequest(%struct.TYPE_14__* %0, i64 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp eq %struct.TYPE_14__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %15 = icmp eq %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %75

17:                                               ; preds = %13
  %18 = call %struct.TYPE_15__* @ZeroMalloc(i32 24)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = sext i32 %29 to i64
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i64 %31, i64* %35, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = call i32 @PPPSendPacket(%struct.TYPE_14__* %36, %struct.TYPE_15__* %37)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %17
  br label %72

41:                                               ; preds = %17
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = call %struct.TYPE_15__* @PPPRecvResponsePacket(%struct.TYPE_14__* %42, %struct.TYPE_15__* %43, i32 0, i32* null, i32 0, i32 0)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %9, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @PPP_PROTOCOL_LCP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @PPP_PROTOCOL_IPCP, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51, %47
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PPP_LCP_CODE_IS_NEGATIVE(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %68 = call i32 @FreePPPPacket(%struct.TYPE_15__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = call i32 @Free(%struct.TYPE_15__* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %40
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = call i32 @Free(%struct.TYPE_15__* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %66, %16
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_15__* @ZeroMalloc(i32) #1

declare dso_local i32 @PPPSendPacket(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @PPPRecvResponsePacket(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*, i32, i32) #1

declare dso_local i32 @PPP_LCP_CODE_IS_NEGATIVE(i32) #1

declare dso_local i32 @FreePPPPacket(%struct.TYPE_15__*) #1

declare dso_local i32 @Free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
