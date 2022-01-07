; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_CreateNewCommands.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_input.c_CL_CreateNewCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32* }

@cls = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CA_PRIMED = common dso_local global i64 0, align 8
@com_frameTime = common dso_local global i32 0, align 4
@old_com_frameTime = common dso_local global i32 0, align 4
@frame_msec = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CMD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_CreateNewCommands() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cls, i32 0, i32 0), align 8
  %4 = load i64, i64* @CA_PRIMED, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %30

7:                                                ; preds = %0
  %8 = load i32, i32* @com_frameTime, align 4
  %9 = load i32, i32* @old_com_frameTime, align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* @frame_msec, align 4
  %11 = load i32, i32* @frame_msec, align 4
  %12 = icmp sgt i32 %11, 200
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 200, i32* @frame_msec, align 4
  br label %14

14:                                               ; preds = %13, %7
  %15 = load i32, i32* @com_frameTime, align 4
  store i32 %15, i32* @old_com_frameTime, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 0), align 8
  %19 = load i32, i32* @CMD_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %2, align 4
  %21 = call i32 (...) @CL_CreateCmd()
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 1), align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cl, i32 0, i32 1), align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %1, align 8
  br label %30

30:                                               ; preds = %14, %6
  ret void
}

declare dso_local i32 @CL_CreateCmd(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
