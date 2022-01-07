; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c__ccv_cnnp_functional_model_deinit.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_core.c__ccv_cnnp_functional_model_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @_ccv_cnnp_functional_model_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_functional_model_deinit(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = bitcast %struct.TYPE_8__* %9 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %66, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 %22
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %17
  br label %66

30:                                               ; preds = %17
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = bitcast %struct.TYPE_8__* %31 to %struct.TYPE_9__*
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %35, i64 %38
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i32 @assert(%struct.TYPE_11__* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %62, %30
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %45, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @ccv_array_get(%struct.TYPE_11__* %55, i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_9__**
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %8, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %61, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %44

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %29
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %11

69:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %84, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %77, i64 %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = bitcast %struct.TYPE_9__* %81 to %struct.TYPE_8__*
  %83 = call i32 @ccv_cnnp_model_free(%struct.TYPE_8__* %82)
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %70

87:                                               ; preds = %70
  ret void
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ccv_cnnp_model_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
