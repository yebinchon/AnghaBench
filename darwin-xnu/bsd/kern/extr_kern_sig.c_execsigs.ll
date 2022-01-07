; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_execsigs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_execsigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.sigacts* }
%struct.sigacts = type { i64, i32, i32, i32* }
%struct.uthread = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }

@sigprop = common dso_local global i32* null, align 8
@SA_IGNORE = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@PS_SIGRETURN_VALIDATION_DEFAULT = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4
@SA_DISABLE = common dso_local global i32 0, align 4
@USER_ADDR_NULL = common dso_local global i32 0, align 4
@UT_ALTSTACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execsigs(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigacts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uthread*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load %struct.sigacts*, %struct.sigacts** %10, align 8
  store %struct.sigacts* %11, %struct.sigacts** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @get_bsdthread_info(i32 %12)
  %14 = inttoptr i64 %13 to %struct.uthread*
  store %struct.uthread* %14, %struct.uthread** %8, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.uthread*, %struct.uthread** %8, align 8
  %19 = getelementptr inbounds %struct.uthread, %struct.uthread* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %68, %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = call i32 @ffs(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sigmask(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32*, i32** @sigprop, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SA_IGNORE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %29
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SIGCONT, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %7, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.uthread*, %struct.uthread** %8, align 8
  %65 = getelementptr inbounds %struct.uthread, %struct.uthread* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %29
  %69 = load i32, i32* @SIG_DFL, align 4
  %70 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %71 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %24

76:                                               ; preds = %24
  %77 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %78 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %77, i32 0, i32 2
  %79 = load i32, i32* @PS_SIGRETURN_VALIDATION_DEFAULT, align 4
  %80 = load i32, i32* @memory_order_relaxed, align 4
  %81 = call i32 @atomic_store_explicit(i32* %78, i32 %79, i32 %80)
  %82 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %83 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %82, i32 0, i32 1
  %84 = call i32 @read_random(i32* %83, i32 4)
  %85 = load i32, i32* @SA_DISABLE, align 4
  %86 = load %struct.uthread*, %struct.uthread** %8, align 8
  %87 = getelementptr inbounds %struct.uthread, %struct.uthread* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 8
  %89 = load %struct.uthread*, %struct.uthread** %8, align 8
  %90 = getelementptr inbounds %struct.uthread, %struct.uthread* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @USER_ADDR_NULL, align 4
  %93 = load %struct.uthread*, %struct.uthread** %8, align 8
  %94 = getelementptr inbounds %struct.uthread, %struct.uthread* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @UT_ALTSTACK, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.uthread*, %struct.uthread** %8, align 8
  %99 = getelementptr inbounds %struct.uthread, %struct.uthread* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.sigacts*, %struct.sigacts** %5, align 8
  %103 = getelementptr inbounds %struct.sigacts, %struct.sigacts* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  ret void
}

declare dso_local i64 @get_bsdthread_info(i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @atomic_store_explicit(i32*, i32, i32) #1

declare dso_local i32 @read_random(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
