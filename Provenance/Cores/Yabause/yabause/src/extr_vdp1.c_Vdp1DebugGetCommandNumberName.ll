; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugGetCommandNumberName.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp1.c_Vdp1DebugGetCommandNumberName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Vdp1Ram = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Draw End\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Normal Sprite\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Scaled Sprite\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Distorted Sprite\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Distorted Sprite *\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Polygon\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Polyline\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Polyline *\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"User Clipping Coordinates\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"System Clipping Coordinates\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Local Coordinates\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"User Clipping Coordinates *\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Bad command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Vdp1DebugGetCommandNumberName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @Vdp1DebugGetCommandNumberAddr(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load i32, i32* @Vdp1Ram, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @T1ReadWord(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 32768
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

17:                                               ; preds = %9
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 15
  switch i32 %19, label %32 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
    i32 4, label %24
    i32 5, label %25
    i32 6, label %26
    i32 7, label %27
    i32 8, label %28
    i32 9, label %29
    i32 10, label %30
    i32 11, label %31
  ]

20:                                               ; preds = %17
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %34

21:                                               ; preds = %17
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %34

22:                                               ; preds = %17
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %34

23:                                               ; preds = %17
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %34

24:                                               ; preds = %17
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %34

25:                                               ; preds = %17
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %34

26:                                               ; preds = %17
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %34

27:                                               ; preds = %17
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %34

28:                                               ; preds = %17
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %34

29:                                               ; preds = %17
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %34

30:                                               ; preds = %17
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %34

31:                                               ; preds = %17
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %34

32:                                               ; preds = %17
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %34

33:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %16
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @Vdp1DebugGetCommandNumberAddr(i32) #1

declare dso_local i32 @T1ReadWord(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
