; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_OverwritePolicy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Account.c_OverwritePolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@NUM_POLICY_ITEM_FOR_VER2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OverwritePolicy(%struct.TYPE_9__** %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %5 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %6 = icmp eq %struct.TYPE_9__** %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %58

8:                                                ; preds = %2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = icmp eq %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = icmp ne %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i32 @Free(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %19, align 8
  br label %20

20:                                               ; preds = %15, %11
  br label %58

21:                                               ; preds = %8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = icmp ne %struct.TYPE_9__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call i32 @Free(%struct.TYPE_9__* %32)
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %34, align 8
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = call %struct.TYPE_9__* @ClonePolicy(%struct.TYPE_9__* %36)
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %38, align 8
  br label %57

39:                                               ; preds = %21
  %40 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp eq %struct.TYPE_9__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call %struct.TYPE_9__* @ClonePolicy(%struct.TYPE_9__* %44)
  %46 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %46, align 8
  br label %56

47:                                               ; preds = %39
  %48 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = load i32, i32* @NUM_POLICY_ITEM_FOR_VER2, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @Copy(%struct.TYPE_9__* %49, %struct.TYPE_9__* %50, i32 %54)
  br label %56

56:                                               ; preds = %47, %43
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %7, %57, %20
  ret void
}

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @ClonePolicy(%struct.TYPE_9__*) #1

declare dso_local i32 @Copy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
