; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_UpdateScreen.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_scrn.c_SCR_UpdateScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i32*, i32*)* }

@SCR_UpdateScreen.recursive = internal global i32 0, align 4
@scr_initialized = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"SCR_UpdateScreen: recursively called\00", align 1
@cls = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@STEREO_LEFT = common dso_local global i32 0, align 4
@STEREO_RIGHT = common dso_local global i32 0, align 4
@STEREO_CENTER = common dso_local global i32 0, align 4
@com_speeds = common dso_local global %struct.TYPE_7__* null, align 8
@re = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@time_frontend = common dso_local global i32 0, align 4
@time_backend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SCR_UpdateScreen() #0 {
  %1 = load i32, i32* @scr_initialized, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %34

4:                                                ; preds = %0
  %5 = load i32, i32* @SCR_UpdateScreen.recursive, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @SCR_UpdateScreen.recursive, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, i32* @ERR_FATAL, align 4
  %10 = call i32 @Com_Error(i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %4
  store i32 1, i32* @SCR_UpdateScreen.recursive, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cls, i32 0, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @STEREO_LEFT, align 4
  %16 = call i32 @SCR_DrawScreenField(i32 %15)
  %17 = load i32, i32* @STEREO_RIGHT, align 4
  %18 = call i32 @SCR_DrawScreenField(i32 %17)
  br label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @STEREO_CENTER, align 4
  %21 = call i32 @SCR_DrawScreenField(i32 %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @com_speeds, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %29 = call i32 %28(i32* @time_frontend, i32* @time_backend)
  br label %33

30:                                               ; preds = %22
  %31 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @re, i32 0, i32 0), align 8
  %32 = call i32 %31(i32* null, i32* null)
  br label %33

33:                                               ; preds = %30, %27
  store i32 0, i32* @SCR_UpdateScreen.recursive, align 4
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @SCR_DrawScreenField(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
