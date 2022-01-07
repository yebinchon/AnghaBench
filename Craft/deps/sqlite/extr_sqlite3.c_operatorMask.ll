; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_operatorMask.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_operatorMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TK_IN = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@TK_ISNULL = common dso_local global i32 0, align 4
@WO_ISNULL = common dso_local global i32 0, align 4
@WO_EQ = common dso_local global i32 0, align 4
@TK_EQ = common dso_local global i32 0, align 4
@TK_LT = common dso_local global i32 0, align 4
@WO_LT = common dso_local global i32 0, align 4
@TK_LE = common dso_local global i32 0, align 4
@WO_LE = common dso_local global i32 0, align 4
@TK_GT = common dso_local global i32 0, align 4
@WO_GT = common dso_local global i32 0, align 4
@TK_GE = common dso_local global i32 0, align 4
@WO_GE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @operatorMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operatorMask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @allowedOp(i32 %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @TK_IN, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @WO_IN, align 4
  store i32 %11, i32* %3, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @TK_ISNULL, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @WO_ISNULL, align 4
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %12
  %19 = load i32, i32* @WO_EQ, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @TK_EQ, align 4
  %22 = sub nsw i32 %20, %21
  %23 = shl i32 %19, %22
  %24 = icmp slt i32 %23, 32767
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* @WO_EQ, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @TK_EQ, align 4
  %30 = sub nsw i32 %28, %29
  %31 = shl i32 %27, %30
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %18, %16
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @TK_ISNULL, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @WO_ISNULL, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %37, %33
  %42 = phi i1 [ true, %33 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TK_IN, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @WO_IN, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %48, %41
  %53 = phi i1 [ true, %41 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i32, i32* @TK_EQ, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @WO_EQ, align 4
  %62 = icmp eq i32 %60, %61
  br label %63

63:                                               ; preds = %59, %52
  %64 = phi i1 [ true, %52 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @TK_LT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @WO_LT, align 4
  %73 = icmp eq i32 %71, %72
  br label %74

74:                                               ; preds = %70, %63
  %75 = phi i1 [ true, %63 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @TK_LE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @WO_LE, align 4
  %84 = icmp eq i32 %82, %83
  br label %85

85:                                               ; preds = %81, %74
  %86 = phi i1 [ true, %74 ], [ %84, %81 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @TK_GT, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @WO_GT, align 4
  %95 = icmp eq i32 %93, %94
  br label %96

96:                                               ; preds = %92, %85
  %97 = phi i1 [ true, %85 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @TK_GE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @WO_GE, align 4
  %106 = icmp eq i32 %104, %105
  br label %107

107:                                              ; preds = %103, %96
  %108 = phi i1 [ true, %96 ], [ %106, %103 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @allowedOp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
