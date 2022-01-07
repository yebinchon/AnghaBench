; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_GL_Cull.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_backend.c_GL_Cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@glState = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@CT_TWO_SIDED = common dso_local global i32 0, align 4
@GL_CULL_FACE = common dso_local global i32 0, align 4
@CT_BACK_SIDED = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GL_FRONT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GL_Cull(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @glState, i32 0, i32 0), align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @CT_TWO_SIDED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @GL_CULL_FACE, align 4
  %14 = call i32 @qglDisable(i32 %13)
  br label %42

15:                                               ; preds = %7
  %16 = load i32, i32* @GL_CULL_FACE, align 4
  %17 = call i32 @qglEnable(i32 %16)
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @CT_BACK_SIDED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @GL_FRONT, align 4
  %26 = call i32 @qglCullFace(i32 %25)
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @GL_BACK, align 4
  %29 = call i32 @qglCullFace(i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %41

31:                                               ; preds = %15
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @backEnd, i32 0, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @GL_BACK, align 4
  %36 = call i32 @qglCullFace(i32 %35)
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @GL_FRONT, align 4
  %39 = call i32 @qglCullFace(i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %30
  br label %42

42:                                               ; preds = %6, %41, %12
  ret void
}

declare dso_local i32 @qglDisable(i32) #1

declare dso_local i32 @qglEnable(i32) #1

declare dso_local i32 @qglCullFace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
