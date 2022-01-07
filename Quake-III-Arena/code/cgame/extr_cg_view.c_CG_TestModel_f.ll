; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_TestModel_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_TestModel_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64*, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't register model\0A\00", align 1
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_TestModel_f() #0 {
  %1 = alloca i64*, align 8
  %2 = call i32 @memset(%struct.TYPE_5__* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), i32 0, i32 32)
  %3 = call i32 (...) @trap_Argc()
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %47

6:                                                ; preds = %0
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 8
  %8 = call i32 @CG_Argv(i32 1)
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = call i32 @Q_strncpyz(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 8
  %12 = call i32 @trap_R_RegisterModel(i32 %11)
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 3), align 4
  %13 = call i32 (...) @trap_Argc()
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = call i32 @CG_Argv(i32 2)
  %17 = call i32 @atof(i32 %16)
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 5), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 4), align 8
  br label %18

18:                                               ; preds = %15, %6
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 3), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 @CG_Printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %47

23:                                               ; preds = %18
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3, i32 1), align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 2), align 8
  %29 = call i32 @VectorMA(i32 %24, i32 100, i32 %27, i32 %28)
  %30 = load i64*, i64** %1, align 8
  %31 = load i64, i64* @PITCH, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load i64*, i64** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2), align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 180, %35
  %37 = load i64*, i64** %1, align 8
  %38 = load i64, i64* @YAW, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load i64*, i64** %1, align 8
  %41 = load i64, i64* @ROLL, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  %43 = load i64*, i64** %1, align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1, i32 1), align 4
  %45 = call i32 @AnglesToAxis(i64* %43, i32 %44)
  %46 = load i32, i32* @qfalse, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  br label %47

47:                                               ; preds = %23, %21, %5
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @trap_Argc(...) #1

declare dso_local i32 @Q_strncpyz(i32, i32, i32) #1

declare dso_local i32 @CG_Argv(i32) #1

declare dso_local i32 @trap_R_RegisterModel(i32) #1

declare dso_local i32 @atof(i32) #1

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @AnglesToAxis(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
