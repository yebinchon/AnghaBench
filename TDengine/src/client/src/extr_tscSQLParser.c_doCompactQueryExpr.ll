; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doCompactQueryExpr.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_doCompactQueryExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@TK_OR = common dso_local global i64 0, align 8
@TK_AND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__**)* @doCompactQueryExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doCompactQueryExpr(%struct.TYPE_5__** %0) #0 {
  %2 = alloca %struct.TYPE_5__**, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %2, align 8
  %5 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i64 @isExprDirectParentOfLeaftNode(%struct.TYPE_5__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %111

14:                                               ; preds = %8
  %15 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  call void @doCompactQueryExpr(%struct.TYPE_5__** %23)
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp ne %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  call void @doCompactQueryExpr(%struct.TYPE_5__** %33)
  br label %34

34:                                               ; preds = %30, %24
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp eq %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TK_OR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TK_AND, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53, %46
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @tSQLExprNodeDestroy(%struct.TYPE_5__* %62)
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %64, align 8
  br label %111

65:                                               ; preds = %53, %40, %34
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp eq %struct.TYPE_5__* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = icmp ne %struct.TYPE_5__* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %3, align 8
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @tSQLExprNodeDestroy(%struct.TYPE_5__* %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %86, align 8
  br label %110

87:                                               ; preds = %71, %65
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = icmp eq %struct.TYPE_5__* %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = icmp ne %struct.TYPE_5__* %97, null
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %4, align 8
  %104 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = call i32 @tSQLExprNodeDestroy(%struct.TYPE_5__* %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %2, align 8
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %108, align 8
  br label %109

109:                                              ; preds = %99, %93, %87
  br label %110

110:                                              ; preds = %109, %77
  br label %111

111:                                              ; preds = %13, %110, %60
  ret void
}

declare dso_local i64 @isExprDirectParentOfLeaftNode(%struct.TYPE_5__*) #1

declare dso_local i32 @tSQLExprNodeDestroy(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
