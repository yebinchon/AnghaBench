; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_sdt.c_sdt_enable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_sdt.c_sdt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.TYPE_2__*, i64, i32, i32, %struct.modctl* }
%struct.modctl = type { i64, i32, i32, i32 }

@sdt_verbose = common dso_local global i64 0, align 8
@CE_NOTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"sdt is failing for probe %s (module %s unloaded)\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"sdt is failing for probe %s (module %s reloaded)\00", align 1
@tempDTraceTrapHook = common dso_local global i64 0, align 8
@fbt_perfCallback = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"sdt_enable is failing for probe %s in module %s: tempDTraceTrapHook already occupied.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @sdt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdt_enable(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.modctl*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %8, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = load %struct.modctl*, %struct.modctl** %13, align 8
  store %struct.modctl* %14, %struct.modctl** %9, align 8
  %15 = load %struct.modctl*, %struct.modctl** %9, align 8
  %16 = getelementptr inbounds %struct.modctl, %struct.modctl* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.modctl*, %struct.modctl** %9, align 8
  %20 = getelementptr inbounds %struct.modctl, %struct.modctl* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @sdt_verbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* @CE_NOTE, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.modctl*, %struct.modctl** %9, align 8
  %32 = getelementptr inbounds %struct.modctl, %struct.modctl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cmn_err(i32 %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %26, %23
  br label %103

36:                                               ; preds = %3
  %37 = load %struct.modctl*, %struct.modctl** %9, align 8
  %38 = getelementptr inbounds %struct.modctl, %struct.modctl* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %36
  %45 = load i64, i64* @sdt_verbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* @CE_NOTE, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.modctl*, %struct.modctl** %9, align 8
  %53 = getelementptr inbounds %struct.modctl, %struct.modctl* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @cmn_err(i32 %48, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %44
  br label %103

57:                                               ; preds = %36
  %58 = load i64, i64* @fbt_perfCallback, align 8
  %59 = call i32 @dtrace_casptr(i64* @tempDTraceTrapHook, i32* null, i64 %58)
  %60 = load i64, i64* @tempDTraceTrapHook, align 8
  %61 = load i64, i64* @fbt_perfCallback, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load i64, i64* @sdt_verbose, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @CE_NOTE, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.modctl*, %struct.modctl** %9, align 8
  %72 = getelementptr inbounds %struct.modctl, %struct.modctl* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cmn_err(i32 %67, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %66, %63
  store i32 0, i32* %4, align 4
  br label %104

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %80, %76
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %79 = icmp ne %struct.TYPE_2__* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = ptrtoint i32* %82 to i32
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ml_nofault_copy(i32 %83, i32 %87, i32 4)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @flush_dcache(i32 %92, i32 4, i32 0)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @invalidate_icache(i32 %97, i32 4, i32 0)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  store %struct.TYPE_2__* %101, %struct.TYPE_2__** %8, align 8
  br label %77

102:                                              ; preds = %77
  br label %103

103:                                              ; preds = %102, %56, %35
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %75
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @cmn_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dtrace_casptr(i64*, i32*, i64) #1

declare dso_local i32 @ml_nofault_copy(i32, i32, i32) #1

declare dso_local i32 @flush_dcache(i32, i32, i32) #1

declare dso_local i32 @invalidate_icache(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
