; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getustackdepth.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_dtrace_isa.c_dtrace_getustackdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_DTRACE_FAULT = common dso_local global i32 0, align 4
@CPU_DTRACE_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getustackdepth() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32* (...) @current_thread()
  store i32* %8, i32** %2, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %48

12:                                               ; preds = %0
  %13 = load i32, i32* @CPU_DTRACE_FAULT, align 4
  %14 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %1, align 4
  br label %48

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @find_user_regs(i32* %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %3, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %1, align 4
  br label %48

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @get_saved_state_pc(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @get_saved_state_sp(i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @get_saved_state_fp(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @CPU_DTRACE_ENTRY, align 4
  %32 = call i64 @DTRACE_CPUFLAG_ISSET(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @get_saved_state_lr(i32* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %24
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @dtrace_getustack_common(i32* null, i32 0, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %1, align 4
  br label %48

48:                                               ; preds = %39, %23, %16, %11
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32* @current_thread(...) #1

declare dso_local i64 @DTRACE_CPUFLAG_ISSET(i32) #1

declare dso_local i64 @find_user_regs(i32*) #1

declare dso_local i32 @get_saved_state_pc(i32*) #1

declare dso_local i32 @get_saved_state_sp(i32*) #1

declare dso_local i32 @get_saved_state_fp(i32*) #1

declare dso_local i32 @get_saved_state_lr(i32*) #1

declare dso_local i64 @dtrace_getustack_common(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
