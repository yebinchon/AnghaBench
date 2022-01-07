; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscLocalReducerEnvDestroy.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_tscLocalReducerEnvDestroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscLocalReducerEnvDestroy(i32** %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @tColModelDestroy(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @tOrderDescDestroy(i32* %12)
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %23, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32**, i32*** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = call i32 @tExtMemBufferDestroy(i32** %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %9, align 8
  br label %14

26:                                               ; preds = %14
  %27 = load i32**, i32*** %5, align 8
  %28 = call i32 @tfree(i32** %27)
  ret void
}

declare dso_local i32 @tColModelDestroy(i32*) #1

declare dso_local i32 @tOrderDescDestroy(i32*) #1

declare dso_local i32 @tExtMemBufferDestroy(i32**) #1

declare dso_local i32 @tfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
