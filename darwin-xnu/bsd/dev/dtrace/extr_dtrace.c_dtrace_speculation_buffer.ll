; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_speculation_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_speculation_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }

@CPU_DTRACE_ILLOP = common dso_local global i32 0, align 4
@cpu_core = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_7__*, i64, i32)* @dtrace_speculation_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @dtrace_speculation_buffer(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 128, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %89

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = icmp sgt i32 %16, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i32, i32* @CPU_DTRACE_ILLOP, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cpu_core, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %23
  store i32 %29, i32* %27, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %89

30:                                               ; preds = %15
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %41
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %11, align 8
  br label %43

43:                                               ; preds = %70, %30
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  switch i32 %47, label %67 [
    i32 128, label %48
    i32 130, label %48
    i32 129, label %48
    i32 131, label %49
    i32 132, label %56
    i32 133, label %64
    i32 134, label %66
  ]

48:                                               ; preds = %43, %43, %43
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %89

49:                                               ; preds = %43
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %89

56:                                               ; preds = %43
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %4, align 8
  br label %89

63:                                               ; preds = %56
  store i32 133, i32* %10, align 4
  br label %69

64:                                               ; preds = %43
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %65, %struct.TYPE_9__** %4, align 8
  br label %89

66:                                               ; preds = %43
  store i32 132, i32* %10, align 4
  br label %69

67:                                               ; preds = %43
  %68 = call i32 @ASSERT(i32 0)
  br label %69

69:                                               ; preds = %67, %66, %63
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @dtrace_cas32(i32* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %43, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %10, align 4
  %80 = icmp eq i32 %79, 132
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 133
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i1 [ true, %78 ], [ %83, %81 ]
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %4, align 8
  br label %89

89:                                               ; preds = %84, %64, %61, %49, %48, %22, %14
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %90
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_cas32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
