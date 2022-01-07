; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_send_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_send_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 (i32, %struct.TYPE_17__*, i32*)* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_17__, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i32, i32 }

@NSTAT_MSG_TYPE_SRC_COUNTS = common dso_local global i32 0, align 4
@NSTAT_FILTER_NOZEROBYTES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@nstat_stats = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, %struct.TYPE_14__*, i64, i32, i32*)* @nstat_control_send_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nstat_control_send_counts(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64 (i32, %struct.TYPE_17__*, i32*)*, i64 (i32, %struct.TYPE_17__*, i32*)** %17, align 8
  %19 = icmp eq i64 (i32, %struct.TYPE_17__*, i32*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %88

21:                                               ; preds = %5
  %22 = call i32 @bzero(%struct.TYPE_15__* %12, i32 56)
  %23 = load i32, i32* @NSTAT_MSG_TYPE_SRC_COUNTS, align 4
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i32 56, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64 (i32, %struct.TYPE_17__*, i32*)*, i64 (i32, %struct.TYPE_17__*, i32*)** %42, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %48 = load i32*, i32** %11, align 8
  %49 = call i64 %43(i32 %46, %struct.TYPE_17__* %47, i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %21
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NSTAT_FILTER_NOZEROBYTES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @EAGAIN, align 8
  store i64 %69, i64* %13, align 8
  br label %85

70:                                               ; preds = %63, %58, %51
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CTL_DATA_EOR, align 4
  %78 = call i64 @ctl_enqueuedata(i32 %73, i32 %76, %struct.TYPE_15__* %12, i32 56, i32 %77)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @nstat_stats, i32 0, i32 0), align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @nstat_stats, i32 0, i32 0), align 4
  br label %84

84:                                               ; preds = %81, %70
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %21
  %87 = load i64, i64* %13, align 8
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %86, %20
  %89 = load i64, i64* %6, align 8
  ret i64 %89
}

declare dso_local i32 @bzero(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ctl_enqueuedata(i32, i32, %struct.TYPE_15__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
