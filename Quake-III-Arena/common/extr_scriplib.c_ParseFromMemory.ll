; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_ParseFromMemory.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_scriplib.c_ParseFromMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i8*, i32 }

@scriptstack = common dso_local global %struct.TYPE_3__* null, align 8
@script = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_INCLUDES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"script file exceeded MAX_INCLUDES\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"memory buffer\00", align 1
@qfalse = common dso_local global i8* null, align 8
@endofscript = common dso_local global i8* null, align 8
@tokenready = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ParseFromMemory(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scriptstack, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** @script, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 1
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** @script, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scriptstack, align 8
  %10 = load i64, i64* @MAX_INCLUDES, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  %12 = icmp eq %struct.TYPE_3__* %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @Error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @script, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @qfalse, align 8
  store i8* %38, i8** @endofscript, align 8
  %39 = load i8*, i8** @qfalse, align 8
  store i8* %39, i8** @tokenready, align 8
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
