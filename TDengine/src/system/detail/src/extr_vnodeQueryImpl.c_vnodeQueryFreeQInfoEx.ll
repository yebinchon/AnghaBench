; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeQueryFreeQInfoEx.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeQueryImpl.c_vnodeQueryFreeQInfoEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_12__*, i32, i32, i32, i32*, i32*, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"QInfo:%p disk-based output buffer during query:%lld bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeQueryFreeQInfoEx(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = icmp eq %struct.TYPE_10__* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %177

16:                                               ; preds = %10
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %3, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 12
  %24 = call i32 @teardownQueryRuntimeEnv(i32* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 11
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = call i32 @tfree(%struct.TYPE_11__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 10
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %16
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 10
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @taosCleanUpIntHash(i32* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 10
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %16
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = icmp ne %struct.TYPE_12__* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @isGroupbyNormalCol(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %45, %40
  store i64 0, i64* %5, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @isGroupbyNormalCol(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i64 10000, i64* %5, align 8
  br label %72

60:                                               ; preds = %52
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 5
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71, %59
  store i64 0, i64* %6, align 8
  br label %73

73:                                               ; preds = %88, %72
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @destroyGroupResultBuf(%struct.TYPE_11__* %82, i32 %86)
  br label %88

88:                                               ; preds = %77
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %73

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91, %45
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @VALIDFD(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 9
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dTrace(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %105, i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 9
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @munmap(i32* %112, i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @tclose(i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @unlink(i32 %123)
  br label %125

125:                                              ; preds = %98, %92
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  %128 = call i32 @tSidSetDestroy(%struct.TYPE_12__** %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = icmp ne %struct.TYPE_11__* %131, null
  br i1 %132, label %133, label %164

133:                                              ; preds = %125
  store i64 0, i64* %7, align 8
  br label %134

134:                                              ; preds = %160, %133
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ult i64 %135, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %134
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @destroyMeterQueryInfo(i32 %147, i32 %150)
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = load i64, i64* %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @free(i32 %158)
  br label %160

160:                                              ; preds = %140
  %161 = load i64, i64* %7, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %7, align 8
  br label %134

163:                                              ; preds = %134
  br label %164

164:                                              ; preds = %163, %125
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = call i32 @tfree(%struct.TYPE_11__* %167)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %170, align 8
  %172 = call i32 @tfree(%struct.TYPE_11__* %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = call i32 @tfree(%struct.TYPE_11__* %175)
  br label %177

177:                                              ; preds = %164, %15
  ret void
}

declare dso_local i32 @teardownQueryRuntimeEnv(i32*) #1

declare dso_local i32 @tfree(%struct.TYPE_11__*) #1

declare dso_local i32 @taosCleanUpIntHash(i32*) #1

declare dso_local i64 @isGroupbyNormalCol(i32) #1

declare dso_local i32 @destroyGroupResultBuf(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @VALIDFD(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dTrace(i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @munmap(i32*, i32) #1

declare dso_local i32 @tclose(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @tSidSetDestroy(%struct.TYPE_12__**) #1

declare dso_local i32 @destroyMeterQueryInfo(i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
