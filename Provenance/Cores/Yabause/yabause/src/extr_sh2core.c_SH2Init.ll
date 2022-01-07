; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sh2core.c_SH2Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 (...)* }

@MSH2 = common dso_local global %struct.TYPE_10__* null, align 8
@SSH2 = common dso_local global %struct.TYPE_10__* null, align 8
@SH2CORE_DEFAULT = common dso_local global i32 0, align 4
@SH2CoreList = common dso_local global %struct.TYPE_11__** null, align 8
@SH2Core = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SH2Init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i64 @calloc(i32 1, i32 8)
  %6 = inttoptr i64 %5 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** @MSH2, align 8
  %7 = icmp eq %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %82

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MSH2, align 8
  %11 = call i64 @SH2TrackInfLoopInit(%struct.TYPE_10__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %82

14:                                               ; preds = %9
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MSH2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MSH2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = call i64 @calloc(i32 1, i32 8)
  %21 = inttoptr i64 %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** @SSH2, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %82

24:                                               ; preds = %14
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SSH2, align 8
  %26 = call i64 @SH2TrackInfLoopInit(%struct.TYPE_10__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %82

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SSH2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i32 32768, i32* %32, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SSH2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SH2CORE_DEFAULT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %29
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %64, %39
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @SH2CoreList, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %41, i64 %43
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @SH2CoreList, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 %50
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @SH2CoreList, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %58, i64 %60
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** @SH2Core, align 8
  br label %67

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %40

67:                                               ; preds = %57, %40
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SH2Core, align 8
  %69 = icmp eq %struct.TYPE_11__* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SH2Core, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64 (...)*, i64 (...)** %72, align 8
  %74 = call i64 (...) %73()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %70, %67
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MSH2, align 8
  %78 = call i32 @free(%struct.TYPE_10__* %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SSH2, align 8
  %80 = call i32 @free(%struct.TYPE_10__* %79)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @SSH2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @MSH2, align 8
  store i32 -1, i32* %2, align 4
  br label %82

81:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %76, %28, %23, %13, %8
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @SH2TrackInfLoopInit(%struct.TYPE_10__*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
