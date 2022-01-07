; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_MountDVD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/fileio/extr_file_load.c_MountDVD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }

@.str = private unnamed_addr constant [12 x i8] c"Information\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Mounting DVD ...\00", align 1
@dvd_mounted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"dvd:\00", align 1
@dvd = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"No Disc inserted !\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dvd\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Disc can not be read !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @MountDVD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MountDVD() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GUI_MsgBoxOpen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %3 = load i32, i32* @dvd_mounted, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @ISO9660_Unmount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* @dvd_mounted, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dvd, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = call i32 (...) %10()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %23

15:                                               ; preds = %7
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dvd, align 8
  %17 = call i32 @ISO9660_Mount(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_3__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 @GUI_WaitPrompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %23

21:                                               ; preds = %15
  store i32 1, i32* @dvd_mounted, align 4
  %22 = call i32 (...) @GUI_MsgBoxClose()
  store i32 1, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %19, %13
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @GUI_MsgBoxOpen(i8*, i8*, i32) #1

declare dso_local i32 @ISO9660_Unmount(i8*) #1

declare dso_local i32 @GUI_WaitPrompt(i8*, i8*) #1

declare dso_local i32 @ISO9660_Mount(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @GUI_MsgBoxClose(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
