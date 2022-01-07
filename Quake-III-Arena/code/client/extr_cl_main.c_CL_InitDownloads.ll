; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_InitDownloads.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_main.c_CL_InitDownloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@cl_allowDownload = common dso_local global %struct.TYPE_6__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [180 x i8] c"\0AWARNING: You are missing some files referenced by the server:\0A%sYou might not be able to join the game\0AGo to the setting menu to turn on autodownload, or get the file elsewhere\0A\0A\00", align 1
@clc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Need paks: %s\0A\00", align 1
@CA_CONNECTED = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_InitDownloads() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_allowDownload, align 8
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %8 = load i32, i32* @qfalse, align 4
  %9 = call i64 @FS_ComparePaks(i8* %7, i32 1024, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %13 = call i32 @Com_Printf(i8* getelementptr inbounds ([180 x i8], [180 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %6
  br label %31

15:                                               ; preds = %0
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %17 = load i32, i32* @qtrue, align 4
  %18 = call i64 @FS_ComparePaks(i8* %16, i32 8, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %22 = call i32 @Com_Printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @clc, i32 0, i32 0), align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @CA_CONNECTED, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 4
  %28 = call i32 (...) @CL_NextDownload()
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %15
  br label %31

31:                                               ; preds = %30, %14
  %32 = call i32 (...) @CL_DownloadsComplete()
  br label %33

33:                                               ; preds = %31, %26
  ret void
}

declare dso_local i64 @FS_ComparePaks(i8*, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local i32 @CL_NextDownload(...) #1

declare dso_local i32 @CL_DownloadsComplete(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
