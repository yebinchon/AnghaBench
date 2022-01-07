; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_inflate_blocks_new.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_unzip.c_inflate_blocks_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@Z_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@MANY = common dso_local global i32 0, align 4
@TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"inflate:   blocks allocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @inflate_blocks_new(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ZALLOC(i32 %9, i32 1, i32 4)
  %11 = inttoptr i64 %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Z_NULL, align 8
  %13 = icmp eq %struct.TYPE_9__* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %4, align 8
  br label %70

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MANY, align 4
  %19 = call i64 @ZALLOC(i32 %17, i32 32, i32 %18)
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Z_NULL, align 8
  %24 = icmp eq %struct.TYPE_9__* %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = call i32 @ZFREE(i32 %26, %struct.TYPE_9__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Z_NULL, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %4, align 8
  br label %70

30:                                               ; preds = %16
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @ZALLOC(i32 %31, i32 1, i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_9__*
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Z_NULL, align 8
  %38 = icmp eq %struct.TYPE_9__* %34, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 @ZFREE(i32 %40, %struct.TYPE_9__* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = call i32 @ZFREE(i32 %45, %struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Z_NULL, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %4, align 8
  br label %70

49:                                               ; preds = %30
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @TYPE, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = call i32 @Tracev(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @Z_NULL, align 8
  %68 = call i32 @inflate_blocks_reset(%struct.TYPE_9__* %65, i32 %66, %struct.TYPE_9__* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %4, align 8
  br label %70

70:                                               ; preds = %49, %39, %25, %14
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %71
}

declare dso_local i64 @ZALLOC(i32, i32, i32) #1

declare dso_local i32 @ZFREE(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @Tracev(i8*) #1

declare dso_local i32 @inflate_blocks_reset(%struct.TYPE_9__*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
