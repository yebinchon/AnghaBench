; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_exprNodeIsConstant.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_exprNodeIsConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@EP_FromJoin = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@EP_ConstFunc = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@WRC_Prune = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i32 0, align 4
@TK_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @exprNodeIsConstant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprNodeIsConstant(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load i32, i32* @EP_FromJoin, align 4
  %13 = call i64 @ExprHasProperty(%struct.TYPE_10__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @WRC_Abort, align 4
  store i32 %18, i32* %3, align 4
  br label %133

19:                                               ; preds = %10, %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %117 [
    i32 131, label %23
    i32 130, label %39
    i32 132, label %46
    i32 133, label %46
    i32 134, label %46
    i32 129, label %87
    i32 128, label %97
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @EP_ConstFunc, align 4
  %31 = call i64 @ExprHasProperty(%struct.TYPE_10__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @WRC_Continue, align 4
  store i32 %34, i32* %3, align 4
  br label %133

35:                                               ; preds = %28
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @WRC_Abort, align 4
  store i32 %38, i32* %3, align 4
  br label %133

39:                                               ; preds = %19
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @sqlite3ExprIdToTrueFalse(%struct.TYPE_10__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @WRC_Prune, align 4
  store i32 %44, i32* %3, align 4
  br label %133

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %19, %19, %19, %45
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 130
  %51 = zext i1 %50 to i32
  %52 = call i32 @testcase(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 132
  %57 = zext i1 %56 to i32
  %58 = call i32 @testcase(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 133
  %63 = zext i1 %62 to i32
  %64 = call i32 @testcase(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 134
  %69 = zext i1 %68 to i32
  %70 = call i32 @testcase(i32 %69)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %86

75:                                               ; preds = %46
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @WRC_Continue, align 4
  store i32 %85, i32* %3, align 4
  br label %133

86:                                               ; preds = %75, %46
  br label %87

87:                                               ; preds = %19, %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 129
  %92 = zext i1 %91 to i32
  %93 = call i32 @testcase(i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* @WRC_Abort, align 4
  store i32 %96, i32* %3, align 4
  br label %133

97:                                               ; preds = %19
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 5
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* @TK_NULL, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %116

106:                                              ; preds = %97
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* @WRC_Abort, align 4
  store i32 %114, i32* %3, align 4
  br label %133

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %102
  br label %117

117:                                              ; preds = %19, %116
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TK_SELECT, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @testcase(i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @TK_EXISTS, align 4
  %129 = icmp eq i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @testcase(i32 %130)
  %132 = load i32, i32* @WRC_Continue, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %117, %111, %87, %84, %43, %35, %33, %15
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @sqlite3ExprIdToTrueFalse(%struct.TYPE_10__*) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
