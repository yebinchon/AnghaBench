; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framesync.c_ff_framesync_init_dualinput.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_framesync.c_ff_framesync_init_dualinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }

@EXT_STOP = common dso_local global i32 0, align 4
@EXT_INFINITY = common dso_local global i8* null, align 8
@EXT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_framesync_init_dualinput(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %9 = call i32 @ff_framesync_init(%struct.TYPE_11__* %7, %struct.TYPE_12__* %8, i32 2)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %17, i64 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  store i32 %21, i32* %26, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %29, i64 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  store i32 %33, i32* %38, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 2, i32* %43, align 8
  %44 = load i32, i32* @EXT_STOP, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %44, i32* %49, align 8
  %50 = load i8*, i8** @EXT_INFINITY, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* @EXT_NULL, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i32 %61, i32* %66, align 8
  %67 = load i8*, i8** @EXT_INFINITY, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %14, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ff_framesync_init(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
