; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, %struct.modctl*, %struct.TYPE_2__* }
%struct.modctl = type { i64, i32, i32, i32 }

@fbt_verbose = common dso_local global i64 0, align 8
@CE_NOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fbt is failing for probe %s (module %s unloaded)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"fbt is failing for probe %s (module %s reloaded)\00", align 1
@tempDTraceTrapHook = common dso_local global i64 0, align 8
@fbt_perfCallback = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"fbt_enable is failing for probe %s in module %s: tempDTraceTrapHook already occupied.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fbt_enable(i8* %0, i32 %1, i8* %2) #0 {
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

11:                                               ; preds = %112, %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %116

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load %struct.modctl*, %struct.modctl** %16, align 8
  store %struct.modctl* %17, %struct.modctl** %8, align 8
  %18 = load %struct.modctl*, %struct.modctl** %8, align 8
  %19 = getelementptr inbounds %struct.modctl, %struct.modctl* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %14
  %23 = load i64, i64* @fbt_verbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32, i32* @CE_NOTE, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.modctl*, %struct.modctl** %8, align 8
  %31 = getelementptr inbounds %struct.modctl, %struct.modctl* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cmn_err(i32 %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %25, %22
  br label %112

35:                                               ; preds = %14
  %36 = load %struct.modctl*, %struct.modctl** %8, align 8
  %37 = getelementptr inbounds %struct.modctl, %struct.modctl* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
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
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cmn_err(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %46, %43
  br label %112

56:                                               ; preds = %35
  %57 = load i64, i64* @fbt_perfCallback, align 8
  %58 = call i32 @dtrace_casptr(i64* @tempDTraceTrapHook, i32* null, i64 %57)
  %59 = load i64, i64* @tempDTraceTrapHook, align 8
  %60 = load i64, i64* @fbt_perfCallback, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i64, i64* @fbt_verbose, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i32, i32* @CE_NOTE, align 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.modctl*, %struct.modctl** %8, align 8
  %71 = getelementptr inbounds %struct.modctl, %struct.modctl* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cmn_err(i32 %66, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %62
  br label %112

75:                                               ; preds = %56
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %75
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = ptrtoint i64* %85 to i32
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @ml_nofault_copy(i32 %86, i32 %90, i32 8)
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @flush_dcache(i32 %95, i32 8, i32 0)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @invalidate_icache(i32 %100, i32 8, i32 0)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.modctl*, %struct.modctl** %8, align 8
  %108 = getelementptr inbounds %struct.modctl, %struct.modctl* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %83, %75
  br label %112

112:                                              ; preds = %111, %74, %55, %34
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  store %struct.TYPE_2__* %115, %struct.TYPE_2__** %7, align 8
  br label %11

116:                                              ; preds = %11
  %117 = call i32 (...) @dtrace_membar_consumer()
  ret i32 0
}

declare dso_local i32 @cmn_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dtrace_casptr(i64*, i32*, i64) #1

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
