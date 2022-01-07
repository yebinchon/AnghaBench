; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getupcstack.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getupcstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@cpu_core = common dso_local global %struct.TYPE_3__* null, align 8
@CPU = common dso_local global %struct.TYPE_4__* null, align 8
@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_getupcstack(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = call i32* (...) @current_thread()
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cpu_core, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @CPU, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load volatile i32, i32* %19, align 4
  %21 = load volatile i32, i32* @CPU_DTRACE_FAULT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %103

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %103

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %95

33:                                               ; preds = %29
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @find_user_regs(i32* %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %95

40:                                               ; preds = %33
  %41 = call i64 (...) @dtrace_proc_selfpid()
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8**, i8*** %3, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %3, align 8
  store i8* %42, i8** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %103

50:                                               ; preds = %40
  %51 = load i32*, i32** %6, align 8
  %52 = call i64 @get_saved_state_pc(i32* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i64 @get_saved_state_sp(i32* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @get_saved_state_fp(i32* %55)
  store i64 %56, i64* %9, align 8
  %57 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %58 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load i64, i64* %7, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load i8**, i8*** %3, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i32 1
  store i8** %64, i8*** %3, align 8
  store i8* %62, i8** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %103

70:                                               ; preds = %60
  %71 = load i32*, i32** %6, align 8
  %72 = call i64 @get_saved_state_lr(i32* %71)
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %70, %50
  %74 = load i8**, i8*** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @dtrace_getustack_common(i8** %74, i32 %75, i64 %76, i64 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp sge i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp sle i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT(i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load i8**, i8*** %3, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  store i8** %91, i8*** %3, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %73, %39, %32
  br label %96

96:                                               ; preds = %100, %95
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %4, align 4
  %99 = icmp sgt i32 %97, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i8**, i8*** %3, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %3, align 8
  store i8* null, i8** %101, align 8
  br label %96

103:                                              ; preds = %24, %28, %49, %69, %96
  ret void
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i64 @dtrace_proc_selfpid(...) #1

declare dso_local i64 @get_saved_state_pc(i32*) #1

declare dso_local i64 @get_saved_state_sp(i32*) #1

declare dso_local i64 @get_saved_state_fp(i32*) #1

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i64 @get_saved_state_lr(i32*) #1

declare dso_local i32 @dtrace_getustack_common(i8**, i32, i64, i64) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
