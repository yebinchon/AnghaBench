; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_SetCGameTime.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_SetCGameTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i64, i64, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_12__, i64, i8* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@cls = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@clc = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@cl = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@qfalse = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CL_SetCGameTime: !cl.snap.valid\00", align 1
@sv_paused = common dso_local global %struct.TYPE_13__* null, align 8
@cl_paused = common dso_local global %struct.TYPE_19__* null, align 8
@com_sv_running = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"cl.snap.serverTime < cl.oldFrameServerTime\00", align 1
@cl_freezeDemo = common dso_local global %struct.TYPE_20__* null, align 8
@cl_timeNudge = common dso_local global %struct.TYPE_18__* null, align 8
@cl_timedemo = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_SetCGameTime() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cls, i32 0, i32 0), align 8
  %3 = load i64, i64* @CA_ACTIVE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %32

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cls, i32 0, i32 0), align 8
  %7 = load i64, i64* @CA_PRIMED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  br label %143

10:                                               ; preds = %5
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 3), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  %14 = load i8*, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 4), align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** @qtrue, align 8
  store i8* %17, i8** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 4), align 8
  br label %143

18:                                               ; preds = %13
  %19 = call i32 (...) @CL_ReadDemoMessage()
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 5), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* @qfalse, align 8
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 5), align 8
  %25 = call i32 (...) @CL_FirstSnapshot()
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cls, i32 0, i32 0), align 8
  %28 = load i64, i64* @CA_ACTIVE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %143

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 4, i32 1), align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @ERR_DROP, align 4
  %37 = call i32 @Com_Error(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** @sv_paused, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** @cl_paused, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_sv_running, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %143

54:                                               ; preds = %48, %43, %38
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 4, i32 0), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 0), align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @ERR_DROP, align 4
  %60 = call i32 @Com_Error(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 4, i32 0), align 8
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 0), align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 3), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** @cl_freezeDemo, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %105

71:                                               ; preds = %65, %61
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** @cl_timeNudge, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = icmp slt i32 %75, -30
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -30, i32* %1, align 4
  br label %83

78:                                               ; preds = %71
  %79 = load i32, i32* %1, align 4
  %80 = icmp sgt i32 %79, 30
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 30, i32* %1, align 4
  br label %82

82:                                               ; preds = %81, %78
  br label %83

83:                                               ; preds = %82, %77
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cls, i32 0, i32 1), align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 2), align 8
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %1, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 1), align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 1), align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 3), align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 3), align 4
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 1), align 4
  br label %94

94:                                               ; preds = %92, %83
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 1), align 4
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 3), align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cls, i32 0, i32 1), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 2), align 8
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 4, i32 0), align 8
  %100 = sub nsw i32 %99, 5
  %101 = icmp sge i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i8*, i8** @qtrue, align 8
  store i8* %103, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 6), align 8
  br label %104

104:                                              ; preds = %102, %94
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 5), align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 (...) @CL_AdjustTimeDelta()
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 3), align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %143

114:                                              ; preds = %110
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cl_timedemo, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %114
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 2), align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = call i64 (...) @Sys_Milliseconds()
  store i64 %123, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 2), align 8
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 0), align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 0), align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 1), align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @clc, i32 0, i32 0), align 8
  %129 = mul nsw i32 %128, 50
  %130 = add nsw i32 %127, %129
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 1), align 4
  br label %131

131:                                              ; preds = %124, %114
  br label %132

132:                                              ; preds = %142, %131
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 1), align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cl, i32 0, i32 4, i32 0), align 8
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = call i32 (...) @CL_ReadDemoMessage()
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cls, i32 0, i32 0), align 8
  %139 = load i64, i64* @CA_ACTIVE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %143

142:                                              ; preds = %136
  br label %132

143:                                              ; preds = %9, %16, %30, %53, %113, %141, %132
  ret void
}

declare dso_local i32 @CL_ReadDemoMessage(...) #1

declare dso_local i32 @CL_FirstSnapshot(...) #1

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @CL_AdjustTimeDelta(...) #1

declare dso_local i64 @Sys_Milliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
