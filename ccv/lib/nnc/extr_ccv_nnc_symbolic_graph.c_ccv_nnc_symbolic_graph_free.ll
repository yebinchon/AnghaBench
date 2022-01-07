; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_symbolic_graph_free.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_symbolic_graph.c_ccv_nnc_symbolic_graph_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, %struct.TYPE_12__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_nnc_symbolic_graph_free(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %5
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @ccv_array_get(%struct.TYPE_13__* %16, i32 %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = call i32 @_ccv_nnc_graph_exec_symbol_free(i32* %19, i32 0)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %60, %24
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %25
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @ccv_array_get(%struct.TYPE_13__* %36, i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %33
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = call i32 @ccfree(%struct.TYPE_12__* %47)
  br label %49

49:                                               ; preds = %44, %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = call i32 @ccv_array_free(%struct.TYPE_13__* %57)
  br label %59

59:                                               ; preds = %54, %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %25

63:                                               ; preds = %25
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = icmp ne %struct.TYPE_13__* %66, null
  br i1 %67, label %68, label %93

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %70, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %69
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i64 @ccv_array_get(%struct.TYPE_13__* %80, i32 %81)
  %83 = inttoptr i64 %82 to %struct.TYPE_12__**
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  call void @ccv_nnc_symbolic_graph_free(%struct.TYPE_12__* %84)
  br label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 7
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = call i32 @ccv_array_free(%struct.TYPE_13__* %91)
  br label %93

93:                                               ; preds = %88, %63
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 6
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = call i32 @ccv_array_free(%struct.TYPE_13__* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = call i32 @ccv_array_free(%struct.TYPE_13__* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = icmp ne %struct.TYPE_12__* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = call i32 @ccfree(%struct.TYPE_12__* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %125, align 8
  %127 = call i32 @ccv_array_free(%struct.TYPE_13__* %126)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = call i32 @ccv_array_free(%struct.TYPE_13__* %130)
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = icmp ne %struct.TYPE_12__* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = call i32 @ccfree(%struct.TYPE_12__* %141)
  br label %143

143:                                              ; preds = %137, %123
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = icmp ne %struct.TYPE_12__* %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = call i32 @ccfree(%struct.TYPE_12__* %153)
  br label %155

155:                                              ; preds = %149, %143
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = icmp ne %struct.TYPE_12__* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = call i32 @ccfree(%struct.TYPE_12__* %165)
  br label %167

167:                                              ; preds = %161, %155
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %169 = call i32 @ccfree(%struct.TYPE_12__* %168)
  ret void
}

declare dso_local i32 @_ccv_nnc_graph_exec_symbol_free(i32*, i32) #1

declare dso_local i64 @ccv_array_get(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ccfree(%struct.TYPE_12__*) #1

declare dso_local i32 @ccv_array_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
