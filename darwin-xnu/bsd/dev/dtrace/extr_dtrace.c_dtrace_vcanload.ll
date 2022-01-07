; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_vcanload.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_vcanload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64* }

@DIF_TF_BYREF = common dso_local global i32 0, align 4
@DIF_TYPE_STRING = common dso_local global i64 0, align 8
@DTRACEOPT_STRSIZE = common dso_local global i64 0, align 8
@dtrace_strsize_default = common dso_local global i64 0, align 8
@DTRACE_ACCESS_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_15__*, i64*, %struct.TYPE_14__*, %struct.TYPE_12__*)* @dtrace_vcanload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_vcanload(i8* %0, %struct.TYPE_15__* %1, i64* %2, %struct.TYPE_14__* %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DIF_TF_BYREF, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DIF_TYPE_STRING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %5
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %13, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %30 = icmp ne %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @DTRACEOPT_STRSIZE, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  br label %40

38:                                               ; preds = %25
  %39 = load i64, i64* @dtrace_strsize_default, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %38, %31
  br label %45

41:                                               ; preds = %5
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DTRACE_ACCESS_KERNEL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i64*, i64** %9, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @DTRACE_RANGE_REMAIN(i64* %53, i64 %55, i8* %56, i64 %57)
  store i32 1, i32* %6, align 4
  br label %81

59:                                               ; preds = %45
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DIF_TYPE_STRING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = load i64, i64* %12, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %72 = call i32 @dtrace_strcanload(i64 %67, i64 %68, i64* %69, %struct.TYPE_14__* %70, %struct.TYPE_12__* %71)
  store i32 %72, i32* %6, align 4
  br label %81

73:                                               ; preds = %59
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = call i32 @dtrace_canload_remains(i64 %75, i64 %76, i64* %77, %struct.TYPE_14__* %78, %struct.TYPE_12__* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %73, %65, %52
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DTRACE_RANGE_REMAIN(i64*, i64, i8*, i64) #1

declare dso_local i32 @dtrace_strcanload(i64, i64, i64*, %struct.TYPE_14__*, %struct.TYPE_12__*) #1

declare dso_local i32 @dtrace_canload_remains(i64, i64, i64*, %struct.TYPE_14__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
