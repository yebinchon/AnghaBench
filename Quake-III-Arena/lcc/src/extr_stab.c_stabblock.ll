; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stab.c_stabblock.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stab.c_stabblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IR = common dso_local global i32* null, align 8
@sparcIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c".stabd 0x%x,0,%d\0A\00", align 1
@N_LBRAC = common dso_local global i32 0, align 4
@N_RBRAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c".stabn 0x%x,0,%d,%s%d-%s\0A\00", align 1
@stabprefix = common dso_local global i32 0, align 4
@cfunc = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%d:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stabblock(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 123
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i64*, i64** %6, align 8
  %17 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %17, i64** %6, align 8
  %18 = load i64, i64* %16, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @stabsym(i32 %19)
  br label %11

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i32*, i32** @IR, align 8
  %24 = icmp eq i32* %23, @sparcIR
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 123
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @N_LBRAC, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @N_RBRAC, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, i32, i32, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %57

36:                                               ; preds = %22
  %37 = call i32 @genlabel(i32 1)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 123
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @N_LBRAC, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @N_RBRAC, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @stabprefix, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfunc, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, i32, ...) @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47, i32 %48, i32 %52)
  %54 = load i32, i32* @stabprefix, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 (i8*, i32, i32, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %44, %32
  ret void
}

declare dso_local i32 @stabsym(i32) #1

declare dso_local i32 @print(i8*, i32, i32, ...) #1

declare dso_local i32 @genlabel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
