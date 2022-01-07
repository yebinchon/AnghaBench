; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getupcstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getupcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@cpu_core = common dso_local global %struct.TYPE_11__* null, align 8
@CPU = common dso_local global %struct.TYPE_12__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getupcstack(i64* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = call i32* (...) @current_thread()
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cpu_core, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CPU, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32* %19, i32** %10, align 8
  %20 = call i32 (...) @current_proc()
  %21 = call i64 @proc_is64bit(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load volatile i32, i32* %22, align 4
  %24 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %122

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %122

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %114

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @VALID, align 4
  %39 = call i32 @pal_register_cache_state(i32* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @find_user_regs(i32* %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %6, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = icmp eq %struct.TYPE_10__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %114

46:                                               ; preds = %36
  %47 = call i64 (...) @dtrace_proc_selfpid()
  %48 = load i64*, i64** %3, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %3, align 8
  store i64 %47, i64* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %122

55:                                               ; preds = %46
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %9, align 4
  br label %86

73:                                               ; preds = %55
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %73, %58
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dtrace_adjust_stack(i64** %3, i32* %4, i32* %7, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %122

92:                                               ; preds = %86
  %93 = load i64*, i64** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @dtrace_getustack_common(i64* %93, i32 %94, i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp sle i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @ASSERT(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i64*, i64** %3, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64* %110, i64** %3, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %92, %45, %35
  br label %115

115:                                              ; preds = %119, %114
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %4, align 4
  %118 = icmp sgt i32 %116, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64*, i64** %3, align 8
  %121 = getelementptr inbounds i64, i64* %120, i32 1
  store i64* %121, i64** %3, align 8
  store i64 0, i64* %120, align 8
  br label %115

122:                                              ; preds = %27, %31, %54, %91, %115
  ret void
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @pal_register_cache_state(i32*, i32) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i64 @dtrace_proc_selfpid(...) #1

declare dso_local i32 @dtrace_adjust_stack(i64**, i32*, i32*, i32) #1

declare dso_local i32 @dtrace_getustack_common(i64*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
