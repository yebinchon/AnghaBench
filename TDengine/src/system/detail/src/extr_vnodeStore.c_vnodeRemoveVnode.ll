; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeRemoveVnode.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_vnodeStore.c_vnodeRemoveVnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@vnodeList = common dso_local global %struct.TYPE_4__* null, align 8
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"vid:%d, max sessions:%d, this vnode already dropped!!!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnodeRemoveVnode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnodeList, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %8, i32* %2, align 4
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnodeList, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @vnodeCloseVnode(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @vnodeRemoveDataFiles(i32 %27)
  br label %46

29:                                               ; preds = %9
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnodeList, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dTrace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vnodeList, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @vnodeCalcOpenVnodes()
  br label %46

46:                                               ; preds = %29, %26
  %47 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %24, %7
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @vnodeCloseVnode(i32) #1

declare dso_local i32 @vnodeRemoveDataFiles(i32) #1

declare dso_local i32 @dTrace(i8*, i32, i64) #1

declare dso_local i32 @vnodeCalcOpenVnodes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
