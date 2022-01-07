; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_kdebug.c_loop_kdebug_trace.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_kdebug.c_loop_kdebug_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @loop_kdebug_trace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_kdebug_trace(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %89, %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @dt_stat_time_begin(i32 %6)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %82, %5
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %85

11:                                               ; preds = %8
  %12 = load i32, i32* @DBG_FUNC_NONE, align 4
  %13 = or i32 -1761607680, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @kdebug_trace(i32 %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @DBG_FUNC_NONE, align 4
  %20 = or i32 -1761607680, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @kdebug_trace(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @DBG_FUNC_NONE, align 4
  %27 = or i32 -1761607680, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @kdebug_trace(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @DBG_FUNC_NONE, align 4
  %34 = or i32 -1761607680, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @kdebug_trace(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @DBG_FUNC_NONE, align 4
  %41 = or i32 -1761607680, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @kdebug_trace(i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @DBG_FUNC_NONE, align 4
  %48 = or i32 -1761607680, %47
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @kdebug_trace(i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @DBG_FUNC_NONE, align 4
  %55 = or i32 -1761607680, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @kdebug_trace(i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @DBG_FUNC_NONE, align 4
  %62 = or i32 -1761607680, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @kdebug_trace(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @DBG_FUNC_NONE, align 4
  %69 = or i32 -1761607680, %68
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @kdebug_trace(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* @DBG_FUNC_NONE, align 4
  %76 = or i32 -1761607680, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @kdebug_trace(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %11
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %8

85:                                               ; preds = %8
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @dt_stat_time_end_batch(i32 %86, i32 1000, i32 %87)
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @dt_stat_stable(i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %5, label %94

94:                                               ; preds = %89
  ret void
}

declare dso_local i32 @dt_stat_time_begin(i32) #1

declare dso_local i32 @kdebug_trace(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dt_stat_time_end_batch(i32, i32, i32) #1

declare dso_local i32 @dt_stat_stable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
