; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_GetCvars.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_net.c_NET_GetCvars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@qfalse = common dso_local global i32 0, align 4
@net_noudp = common dso_local global %struct.TYPE_13__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"net_noudp\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@CVAR_LATCH = common dso_local global i32 0, align 4
@CVAR_ARCHIVE = common dso_local global i32 0, align 4
@net_noipx = common dso_local global %struct.TYPE_14__* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"net_noipx\00", align 1
@net_socksEnabled = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"net_socksEnabled\00", align 1
@net_socksServer = common dso_local global %struct.TYPE_9__* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"net_socksServer\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@net_socksPort = common dso_local global %struct.TYPE_10__* null, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"net_socksPort\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1080\00", align 1
@net_socksUsername = common dso_local global %struct.TYPE_8__* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"net_socksUsername\00", align 1
@net_socksPassword = common dso_local global %struct.TYPE_11__* null, align 8
@.str.9 = private unnamed_addr constant [18 x i8] c"net_socksPassword\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @NET_GetCvars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NET_GetCvars() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @qfalse, align 4
  store i32 %2, i32* %1, align 4
  %3 = load %struct.TYPE_13__*, %struct.TYPE_13__** @net_noudp, align 8
  %4 = icmp ne %struct.TYPE_13__* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** @net_noudp, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, i32* @qtrue, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %10, %5, %0
  %13 = load i32, i32* @CVAR_LATCH, align 4
  %14 = load i32, i32* @CVAR_ARCHIVE, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** @net_noudp, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** @net_noipx, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** @net_noipx, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %20, %12
  %28 = load i32, i32* @CVAR_LATCH, align 4
  %29 = load i32, i32* @CVAR_ARCHIVE, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** @net_noipx, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @net_socksEnabled, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @net_socksEnabled, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @qtrue, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40, %35, %27
  %43 = load i32, i32* @CVAR_LATCH, align 4
  %44 = load i32, i32* @CVAR_ARCHIVE, align 4
  %45 = or i32 %43, %44
  %46 = call i8* @Cvar_Get(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** @net_socksEnabled, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @net_socksServer, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** @net_socksServer, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @qtrue, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %55, %50, %42
  %58 = load i32, i32* @CVAR_LATCH, align 4
  %59 = load i32, i32* @CVAR_ARCHIVE, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @Cvar_Get(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** @net_socksServer, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPort, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPort, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @qtrue, align 4
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %70, %65, %57
  %73 = load i32, i32* @CVAR_LATCH, align 4
  %74 = load i32, i32* @CVAR_ARCHIVE, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @Cvar_Get(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  %77 = bitcast i8* %76 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** @net_socksPort, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_socksUsername, align 8
  %79 = icmp ne %struct.TYPE_8__* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_socksUsername, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @qtrue, align 4
  store i32 %86, i32* %1, align 4
  br label %87

87:                                               ; preds = %85, %80, %72
  %88 = load i32, i32* @CVAR_LATCH, align 4
  %89 = load i32, i32* @CVAR_ARCHIVE, align 4
  %90 = or i32 %88, %89
  %91 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = bitcast i8* %91 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** @net_socksUsername, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** @net_socksPassword, align 8
  %94 = icmp ne %struct.TYPE_11__* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** @net_socksPassword, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @qtrue, align 4
  store i32 %101, i32* %1, align 4
  br label %102

102:                                              ; preds = %100, %95, %87
  %103 = load i32, i32* @CVAR_LATCH, align 4
  %104 = load i32, i32* @CVAR_ARCHIVE, align 4
  %105 = or i32 %103, %104
  %106 = call i8* @Cvar_Get(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = bitcast i8* %106 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** @net_socksPassword, align 8
  %108 = load i32, i32* %1, align 4
  ret i32 %108
}

declare dso_local i8* @Cvar_Get(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
