; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_require_avx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_require_avx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kHasAVX1_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"AVX not supported on this system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @require_avx() #0 {
  %1 = call i32 (...) @_get_cpu_capabilities()
  %2 = load i32, i32* @kHasAVX1_0, align 4
  %3 = and i32 %1, %2
  %4 = load i32, i32* @kHasAVX1_0, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @T_SKIP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

declare dso_local i32 @_get_cpu_capabilities(...) #1

declare dso_local i32 @T_SKIP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
