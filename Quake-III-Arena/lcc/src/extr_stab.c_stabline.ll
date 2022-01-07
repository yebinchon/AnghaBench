; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stab.c_stabline.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stab.c_stabline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@currentfile = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c".stabs \22%s\22,0x%x,0,0,%s%d\0A\00", align 1
@N_SOL = common dso_local global i32 0, align 4
@stabprefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%d:\0A\00", align 1
@IR = common dso_local global i32* null, align 8
@sparcIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c".stabd 0x%x,0,%d\0A\00", align 1
@N_SLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c".stabn 0x%x,0,%d,%s%d-%s\0A\00", align 1
@cfunc = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stabline(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @currentfile, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = call i32 @genlabel(i32 1)
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @N_SOL, align 4
  %21 = load i32, i32* @stabprefix, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i8*, i64, i32, ...) @print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @stabprefix, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i8*, i64, i32, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* @currentfile, align 8
  br label %31

31:                                               ; preds = %15, %9, %1
  %32 = load i32*, i32** @IR, align 8
  %33 = icmp eq i32* %32, @sparcIR
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @N_SLINE, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i64, i32, ...) @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %36, i32 %39)
  br label %59

41:                                               ; preds = %31
  %42 = call i32 @genlabel(i32 1)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @N_SLINE, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @stabprefix, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfunc, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i64, i32, ...) @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %44, i32 %47, i32 %48, i32 %49, i32 %53)
  %55 = load i32, i32* @stabprefix, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i8*, i64, i32, ...) @print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %41, %34
  ret void
}

declare dso_local i32 @genlabel(i32) #1

declare dso_local i32 @print(i8*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
