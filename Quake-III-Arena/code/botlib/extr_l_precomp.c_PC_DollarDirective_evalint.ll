; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_DollarDirective_evalint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_l_precomp.c_PC_DollarDirective_evalint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32, i32, i64, i32, i32, i32 }

@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TT_NUMBER = common dso_local global i32 0, align 4
@TT_INTEGER = common dso_local global i32 0, align 4
@TT_LONG = common dso_local global i32 0, align 4
@TT_DECIMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PC_DollarDirective_evalint(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = load i32, i32* @qtrue, align 4
  %8 = call i32 @PC_DollarEvaluate(%struct.TYPE_11__* %6, i64* %4, i32* null, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @qfalse, align 4
  store i32 %11, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 8
  store i32 %17, i32* %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 7
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @abs(i64 %34)
  %36 = call i32 @sprintf(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @TT_NUMBER, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 3
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* @TT_INTEGER, align 4
  %40 = load i32, i32* @TT_LONG, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @TT_DECIMAL, align 4
  %43 = or i32 %41, %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = call i32 @PC_UnreadSourceToken(%struct.TYPE_11__* %45, %struct.TYPE_10__* %5)
  %47 = load i64, i64* %4, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %12
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = call i32 @UnreadSignToken(%struct.TYPE_11__* %50)
  br label %52

52:                                               ; preds = %49, %12
  %53 = load i32, i32* @qtrue, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %10
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @PC_DollarEvaluate(%struct.TYPE_11__*, i64*, i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @PC_UnreadSourceToken(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @UnreadSignToken(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
