; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Configstrings_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_Configstrings_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64 }

@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CA_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Not connected to a server.\0A\00", align 1
@MAX_CONFIGSTRINGS = common dso_local global i32 0, align 4
@cl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%4i: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_Configstrings_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %4 = load i64, i64* @CA_ACTIVE, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %32

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @MAX_CONFIGSTRINGS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 0), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %29

22:                                               ; preds = %13
  %23 = load i32, i32* %1, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cl, i32 0, i32 0, i32 1), align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23, i64 %27)
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %9

32:                                               ; preds = %6, %9
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
