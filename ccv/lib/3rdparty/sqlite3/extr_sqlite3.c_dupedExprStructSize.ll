; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_dupedExprStructSize.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_dupedExprStructSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@EXPRDUP_REDUCE = common dso_local global i32 0, align 4
@EXPR_FULLSIZE = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@TK_SELECT_COLUMN = common dso_local global i64 0, align 8
@EP_FromJoin = common dso_local global i32 0, align 4
@EP_MemToken = common dso_local global i32 0, align 4
@EP_NoReduce = common dso_local global i32 0, align 4
@EXPR_REDUCEDSIZE = common dso_local global i32 0, align 4
@EXPR_TOKENONLYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @dupedExprStructSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dupedExprStructSize(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @EXPR_FULLSIZE, align 4
  %17 = icmp sle i32 %16, 4095
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @EP_Reduced, align 4
  %21 = load i32, i32* @EP_TokenOnly, align 4
  %22 = or i32 %20, %21
  %23 = and i32 4095, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 0, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %12
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TK_SELECT_COLUMN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %12
  %36 = load i32, i32* @EXPR_FULLSIZE, align 4
  store i32 %36, i32* %5, align 4
  br label %93

37:                                               ; preds = %29
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = load i32, i32* @EP_TokenOnly, align 4
  %40 = load i32, i32* @EP_Reduced, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @ExprHasProperty(%struct.TYPE_6__* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = load i32, i32* @EP_FromJoin, align 4
  %49 = call i32 @ExprHasProperty(%struct.TYPE_6__* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i32, i32* @EP_MemToken, align 4
  %56 = call i32 @ExprHasProperty(%struct.TYPE_6__* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = load i32, i32* @EP_NoReduce, align 4
  %63 = call i32 @ExprHasProperty(%struct.TYPE_6__* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %37
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %37
  %79 = load i32, i32* @EXPR_REDUCEDSIZE, align 4
  %80 = load i32, i32* @EP_Reduced, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %5, align 4
  br label %92

82:                                               ; preds = %72
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @EXPR_TOKENONLYSIZE, align 4
  %90 = load i32, i32* @EP_TokenOnly, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %82, %78
  br label %93

93:                                               ; preds = %92, %35
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
