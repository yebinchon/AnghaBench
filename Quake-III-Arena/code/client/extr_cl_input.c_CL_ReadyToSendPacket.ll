; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_ReadyToSendPacket.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_ReadyToSendPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__, i64*, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@clc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@cls = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@CA_CINEMATIC = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@CA_ACTIVE = common dso_local global i64 0, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@NA_LOOPBACK = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@cl_maxpackets = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"cl_maxpackets\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"125\00", align 1
@PACKET_MASK = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_ReadyToSendPacket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 3), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %8 = load i64, i64* @CA_CINEMATIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %1, align 4
  br label %92

12:                                               ; preds = %6
  %13 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 2), align 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 1), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 0), align 8
  %19 = sub nsw i32 %17, %18
  %20 = icmp slt i32 %19, 50
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %1, align 4
  br label %92

23:                                               ; preds = %16, %12
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %25 = load i64, i64* @CA_ACTIVE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 0), align 8
  %29 = load i64, i64* @CA_PRIMED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 2), align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 1), align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 0), align 8
  %38 = sub nsw i32 %36, %37
  %39 = icmp slt i32 %38, 1000
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @qfalse, align 4
  store i32 %41, i32* %1, align 4
  br label %92

42:                                               ; preds = %35, %31, %27, %23
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 1, i32 1, i32 0), align 8
  %44 = load i64, i64* @NA_LOOPBACK, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @qtrue, align 4
  store i32 %47, i32* %1, align 4
  br label %92

48:                                               ; preds = %42
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 1, i32 1, i32 0), align 8
  %50 = call i64 @Sys_IsLANAddress(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @qtrue, align 4
  store i32 %53, i32* %1, align 4
  br label %92

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_maxpackets, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 15
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %69

61:                                               ; preds = %54
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_maxpackets, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 125
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @clc, i32 0, i32 1, i32 0), align 8
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @PACKET_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cls, i32 0, i32 1), align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cl, i32 0, i32 0), align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %74, %80
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cl_maxpackets, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 1000, %85
  %87 = icmp slt i32 %82, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %69
  %89 = load i32, i32* @qfalse, align 4
  store i32 %89, i32* %1, align 4
  br label %92

90:                                               ; preds = %69
  %91 = load i32, i32* @qtrue, align 4
  store i32 %91, i32* %1, align 4
  br label %92

92:                                               ; preds = %90, %88, %52, %46, %40, %21, %10
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i64 @Sys_IsLANAddress(i64) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
