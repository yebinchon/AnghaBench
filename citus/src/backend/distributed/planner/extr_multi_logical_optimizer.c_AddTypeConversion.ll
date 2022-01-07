; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_AddTypeConversion.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/planner/extr_multi_logical_optimizer.c_AddTypeConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COERCION_EXPLICIT = common dso_local global i32 0, align 4
@COERCE_EXPLICIT_CAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @AddTypeConversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AddTypeConversion(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @exprType(i32* %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @exprType(i32* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @exprTypmod(i32* %14)
  store i32 %15, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %33

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @COERCION_EXPLICIT, align 4
  %26 = load i32, i32* @COERCE_EXPLICIT_CAST, align 4
  %27 = call i32* @coerce_to_target_type(i32* null, i32* %21, i64 %22, i64 %23, i32 %24, i32 %25, i32 %26, i32 -1)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32*, i32** %9, align 8
  store i32* %32, i32** %3, align 8
  br label %33

33:                                               ; preds = %20, %19
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i64 @exprType(i32*) #1

declare dso_local i32 @exprTypmod(i32*) #1

declare dso_local i32* @coerce_to_target_type(i32*, i32*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
