; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_index.c_vc_container_index_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_index.c_vc_container_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@VC_CONTAINER_ERROR_FAILED = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_container_index_get(%struct.TYPE_6__* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %5
  %25 = load i32, i32* @VC_CONTAINER_ERROR_FAILED, align 4
  store i32 %25, i32* %6, align 4
  br label %151

26:                                               ; preds = %19
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load i64*, i64** %9, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  %37 = zext i1 %36 to i32
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %73, %26
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %13, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %74

44:                                               ; preds = %39
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %45, %46
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @ENTRY(%struct.TYPE_6__* %52, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %16, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %14, align 4
  br label %73

64:                                               ; preds = %44
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %16, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %13, align 4
  br label %72

71:                                               ; preds = %64
  br label %74

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %62
  br label %39

74:                                               ; preds = %71, %39
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i64 @ENTRY(%struct.TYPE_6__* %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %76, %85
  br i1 %86, label %87, label %127

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load i64*, i64** %9, align 8
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @ENTRY(%struct.TYPE_6__* %96, i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %92, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %12, align 4
  br label %107

105:                                              ; preds = %90
  %106 = load i32, i32* %14, align 4
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %105, %103
  br label %126

108:                                              ; preds = %87
  %109 = load i64*, i64** %9, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i64 @ENTRY(%struct.TYPE_6__* %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %110, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %12, align 4
  br label %125

123:                                              ; preds = %108
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %123, %121
  br label %126

126:                                              ; preds = %125, %107
  br label %127

127:                                              ; preds = %126, %74
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @ENTRY(%struct.TYPE_6__* %128, i32 %129)
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %15, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %9, align 8
  store i64 %139, i64* %140, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %10, align 8
  store i64 %148, i64* %149, align 8
  %150 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %127, %24
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @ENTRY(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
