; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/zlib/extr_trees.c__tr_align.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/zlib/extr_trees.c__tr_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }

@STATIC_TREES = common dso_local global i32 0, align 4
@END_BLOCK = common dso_local global i32 0, align 4
@static_ltree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_tr_align(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = load i32, i32* @STATIC_TREES, align 4
  %5 = shl i32 %4, 1
  %6 = call i32 @send_bits(%struct.TYPE_6__* %3, i32 %5, i32 3)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = load i32, i32* @END_BLOCK, align 4
  %9 = load i32, i32* @static_ltree, align 4
  %10 = call i32 @send_code(%struct.TYPE_6__* %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i32 @bi_flush(%struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 1, %15
  %17 = add nsw i32 %16, 10
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  %22 = icmp slt i32 %21, 9
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = load i32, i32* @STATIC_TREES, align 4
  %26 = shl i32 %25, 1
  %27 = call i32 @send_bits(%struct.TYPE_6__* %24, i32 %26, i32 3)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = load i32, i32* @END_BLOCK, align 4
  %30 = load i32, i32* @static_ltree, align 4
  %31 = call i32 @send_code(%struct.TYPE_6__* %28, i32 %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = call i32 @bi_flush(%struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %23, %1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 7, i32* %36, align 8
  ret void
}

declare dso_local i32 @send_bits(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @send_code(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @bi_flush(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
