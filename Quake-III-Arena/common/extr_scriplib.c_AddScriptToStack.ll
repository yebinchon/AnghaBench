; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_AddScriptToStack.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_AddScriptToStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64, i64, i64 }

@script = common dso_local global %struct.TYPE_3__* null, align 8
@scriptstack = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_INCLUDES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"script file exceeded MAX_INCLUDES\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"entering %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddScriptToStack(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 1
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** @script, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scriptstack, align 8
  %8 = load i64, i64* @MAX_INCLUDES, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = icmp eq %struct.TYPE_3__* %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @ExpandPath(i8* %17)
  %19 = call i32 @strcpy(i8* %16, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = bitcast i64* %24 to i8**
  %26 = call i32 @LoadFile(i8* %22, i8** %25)
  store i32 %26, i32* %3, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ExpandPath(i8*) #1

declare dso_local i32 @LoadFile(i8*, i8**) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
