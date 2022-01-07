; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_PacketEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_PacketEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i64, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }

@cls = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@clc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CA_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s: Runt packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s:sequenced packet without connection\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_PacketEvent(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 1), align 8
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 2), align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 4
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @CL_ConnectionlessPacket(i32 %19, %struct.TYPE_10__* %20)
  br label %72

22:                                               ; preds = %11, %2
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 8
  %24 = load i64, i64* @CA_CONNECTED, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %72

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @NET_AdrToString(i32 %33)
  %35 = call i32 @Com_Printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %72

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 4, i32 0), align 8
  %39 = call i32 @NET_CompareAdr(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @NET_AdrToString(i32 %42)
  %44 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %72

45:                                               ; preds = %36
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = call i32 @CL_Netchan_Process(%struct.TYPE_13__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 4), %struct.TYPE_10__* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %72

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LittleLong(i32 %58)
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 3), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 1), align 8
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 2), align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = call i32 @CL_ParseServerMessage(%struct.TYPE_10__* %61)
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 1), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @CL_WriteDemoMessage(%struct.TYPE_10__* %69, i32 %70)
  br label %72

72:                                               ; preds = %18, %26, %32, %41, %49, %68, %65, %50
  ret void
}

declare dso_local i32 @CL_ConnectionlessPacket(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_AdrToString(i32) #1

declare dso_local i32 @NET_CompareAdr(i32, i32) #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @CL_Netchan_Process(%struct.TYPE_13__*, %struct.TYPE_10__*) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @CL_ParseServerMessage(%struct.TYPE_10__*) #1

declare dso_local i32 @CL_WriteDemoMessage(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
