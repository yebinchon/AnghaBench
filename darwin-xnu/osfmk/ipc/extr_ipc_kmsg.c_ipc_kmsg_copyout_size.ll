; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_size.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_kmsg.c_ipc_kmsg_copyout_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@VM_MAX_ADDRESS = common dso_local global i64 0, align 8
@LEGACY_HEADER_SIZE_DELTA = common dso_local global i64 0, align 8
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4
@DESC_SIZE_ADJUSTMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_kmsg_copyout_size(%struct.TYPE_14__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VM_MAX_ADDRESS, align 8
  %19 = icmp sgt i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* @LEGACY_HEADER_SIZE_DELTA, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %2
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 1
  %39 = bitcast %struct.TYPE_10__* %38 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %7, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 1
  %42 = bitcast %struct.TYPE_13__* %41 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %8, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i64 %47
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %9, align 8
  br label %49

49:                                               ; preds = %72, %34
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = icmp ult %struct.TYPE_12__* %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %70 [
    i32 131, label %58
    i32 129, label %58
    i32 130, label %58
    i32 128, label %66
  ]

58:                                               ; preds = %53, %53, %53
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @DESC_SIZE_ADJUSTMENT, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %58
  br label %71

66:                                               ; preds = %53
  %67 = load i32, i32* @DESC_SIZE_ADJUSTMENT, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %66, %65
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 1
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %8, align 8
  br label %49

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %2
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
