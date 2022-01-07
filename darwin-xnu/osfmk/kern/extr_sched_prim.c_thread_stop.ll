; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_stop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_prim.c_thread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8*, i32 }

@TH_SUSP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@THREAD_ABORTSAFE = common dso_local global i32 0, align 4
@THREAD_WAITING = common dso_local global i64 0, align 8
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@TH_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread_stop(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = call i32 (...) @splsched()
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @wake_lock(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @thread_lock(%struct.TYPE_9__* %13)
  br label %15

15:                                               ; preds = %48, %2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @TH_SUSP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = load i8*, i8** @TRUE, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @thread_unlock(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %31 = call i64 @assert_wait(i8** %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 @wake_unlock(%struct.TYPE_9__* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @splx(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @THREAD_WAITING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %22
  %40 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %41 = call i64 @thread_block(i32 %40)
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %39, %22
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @THREAD_AWAKENED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i8*, i8** @FALSE, align 8
  store i8* %47, i8** %3, align 8
  br label %135

48:                                               ; preds = %42
  %49 = call i32 (...) @splsched()
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = call i32 @wake_lock(%struct.TYPE_9__* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = call i32 @thread_lock(%struct.TYPE_9__* %52)
  br label %15

54:                                               ; preds = %15
  %55 = load i32, i32* @TH_SUSP, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %121, %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = call i8* @thread_isoncpu(%struct.TYPE_9__* %61)
  store i8* %62, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TH_RUN, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %67, %64
  %75 = phi i1 [ false, %64 ], [ %73, %67 ]
  br label %76

76:                                               ; preds = %74, %60
  %77 = phi i1 [ true, %60 ], [ %75, %74 ]
  br i1 %77, label %78, label %127

78:                                               ; preds = %76
  %79 = load i8*, i8** %8, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @TH_RUN, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @cause_ast_check(i32 %91)
  br label %93

93:                                               ; preds = %81, %78
  %94 = load i8*, i8** @TRUE, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = call i32 @thread_unlock(%struct.TYPE_9__* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* @THREAD_ABORTSAFE, align 4
  %102 = call i64 @assert_wait(i8** %100, i32 %101)
  store i64 %102, i64* %6, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = call i32 @wake_unlock(%struct.TYPE_9__* %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @splx(i32 %105)
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @THREAD_WAITING, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %93
  %111 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %112 = call i64 @thread_block(i32 %111)
  store i64 %112, i64* %6, align 8
  br label %113

113:                                              ; preds = %110, %93
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @THREAD_AWAKENED, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = call i32 @thread_unstop(%struct.TYPE_9__* %118)
  %120 = load i8*, i8** @FALSE, align 8
  store i8* %120, i8** %3, align 8
  br label %135

121:                                              ; preds = %113
  %122 = call i32 (...) @splsched()
  store i32 %122, i32* %7, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = call i32 @wake_lock(%struct.TYPE_9__* %123)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %126 = call i32 @thread_lock(%struct.TYPE_9__* %125)
  br label %60

127:                                              ; preds = %76
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = call i32 @thread_unlock(%struct.TYPE_9__* %128)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = call i32 @wake_unlock(%struct.TYPE_9__* %130)
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @splx(i32 %132)
  %134 = load i8*, i8** @TRUE, align 8
  store i8* %134, i8** %3, align 8
  br label %135

135:                                              ; preds = %127, %117, %46
  %136 = load i8*, i8** %3, align 8
  ret i8* %136
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @wake_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_9__*) #1

declare dso_local i64 @assert_wait(i8**, i32) #1

declare dso_local i32 @wake_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @thread_block(i32) #1

declare dso_local i8* @thread_isoncpu(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cause_ast_check(i32) #1

declare dso_local i32 @thread_unstop(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
