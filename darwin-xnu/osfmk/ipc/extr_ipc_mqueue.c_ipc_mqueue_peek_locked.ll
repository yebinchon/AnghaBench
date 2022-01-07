; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_peek_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_peek_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@IKM_NULL = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_mqueue_peek_locked(%struct.TYPE_12__* %0, i64* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_13__** %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_13__** %5, %struct.TYPE_13__*** %12, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = call i32 @imq_is_set(%struct.TYPE_12__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i64 0, i64* %15, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i64, i64* %15, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %60

36:                                               ; preds = %29
  %37 = load i64, i64* %15, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load i64, i64* %15, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = icmp slt i64 %43, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load i64, i64* %15, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %53, %56
  store i64 %57, i64* %16, align 8
  br label %59

58:                                               ; preds = %42, %36
  br label %135

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  store i32* %62, i32** %13, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = call %struct.TYPE_13__* @ipc_kmsg_queue_first(i32* %63)
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %14, align 8
  br label %65

65:                                               ; preds = %75, %60
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, -1
  store i64 %67, i64* %16, align 8
  %68 = icmp ne i64 %66, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IKM_NULL, align 8
  %72 = icmp ne %struct.TYPE_13__* %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %79

75:                                               ; preds = %73
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %78 = call %struct.TYPE_13__* @ipc_kmsg_queue_next(i32* %76, %struct.TYPE_13__* %77)
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %14, align 8
  br label %65

79:                                               ; preds = %73
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** @IKM_NULL, align 8
  %82 = icmp eq %struct.TYPE_13__* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %135

84:                                               ; preds = %79
  %85 = load i64*, i64** %8, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %15, align 8
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %90
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %100
  %111 = load i32*, i32** %11, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load i32*, i32** %11, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = ptrtoint %struct.TYPE_11__* %117 to i64
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @round_msg(i32 %123)
  %125 = add nsw i64 %118, %124
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @memcpy(i32* %114, i32* %126, i32 4)
  br label %128

128:                                              ; preds = %113, %110
  %129 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  %130 = icmp ne %struct.TYPE_13__** %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %133 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %12, align 8
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %133, align 8
  br label %134

134:                                              ; preds = %131, %128
  store i32 1, i32* %17, align 4
  br label %135

135:                                              ; preds = %134, %83, %58
  %136 = load i32, i32* %17, align 4
  ret i32 %136
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_is_set(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @ipc_kmsg_queue_first(i32*) #1

declare dso_local %struct.TYPE_13__* @ipc_kmsg_queue_next(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @round_msg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
