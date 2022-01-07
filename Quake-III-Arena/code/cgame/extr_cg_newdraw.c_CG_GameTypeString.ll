; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_GameTypeString.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_GameTypeString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cgs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GT_FFA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Free For All\00", align 1
@GT_TEAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Team Deathmatch\00", align 1
@GT_CTF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Capture the Flag\00", align 1
@GT_1FCTF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"One Flag CTF\00", align 1
@GT_OBELISK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Overload\00", align 1
@GT_HARVESTER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"Harvester\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CG_GameTypeString() #0 {
  %1 = alloca i8*, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %3 = load i64, i64* @GT_FFA, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  br label %37

6:                                                ; preds = %0
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %8 = load i64, i64* @GT_TEAM, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  br label %37

11:                                               ; preds = %6
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %13 = load i64, i64* @GT_CTF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8** %1, align 8
  br label %37

16:                                               ; preds = %11
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %18 = load i64, i64* @GT_1FCTF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %1, align 8
  br label %37

21:                                               ; preds = %16
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %23 = load i64, i64* @GT_OBELISK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  br label %37

26:                                               ; preds = %21
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %28 = load i64, i64* @GT_HARVESTER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %1, align 8
  br label %37

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i8** %1, align 8
  br label %37

37:                                               ; preds = %36, %30, %25, %20, %15, %10, %5
  %38 = load i8*, i8** %1, align 8
  ret i8* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
