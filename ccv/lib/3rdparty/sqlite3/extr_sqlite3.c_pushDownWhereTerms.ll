; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pushDownWhereTerms.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_pushDownWhereTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, %struct.TYPE_18__*, i8*, i8*, i32 }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i32, i32, i32, i64, %struct.TYPE_19__* }

@SF_Recursive = common dso_local global i32 0, align 4
@TK_AND = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@SF_Aggregate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32, i32)* @pushDownWhereTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushDownWhereTerms(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_20__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %16 = icmp eq %struct.TYPE_20__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %147

18:                                               ; preds = %5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SF_Recursive, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %147

26:                                               ; preds = %18
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %147

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %39, %32
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TK_AND, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @pushDownWhereTerms(%struct.TYPE_19__* %40, %struct.TYPE_18__* %41, %struct.TYPE_20__* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %51, align 8
  store %struct.TYPE_20__* %52, %struct.TYPE_20__** %9, align 8
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %58 = load i32, i32* @EP_FromJoin, align 4
  %59 = call i64 @ExprHasProperty(%struct.TYPE_20__* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %56
  store i32 0, i32* %6, align 4
  br label %147

68:                                               ; preds = %61, %53
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = load i32, i32* @EP_FromJoin, align 4
  %71 = call i64 @ExprHasProperty(%struct.TYPE_20__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %147

80:                                               ; preds = %73, %68
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @sqlite3ExprIsTableConstant(%struct.TYPE_20__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %145

85:                                               ; preds = %80
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %140, %85
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = icmp ne %struct.TYPE_18__* %89, null
  br i1 %90, label %91, label %144

91:                                               ; preds = %88
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = call %struct.TYPE_20__* @sqlite3ExprDup(i32 %94, %struct.TYPE_20__* %95, i32 0)
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %12, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %98 = call i32 @unsetJoinExpr(%struct.TYPE_20__* %97, i32 -1)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  store %struct.TYPE_19__* %99, %struct.TYPE_19__** %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i32 %108, i32* %109, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %111 = call %struct.TYPE_20__* @substExpr(%struct.TYPE_17__* %14, %struct.TYPE_20__* %110)
  store %struct.TYPE_20__* %111, %struct.TYPE_20__** %12, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SF_Aggregate, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %91
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %126 = call i8* @sqlite3ExprAnd(i32 %121, i8* %124, %struct.TYPE_20__* %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  br label %140

129:                                              ; preds = %91
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %137 = call i8* @sqlite3ExprAnd(i32 %132, i8* %135, %struct.TYPE_20__* %136)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %129, %118
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  store %struct.TYPE_18__* %143, %struct.TYPE_18__** %8, align 8
  br label %88

144:                                              ; preds = %88
  br label %145

145:                                              ; preds = %144, %80
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %79, %67, %31, %25, %17
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @sqlite3ExprIsTableConstant(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @sqlite3ExprDup(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @unsetJoinExpr(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @substExpr(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i8* @sqlite3ExprAnd(i32, i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
