; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_peripheral.c_PerInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_peripheral.c_PerInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 (...)* }

@PERCORE_DEFAULT = common dso_local global i32 0, align 4
@PERCoreList = common dso_local global %struct.TYPE_3__** null, align 8
@PERCore = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PERCORE_DEFAULT, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %34, %9
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @PERCoreList, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %11, i64 %13
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @PERCoreList, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @PERCoreList, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %28, i64 %30
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  store %struct.TYPE_3__* %32, %struct.TYPE_3__** @PERCore, align 8
  br label %37

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %10

37:                                               ; preds = %27, %10
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @PERCore, align 8
  %39 = icmp eq %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %2, align 4
  br label %49

41:                                               ; preds = %37
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @PERCore, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64 (...)*, i64 (...)** %43, align 8
  %45 = call i64 (...) %44()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %47, %40
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
