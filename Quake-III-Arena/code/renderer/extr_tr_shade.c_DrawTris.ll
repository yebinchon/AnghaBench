; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_DrawTris.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade.c_DrawTris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@tr = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GLS_POLYMODE_LINE = common dso_local global i32 0, align 4
@GLS_DEPTHMASK_TRUE = common dso_local global i32 0, align 4
@GL_COLOR_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_COORD_ARRAY = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"glLockArraysEXT\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"glUnlockArraysEXT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @DrawTris to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawTris(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tr, i32 0, i32 0), align 4
  %4 = call i32 @GL_Bind(i32 %3)
  %5 = call i32 @qglColor3f(i32 1, i32 1, i32 1)
  %6 = load i32, i32* @GLS_POLYMODE_LINE, align 4
  %7 = load i32, i32* @GLS_DEPTHMASK_TRUE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @GL_State(i32 %8)
  %10 = call i32 @qglDepthRange(i32 0, i32 0)
  %11 = load i32, i32* @GL_COLOR_ARRAY, align 4
  %12 = call i32 @qglDisableClientState(i32 %11)
  %13 = load i32, i32* @GL_TEXTURE_COORD_ARRAY, align 4
  %14 = call i32 @qglDisableClientState(i32 %13)
  %15 = load i32, i32* @GL_FLOAT, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @qglVertexPointer(i32 3, i32 %15, i32 16, i32 %18)
  br i1 true, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @qglLockArraysEXT(i32 0, i32 %23)
  %25 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @R_DrawElements(i32 %29, i32 %32)
  br i1 true, label %34, label %37

34:                                               ; preds = %26
  %35 = call i32 (...) @qglUnlockArraysEXT()
  %36 = call i32 @GLimp_LogComment(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %26
  %38 = call i32 @qglDepthRange(i32 0, i32 1)
  ret void
}

declare dso_local i32 @GL_Bind(i32) #1

declare dso_local i32 @qglColor3f(i32, i32, i32) #1

declare dso_local i32 @GL_State(i32) #1

declare dso_local i32 @qglDepthRange(i32, i32) #1

declare dso_local i32 @qglDisableClientState(i32) #1

declare dso_local i32 @qglVertexPointer(i32, i32, i32, i32) #1

declare dso_local i32 @qglLockArraysEXT(i32, i32) #1

declare dso_local i32 @GLimp_LogComment(i8*) #1

declare dso_local i32 @R_DrawElements(i32, i32) #1

declare dso_local i32 @qglUnlockArraysEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
