; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_ListenerUDPMainLoop.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Listener.c_ListenerUDPMainLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ListenerUDPMainLoop Starts.\0A\00", align 1
@LISTENER_STATUS_TRYING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"NewUDP()\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Failed to NewUDP.\0A\00", align 1
@LISTEN_RETRY_TIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"UDP Halt.\0A\00", align 1
@LISTENER_STATUS_LISTENING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Start Listening at UDP Port %u.\0A\00", align 1
@UDP_PACKET_SIZE = common dso_local global i32 0, align 4
@SELECT_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"UDP Listen Stopped.\0A\00", align 1
@SOCK_LATER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ListenerUDPMainLoop(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = icmp eq %struct.TYPE_12__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %134

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @LISTENER_STATUS_TRYING, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  br label %16

16:                                               ; preds = %11, %133
  br label %17

17:                                               ; preds = %16, %55
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %134

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call %struct.TYPE_14__* @NewUDPEx2(i32 %27, i32 0, i32* %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %56

42:                                               ; preds = %23
  %43 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LISTEN_RETRY_TIME, align 4
  %48 = call i32 @Wait(i32 %46, i32 %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %134

55:                                               ; preds = %42
  br label %17

56:                                               ; preds = %41
  %57 = load i32, i32* @LISTENER_STATUS_LISTENING, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %103

71:                                               ; preds = %56
  %72 = load i32, i32* @UDP_PACKET_SIZE, align 4
  %73 = call i32* @Malloc(i32 %72)
  store i32* %73, i32** %3, align 8
  br label %74

74:                                               ; preds = %71, %132
  %75 = call i32 @InitSockSet(i32* %7)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = call i32 @AddSockSet(i32* %7, %struct.TYPE_14__* %78)
  %80 = load i32, i32* @SELECT_TIME, align 4
  %81 = call i32 @Select(i32* %7, i32 %80, i32* null, i32* null)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* @UDP_PACKET_SIZE, align 4
  %87 = call i64 @RecvFrom(%struct.TYPE_14__* %84, i32* %4, i64* %5, i32* %85, i32 %86)
  store i64 %87, i64* %6, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %74
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %90, %74
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97, %90
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = call i32 @Disconnect(%struct.TYPE_14__* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = call i32 @ReleaseSock(%struct.TYPE_14__* %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %113, align 8
  %114 = call i32 (i8*, ...) @Debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @Free(i32* %115)
  br label %133

117:                                              ; preds = %97
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* @SOCK_LATER, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load i32*, i32** %3, align 8
  %130 = load i64, i64* %6, align 8
  %131 = call i32 @UDPReceivedPacket(%struct.TYPE_13__* %124, %struct.TYPE_14__* %127, i32* %4, i64 %128, i32* %129, i64 %130)
  br label %132

132:                                              ; preds = %121, %117
  br label %74

133:                                              ; preds = %103
  br label %16

134:                                              ; preds = %53, %22, %10
  ret void
}

declare dso_local i32 @Debug(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @NewUDPEx2(i32, i32, i32*) #1

declare dso_local i32 @Wait(i32, i32) #1

declare dso_local i32* @Malloc(i32) #1

declare dso_local i32 @InitSockSet(i32*) #1

declare dso_local i32 @AddSockSet(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @Select(i32*, i32, i32*, i32*) #1

declare dso_local i64 @RecvFrom(%struct.TYPE_14__*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @Disconnect(%struct.TYPE_14__*) #1

declare dso_local i32 @ReleaseSock(%struct.TYPE_14__*) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @UDPReceivedPacket(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
