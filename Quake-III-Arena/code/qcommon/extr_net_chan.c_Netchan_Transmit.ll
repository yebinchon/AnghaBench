; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_Netchan_Transmit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_net_chan.c_Netchan_Transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32, i64, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@MAX_PACKETLEN = common dso_local global i32 0, align 4
@MAX_MSGLEN = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Netchan_Transmit: length = %i\00", align 1
@FRAGMENT_SIZE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@NS_CLIENT = common dso_local global i64 0, align 8
@qport = common dso_local global %struct.TYPE_14__* null, align 8
@showpackets = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s send %4i : s=%i ack=%i\0A\00", align 1
@netsrcString = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Netchan_Transmit(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @MAX_PACKETLEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MAX_MSGLEN, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @ERR_DROP, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @Com_Error(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @FRAGMENT_SIZE, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i32, i32* @qtrue, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @Com_Memcpy(i32 %37, i32* %38, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = call i32 @Netchan_TransmitNextFragment(%struct.TYPE_11__* %41)
  store i32 1, i32* %10, align 4
  br label %102

43:                                               ; preds = %22
  %44 = mul nuw i64 4, %12
  %45 = trunc i64 %44 to i32
  %46 = call i32 @MSG_InitOOB(%struct.TYPE_12__* %7, i32* %14, i32 %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @MSG_WriteLong(%struct.TYPE_12__* %7, i64 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NS_CLIENT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @qport, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @MSG_WriteShort(%struct.TYPE_12__* %7, i32 %63)
  br label %65

65:                                               ; preds = %60, %43
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @MSG_WriteData(%struct.TYPE_12__* %7, i32* %66, i32 %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @NET_SendPacket(i64 %71, i32 %73, i32 %75, i32 %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @showpackets, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %65
  %85 = load i32*, i32** @netsrcString, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %92, i64 %96, i32 %99)
  br label %101

101:                                              ; preds = %84, %65
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %28
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %10, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
    i32 1, label %105
  ]

105:                                              ; preds = %102, %102
  ret void

106:                                              ; preds = %102
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #2

declare dso_local i32 @Com_Memcpy(i32, i32*, i32) #2

declare dso_local i32 @Netchan_TransmitNextFragment(%struct.TYPE_11__*) #2

declare dso_local i32 @MSG_InitOOB(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @MSG_WriteLong(%struct.TYPE_12__*, i64) #2

declare dso_local i32 @MSG_WriteShort(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @MSG_WriteData(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @NET_SendPacket(i64, i32, i32, i32) #2

declare dso_local i32 @Com_Printf(i8*, i32, i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
