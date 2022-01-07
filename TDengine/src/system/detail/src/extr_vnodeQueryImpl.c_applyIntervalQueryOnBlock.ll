; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_applyIntervalQueryOnBlock.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_applyIntervalQueryOnBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_26__*, i8*, i32*, %struct.TYPE_27__*, i32, i32*, i32)* @applyIntervalQueryOnBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applyIntervalQueryOnBlock(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1, i8* %2, i32* %3, %struct.TYPE_27__* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  store %struct.TYPE_22__* %24, %struct.TYPE_22__** %17, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  store %struct.TYPE_23__* %27, %struct.TYPE_23__** %18, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %19, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @getNextAccessedKeyInData(%struct.TYPE_23__* %31, i32* %32, %struct.TYPE_27__* %33, i32 %34)
  store i32 %35, i32* %20, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %40 = load i32, i32* %20, align 4
  %41 = call i32 @setIntervalQueryRange(%struct.TYPE_25__* %38, %struct.TYPE_24__* %39, i32 %40)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %51 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_23__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %49, %8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %63 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_23__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %49
  br label %138

66:                                               ; preds = %61, %53
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %76 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_23__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %78
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %88 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_23__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %129, label %90

90:                                               ; preds = %86, %74
  store i32 0, i32* %21, align 4
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @applyFunctionsOnBlock(%struct.TYPE_22__* %91, %struct.TYPE_27__* %92, i32* %93, i8* %94, i32* %95, i32 %96, i32* %21)
  store i32 %97, i32* %22, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp sle i32 %98, 1
  br i1 %99, label %100, label %106

100:                                              ; preds = %90
  %101 = load i32, i32* %21, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %22, align 4
  %105 = icmp sgt i32 %104, 0
  br label %106

106:                                              ; preds = %103, %100, %90
  %107 = phi i1 [ false, %100 ], [ false, %90 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* %21, align 4
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %125

118:                                              ; preds = %106
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  br label %125

125:                                              ; preds = %118, %114
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %128 = call i32 @saveIntervalQueryRange(%struct.TYPE_22__* %126, %struct.TYPE_25__* %127)
  br label %138

129:                                              ; preds = %86, %78
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @doApplyIntervalQueryOnBlock(%struct.TYPE_24__* %130, %struct.TYPE_25__* %131, %struct.TYPE_27__* %132, i32* %133, i8* %134, i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %65, %129, %125
  ret void
}

declare dso_local i32 @getNextAccessedKeyInData(%struct.TYPE_23__*, i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @setIntervalQueryRange(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_23__*) #1

declare dso_local i32 @applyFunctionsOnBlock(%struct.TYPE_22__*, %struct.TYPE_27__*, i32*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @saveIntervalQueryRange(%struct.TYPE_22__*, %struct.TYPE_25__*) #1

declare dso_local i32 @doApplyIntervalQueryOnBlock(%struct.TYPE_24__*, %struct.TYPE_25__*, %struct.TYPE_27__*, i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
