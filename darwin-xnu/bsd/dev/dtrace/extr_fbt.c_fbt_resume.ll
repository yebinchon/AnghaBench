; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_resume.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, %struct.modctl*, %struct.TYPE_2__* }
%struct.modctl = type { i64, i64, i32, i32 }

@tempDTraceTrapHook = common dso_local global i64 0, align 8
@fbt_perfCallback = common dso_local global i64 0, align 8
@fbt_verbose = common dso_local global i64 0, align 8
@CE_NOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"fbt_resume is failing for probe %s in module %s: tempDTraceTrapHook already occupied.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @fbt_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbt_resume(i8* %0, i32 %1, i8* %2) #0 {
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

11:                                               ; preds = %80, %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %84

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load %struct.modctl*, %struct.modctl** %16, align 8
  store %struct.modctl* %17, %struct.modctl** %8, align 8
  %18 = load %struct.modctl*, %struct.modctl** %8, align 8
  %19 = getelementptr inbounds %struct.modctl, %struct.modctl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.modctl*, %struct.modctl** %8, align 8
  %25 = getelementptr inbounds %struct.modctl, %struct.modctl* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
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
  br label %80

37:                                               ; preds = %28
  %38 = load i64, i64* @fbt_perfCallback, align 8
  %39 = call i32 @dtrace_casptr(i64* @tempDTraceTrapHook, i32* null, i64 %38)
  %40 = load i64, i64* @tempDTraceTrapHook, align 8
  %41 = load i64, i64* @fbt_perfCallback, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %37
  %44 = load i64, i64* @fbt_verbose, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, i32* @CE_NOTE, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.modctl*, %struct.modctl** %8, align 8
  %52 = getelementptr inbounds %struct.modctl, %struct.modctl* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @cmn_err(i32 %47, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %43
  br label %86

56:                                               ; preds = %37
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = ptrtoint i64* %58 to i32
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @ml_nofault_copy(i32 %59, i32 %63, i32 8)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @flush_dcache(i32 %68, i32 8, i32 0)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @invalidate_icache(i32 %73, i32 8, i32 0)
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %56, %36
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  store %struct.TYPE_2__* %83, %struct.TYPE_2__** %7, align 8
  br label %11

84:                                               ; preds = %11
  %85 = call i32 (...) @dtrace_membar_consumer()
  br label %86

86:                                               ; preds = %84, %55
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_casptr(i64*, i32*, i64) #1

declare dso_local i32 @cmn_err(i32, i8*, i32, i32) #1

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
