; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_MouseEvent.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_MouseEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i64, i32* }

@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@KEYCATCH_UI = common dso_local global i32 0, align 4
@uivm = common dso_local global i32 0, align 4
@UI_MOUSE_EVENT = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@cgvm = common dso_local global i32 0, align 4
@CG_MOUSE_EVENT = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_MouseEvent(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 4
  %8 = load i32, i32* @KEYCATCH_UI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @uivm, align 4
  %13 = load i32, i32* @UI_MOUSE_EVENT, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @VM_Call(i32 %12, i32 %13, i32 %14, i32 %15)
  br label %42

17:                                               ; preds = %3
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 4
  %19 = load i32, i32* @KEYCATCH_CGAME, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32, i32* @cgvm, align 4
  %24 = load i32, i32* @CG_MOUSE_EVENT, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @VM_Call(i32 %23, i32 %24, i32 %25, i32 %26)
  br label %41

28:                                               ; preds = %17
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 1), align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 2), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 1), align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %28, %22
  br label %42

42:                                               ; preds = %41, %11
  ret void
}

declare dso_local i32 @VM_Call(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
