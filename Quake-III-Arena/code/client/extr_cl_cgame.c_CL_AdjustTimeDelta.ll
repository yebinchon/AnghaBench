; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_AdjustTimeDelta.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cgame.c_CL_AdjustTimeDelta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i8*, %struct.TYPE_8__, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@qfalse = common dso_local global i8* null, align 8
@cl = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@clc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@com_sv_running = common dso_local global %struct.TYPE_10__* null, align 8
@RESET_TIME = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@cl_showTimeDelta = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"<RESET> \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<FAST> \00", align 1
@com_timescale = common dso_local global %struct.TYPE_9__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%i \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_AdjustTimeDelta() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i8*, i8** @qfalse, align 8
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 5), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @clc, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %84

8:                                                ; preds = %0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** @com_sv_running, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 100, i32* %1, align 4
  br label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @RESET_TIME, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 4, i32 0), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cls, i32 0, i32 0), align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %22 = sub nsw i32 %20, %21
  %23 = call i32 @abs(i32 %22) #3
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @RESET_TIME, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %16
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 4, i32 0), align 8
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 4, i32 0), align 8
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 2), align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_showTimeDelta, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %27
  br label %76

38:                                               ; preds = %16
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 100
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_showTimeDelta, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %50 = load i32, i32* %2, align 4
  %51 = add nsw i32 %49, %50
  %52 = ashr i32 %51, 1
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  br label %75

53:                                               ; preds = %38
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_timescale, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** @com_timescale, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %74

63:                                               ; preds = %58, %53
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 3), align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** @qfalse, align 8
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 3), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %37
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** @cl_showTimeDelta, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cl, i32 0, i32 0), align 8
  %83 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %7, %81, %76
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @Com_Printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
