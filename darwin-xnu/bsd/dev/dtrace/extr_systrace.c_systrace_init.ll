; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_systrace_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_systrace.c_systrace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTRACE_MAJOR = common dso_local global i32 0, align 4
@systrace_cdevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"systrace_init: failed to allocate a major number!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @systrace_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @dtrace_sdt_probes_restricted()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %21

5:                                                ; preds = %0
  %6 = load i32, i32* @SYSTRACE_MAJOR, align 4
  %7 = call i32 @cdevsw_add(i32 %6, i32* @systrace_cdevsw)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %21

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i32*
  %16 = call i32 @systrace_attach(i32* %15)
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @machtrace_attach(i32* %19)
  br label %21

21:                                               ; preds = %12, %10, %4
  ret void
}

declare dso_local i64 @dtrace_sdt_probes_restricted(...) #1

declare dso_local i32 @cdevsw_add(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @systrace_attach(i32*) #1

declare dso_local i32 @machtrace_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
