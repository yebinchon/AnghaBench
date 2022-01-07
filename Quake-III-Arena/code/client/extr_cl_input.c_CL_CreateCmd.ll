; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_CreateCmd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_CreateCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@cl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PITCH = common dso_local global i64 0, align 8
@cl_debugMove = common dso_local global %struct.TYPE_3__* null, align 8
@YAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CL_CreateCmd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @VectorCopy(i32* %3, i32* %4)
  %6 = call i32 (...) @CL_AdjustAngles()
  %7 = call i32 @Com_Memset(i32* %1, i32 0, i32 4)
  %8 = call i32 @CL_CmdButtons(i32* %1)
  %9 = call i32 @CL_KeyMove(i32* %1)
  %10 = call i32 @CL_MouseMove(i32* %1)
  %11 = call i32 @CL_JoystickMove(i32* %1)
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %13 = load i64, i64* @PITCH, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i64, i64* @PITCH, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %15, %19
  %21 = icmp sgt i32 %20, 90
  br i1 %21, label %22, label %31

22:                                               ; preds = %0
  %23 = load i32*, i32** %2, align 8
  %24 = load i64, i64* @PITCH, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 90
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %29 = load i64, i64* @PITCH, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  br label %52

31:                                               ; preds = %0
  %32 = load i32*, i32** %2, align 8
  %33 = load i64, i64* @PITCH, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %37 = load i64, i64* @PITCH, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %35, %39
  %41 = icmp sgt i32 %40, 90
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load i32*, i32** %2, align 8
  %44 = load i64, i64* @PITCH, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 90
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %49 = load i64, i64* @PITCH, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %31
  br label %52

52:                                               ; preds = %51, %22
  %53 = call i32 @CL_FinishMove(i32* %1)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cl_debugMove, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cl_debugMove, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %65 = load i64, i64* @YAW, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = load i64, i64* @YAW, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %67, %71
  %73 = call i32 @abs(i32 %72) #3
  %74 = call i32 @SCR_DebugGraph(i32 %73, i32 0)
  br label %75

75:                                               ; preds = %63, %58
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cl_debugMove, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %82 = load i64, i64* @PITCH, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %2, align 8
  %86 = load i64, i64* @PITCH, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %84, %88
  %90 = call i32 @abs(i32 %89) #3
  %91 = call i32 @SCR_DebugGraph(i32 %90, i32 0)
  br label %92

92:                                               ; preds = %80, %75
  br label %93

93:                                               ; preds = %92, %52
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @CL_AdjustAngles(...) #1

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @CL_CmdButtons(i32*) #1

declare dso_local i32 @CL_KeyMove(i32*) #1

declare dso_local i32 @CL_MouseMove(i32*) #1

declare dso_local i32 @CL_JoystickMove(i32*) #1

declare dso_local i32 @CL_FinishMove(i32*) #1

declare dso_local i32 @SCR_DebugGraph(i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
