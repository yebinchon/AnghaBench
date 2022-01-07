; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_enabling_match.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_enabling_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 (i32*, i32)*, i32 }

@cpu_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"dtrace_enabling_match() error on %p: %d\00", align 1
@dtrace_probegen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, %struct.TYPE_8__*)* @dtrace_enabling_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_enabling_match(%struct.TYPE_9__* %0, i32* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %12)
  %14 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %15 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %14)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %85, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %25, i64 %27
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %11, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %22
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64 (i32*, i32)*, i64 (i32*, i32)** %39, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 %40(i32* %42, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %85

49:                                               ; preds = %37, %22
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = call i32 @dtrace_probe_enable(i32* %51, %struct.TYPE_9__* %52, %struct.TYPE_10__* %53)
  store i32 %54, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @EBUSY, align 4
  store i32 %57, i32* %4, align 4
  br label %95

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load i32*, i32** %6, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* @CE_WARN, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = bitcast %struct.TYPE_10__* %71 to i8*
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @cmn_err(i32 %70, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  br label %95

81:                                               ; preds = %58
  %82 = load i32, i32* @dtrace_probegen, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %48
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %16

88:                                               ; preds = %16
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %77, %56
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @dtrace_probe_enable(i32*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @cmn_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
