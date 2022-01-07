; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec_htab.c_sh2rec_htab_block_remove.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec_htab.c_sh2rec_htab_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@table = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh2rec_htab_block_remove(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @hash_addr(i64 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @table, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %9, i64 %11
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %14

14:                                               ; preds = %43, %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  br label %40

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 %38
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %39, align 8
  br label %40

40:                                               ; preds = %34, %30
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = call i32 @sh2rec_mem_free(%struct.TYPE_6__* %41)
  br label %46

43:                                               ; preds = %17
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %4, align 8
  br label %14

46:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @hash_addr(i64) #1

declare dso_local i32 @sh2rec_mem_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
