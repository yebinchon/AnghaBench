; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_value.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_expr.c_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@voidtype = common dso_local global i64 0, align 8
@AND = common dso_local global i32 0, align 4
@OR = common dso_local global i32 0, align 4
@NOT = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@inttype = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @value(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = call %struct.TYPE_9__* @rightkid(%struct.TYPE_8__* %4)
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @generic(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @voidtype, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @AND, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @OR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @NOT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @EQ, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @NE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @LE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @LT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @GE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @GT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = load i32, i32* @inttype, align 4
  %53 = call i32 @consttree(i32 1, i32 %52)
  %54 = load i32, i32* @inttype, align 4
  %55 = call i32 @consttree(i32 0, i32 %54)
  %56 = call %struct.TYPE_8__* @condtree(%struct.TYPE_8__* %51, i32 %53, i32 %55)
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %2, align 8
  br label %57

57:                                               ; preds = %50, %46, %1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %58
}

declare dso_local i32 @generic(i32) #1

declare dso_local %struct.TYPE_9__* @rightkid(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @condtree(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @consttree(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
