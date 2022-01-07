; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_stmt_block.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_stmt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resolve_stmt_block(i64 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = bitcast %struct.TYPE_3__* %5 to { i64, i32* }*
  %12 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %11, i32 0, i32 0
  store i64 %0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %11, i32 0, i32 1
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %14 = call i32* (...) @sym_enter()
  store i32* %14, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %36, %4
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @resolve_stmt(i32 %25, i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi i1 [ true, %20 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @sym_leave(i32* %40)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32* @sym_enter(...) #1

declare dso_local i64 @resolve_stmt(i32, i32*, i32) #1

declare dso_local i32 @sym_leave(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
