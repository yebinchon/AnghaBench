; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resolveAlias.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_resolveAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i64, i64, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }

@EP_Resolved = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_AS = common dso_local global i32 0, align 4
@TK_COLLATE = common dso_local global i64 0, align 8
@EP_Static = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP2_MallocedToken = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_27__*, i32, %struct.TYPE_28__*, i8*, i32)* @resolveAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolveAlias(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i32 %2, %struct.TYPE_28__* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %6
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br label %24

24:                                               ; preds = %18, %6
  %25 = phi i1 [ false, %6 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %34, align 8
  store %struct.TYPE_28__* %35, %struct.TYPE_28__** %13, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %37 = icmp ne %struct.TYPE_28__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @EP_Resolved, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %51 = call %struct.TYPE_28__* @sqlite3ExprDup(i32* %49, %struct.TYPE_28__* %50, i32 0)
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %14, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %53 = icmp eq %struct.TYPE_28__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %24
  br label %174

55:                                               ; preds = %24
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TK_COLUMN, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %111

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 71
  br i1 %66, label %67, label %111

67:                                               ; preds = %61
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @incrAggFunctionDepth(%struct.TYPE_28__* %68, i32 %69)
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %72 = load i32, i32* @TK_AS, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %74 = call %struct.TYPE_28__* @sqlite3PExpr(%struct.TYPE_26__* %71, i32 %72, %struct.TYPE_28__* %73, i32 0, i32 0)
  store %struct.TYPE_28__* %74, %struct.TYPE_28__** %14, align 8
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %76 = icmp eq %struct.TYPE_28__* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %174

78:                                               ; preds = %67
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %78
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  store i64 %92, i64* %99, align 8
  br label %100

100:                                              ; preds = %88, %78
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %100, %61, %55
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TK_COLLATE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.TYPE_28__* @sqlite3ExprAddCollateString(%struct.TYPE_26__* %118, %struct.TYPE_28__* %119, i32 %123)
  store %struct.TYPE_28__* %124, %struct.TYPE_28__** %14, align 8
  br label %125

125:                                              ; preds = %117, %111
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %127 = load i32, i32* @EP_Static, align 4
  %128 = call i32 @ExprSetProperty(%struct.TYPE_28__* %126, i32 %127)
  %129 = load i32*, i32** %15, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %131 = call i32 @sqlite3ExprDelete(i32* %129, %struct.TYPE_28__* %130)
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %134 = call i32 @memcpy(%struct.TYPE_28__* %132, %struct.TYPE_28__* %133, i32 32)
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %136 = load i32, i32* @EP_IntValue, align 4
  %137 = call i32 @ExprHasProperty(%struct.TYPE_28__* %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %170, label %139

139:                                              ; preds = %125
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %170

145:                                              ; preds = %139
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @EP_Reduced, align 4
  %150 = load i32, i32* @EP_TokenOnly, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp eq i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i32*, i32** %15, align 8
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @sqlite3DbStrDup(i32* %156, i32 %160)
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @EP2_MallocedToken, align 4
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %145, %139, %125
  %171 = load i32*, i32** %15, align 8
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %173 = call i32 @sqlite3DbFree(i32* %171, %struct.TYPE_28__* %172)
  br label %174

174:                                              ; preds = %170, %77, %54
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3ExprDup(i32*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @incrAggFunctionDepth(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3PExpr(%struct.TYPE_26__*, i32, %struct.TYPE_28__*, i32, i32) #1

declare dso_local %struct.TYPE_28__* @sqlite3ExprAddCollateString(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ExprSetProperty(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3ExprDelete(i32*, %struct.TYPE_28__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3DbStrDup(i32*, i32) #1

declare dso_local i32 @sqlite3DbFree(i32*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
