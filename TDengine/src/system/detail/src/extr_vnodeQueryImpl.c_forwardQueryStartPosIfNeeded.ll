; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_forwardQueryStartPosIfNeeded.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_forwardQueryStartPosIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }

@TSDB_INTERPO_NONE = common dso_local global i64 0, align 8
@QUERY_COMPLETED = common dso_local global i32 0, align 4
@QUERY_NO_DATA_TO_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32)* @forwardQueryStartPosIfNeeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @forwardQueryStartPosIfNeeded(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %10, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  store i32 1, i32* %5, align 4
  br label %151

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %150

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %32 = call i32 @isTopBottomQuery(%struct.TYPE_13__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %150, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TSDB_INTERPO_NONE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %150

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %129

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %127
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_13__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  br label %64

57:                                               ; preds = %46
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %74 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_13__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %72, %64
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %76
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = call i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_13__* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %84, %72
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %90 = load i32, i32* @QUERY_COMPLETED, align 4
  %91 = call i32 @setQueryStatus(%struct.TYPE_13__* %89, i32 %90)
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = call i32 @sem_post(i32* %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  store i32 0, i32* %5, align 4
  br label %151

97:                                               ; preds = %84, %76
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  store i64 %100, i64* %102, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 5
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %111 = call i32 @normalizedFirstQueryRange(i32 %108, i32 %109, %struct.TYPE_15__* %110, i32* null)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %97
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = call i32 @sem_post(i32* %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  store i32 0, i32* %5, align 4
  br label %151

119:                                              ; preds = %97
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 7
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %122, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %128

127:                                              ; preds = %119
  br label %46

128:                                              ; preds = %126
  br label %149

129:                                              ; preds = %40
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = call i32 @forwardQueryStartPosition(%struct.TYPE_16__* %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @QUERY_NO_DATA_TO_CHECK, align 4
  %137 = call i64 @Q_STATUS_EQUAL(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %129
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = load i32, i32* @QUERY_COMPLETED, align 4
  %142 = call i32 @setQueryStatus(%struct.TYPE_13__* %140, i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = call i32 @sem_post(i32* %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  store i32 0, i32* %5, align 4
  br label %151

148:                                              ; preds = %129
  br label %149

149:                                              ; preds = %148, %128
  br label %150

150:                                              ; preds = %149, %34, %30, %24
  store i32 1, i32* %5, align 4
  br label %151

151:                                              ; preds = %150, %139, %113, %88, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @isTopBottomQuery(%struct.TYPE_13__*) #1

declare dso_local i64 @QUERY_IS_ASC_QUERY(%struct.TYPE_13__*) #1

declare dso_local i32 @setQueryStatus(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @normalizedFirstQueryRange(i32, i32, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @forwardQueryStartPosition(%struct.TYPE_16__*) #1

declare dso_local i64 @Q_STATUS_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
