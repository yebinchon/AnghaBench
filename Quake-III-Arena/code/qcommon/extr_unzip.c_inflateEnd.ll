; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_inflateEnd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_inflateEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

@Z_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"inflate: end\0A\00", align 1
@Z_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inflateEnd(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Z_NULL, align 8
  %6 = icmp eq %struct.TYPE_8__* %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Z_NULL, align 8
  %12 = icmp eq %struct.TYPE_8__* %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %7
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Z_NULL, align 8
  %18 = icmp eq %struct.TYPE_8__* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %7, %1
  %20 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %13
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Z_NULL, align 8
  %28 = icmp ne %struct.TYPE_8__* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = call i32 @inflate_blocks_free(%struct.TYPE_8__* %34, %struct.TYPE_8__* %35)
  br label %37

37:                                               ; preds = %29, %21
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @ZFREE(%struct.TYPE_8__* %38, %struct.TYPE_8__* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Z_NULL, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  %46 = call i32 @Tracev(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @Z_OK, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %37, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @inflate_blocks_free(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @ZFREE(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @Tracev(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
