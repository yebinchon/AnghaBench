; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_EndOfScript.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_EndOfScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Line %i is incomplete\0A\00", align 1
@scriptline = common dso_local global i32 0, align 4
@script = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"memory buffer\00", align 1
@qtrue = common dso_local global i32 0, align 4
@endofscript = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@scriptstack = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"returning to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EndOfScript(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @scriptline, align 4
  %8 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @qtrue, align 4
  store i32 %16, i32* @endofscript, align 4
  %17 = load i32, i32* @qfalse, align 4
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %9
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @free(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scriptstack, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 1
  %26 = icmp eq %struct.TYPE_3__* %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* @qtrue, align 4
  store i32 %28, i32* @endofscript, align 4
  %29 = load i32, i32* @qfalse, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %18
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 -1
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** @script, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* @scriptline, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @GetToken(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %30, %27, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @Error(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @GetToken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
