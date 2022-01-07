; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getustackdepth.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_dtrace_isa.c_dtrace_getustackdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getustackdepth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = call i32* (...) @current_thread()
  store i32* %9, i32** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 (...) @current_proc()
  %11 = call i64 @proc_is64bit(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %77

15:                                               ; preds = %0
  %16 = load i32, i32* @CPU_DTRACE_FAULT, align 4
  %17 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 -1, i32* %1, align 4
  br label %77

20:                                               ; preds = %15
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @VALID, align 4
  %23 = call i32 @pal_register_cache_state(i32* %21, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i64 @find_user_regs(i32* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %3, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = icmp eq %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %77

30:                                               ; preds = %20
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %5, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %61

48:                                               ; preds = %30
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %48, %33
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dtrace_adjust_stack(i32* null, i32* null, i32* %4, i32 %62)
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @dtrace_getustack_common(i32* null, i32 0, i32 %69, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %1, align 4
  br label %77

77:                                               ; preds = %68, %29, %19, %14
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i32 @pal_register_cache_state(i32*, i32) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i32 @dtrace_adjust_stack(i32*, i32*, i32*, i32) #1

declare dso_local i64 @dtrace_getustack_common(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
