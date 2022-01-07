; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_suspend.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, %struct.modctl*, %struct.TYPE_2__* }
%struct.modctl = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @fbt_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbt_suspend(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.modctl*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %7, align 8
  store %struct.modctl* null, %struct.modctl** %8, align 8
  br label %11

11:                                               ; preds = %61, %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %65

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load %struct.modctl*, %struct.modctl** %16, align 8
  store %struct.modctl* %17, %struct.modctl** %8, align 8
  %18 = load %struct.modctl*, %struct.modctl** %8, align 8
  %19 = getelementptr inbounds %struct.modctl, %struct.modctl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.modctl*, %struct.modctl** %8, align 8
  %25 = getelementptr inbounds %struct.modctl, %struct.modctl* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %14
  %29 = load %struct.modctl*, %struct.modctl** %8, align 8
  %30 = getelementptr inbounds %struct.modctl, %struct.modctl* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %14
  br label %61

37:                                               ; preds = %28
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = ptrtoint i64* %39 to i32
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @ml_nofault_copy(i32 %40, i32 %44, i32 8)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @flush_dcache(i32 %49, i32 8, i32 0)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @invalidate_icache(i32 %54, i32 8, i32 0)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %37, %36
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  store %struct.TYPE_2__* %64, %struct.TYPE_2__** %7, align 8
  br label %11

65:                                               ; preds = %11
  %66 = call i32 (...) @dtrace_membar_consumer()
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ml_nofault_copy(i32, i32, i32) #1

declare dso_local i32 @flush_dcache(i32, i32, i32) #1

declare dso_local i32 @invalidate_icache(i32, i32, i32) #1

declare dso_local i32 @dtrace_membar_consumer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
