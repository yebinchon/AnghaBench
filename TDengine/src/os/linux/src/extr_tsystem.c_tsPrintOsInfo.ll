; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tsystem.c_tsPrintOsInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tsystem.c_tsPrintOsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c" os pageSize:            %ld(KB)\00", align 1
@tsPageSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c" os openMax:             %ld\00", align 1
@tsOpenMax = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c" os streamMax:           %ld\00", align 1
@tsStreamMax = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c" os numOfCores:          %d\00", align 1
@tsNumOfCores = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c" os totalDisk:           %f(GB)\00", align 1
@tsTotalDataDirGB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c" os totalMemory:         %d(MB)\00", align 1
@tsTotalMemoryMB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c" can't fetch os info\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c" os sysname:             %s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c" os nodename:            %s\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" os release:             %s\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c" os version:             %s\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c" os machine:             %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsPrintOsInfo() #0 {
  %1 = alloca %struct.utsname, align 4
  %2 = load i32, i32* @tsPageSize, align 4
  %3 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = load i32, i32* @tsOpenMax, align 4
  %5 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* @tsStreamMax, align 4
  %7 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @tsNumOfCores, align 4
  %9 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @tsTotalDataDirGB, align 4
  %11 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @tsTotalMemoryMB, align 4
  %13 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %12)
  %14 = call i64 @uname(%struct.utsname* %1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %34

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %18, %16
  ret void
}

declare dso_local i32 @pPrint(i8*, ...) #1

declare dso_local i64 @uname(%struct.utsname*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
