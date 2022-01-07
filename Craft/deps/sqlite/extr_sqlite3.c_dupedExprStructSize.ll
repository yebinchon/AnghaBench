; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_dupedExprStructSize.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_dupedExprStructSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@EXPRDUP_REDUCE = common dso_local global i32 0, align 4
@EXPR_FULLSIZE = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@EP_Reduced = common dso_local global i32 0, align 4
@EP_FromJoin = common dso_local global i32 0, align 4
@EP2_MallocedToken = common dso_local global i32 0, align 4
@EP2_Irreducible = common dso_local global i32 0, align 4
@EXPR_REDUCEDSIZE = common dso_local global i32 0, align 4
@EXPR_TOKENONLYSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @dupedExprStructSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dupedExprStructSize(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
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
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EXPRDUP_REDUCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @EXPR_FULLSIZE, align 4
  store i32 %21, i32* %5, align 4
  br label %79

22:                                               ; preds = %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = load i32, i32* @EP_TokenOnly, align 4
  %25 = load i32, i32* @EP_Reduced, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ExprHasAnyProperty(%struct.TYPE_7__* %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = load i32, i32* @EP_FromJoin, align 4
  %34 = call i32 @ExprHasProperty(%struct.TYPE_7__* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EP2_MallocedToken, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EP2_Irreducible, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %22
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64, %59, %22
  %71 = load i32, i32* @EXPR_REDUCEDSIZE, align 4
  %72 = load i32, i32* @EP_Reduced, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %5, align 4
  br label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @EXPR_TOKENONLYSIZE, align 4
  %76 = load i32, i32* @EP_TokenOnly, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExprHasAnyProperty(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ExprHasProperty(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
