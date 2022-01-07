; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_CalcL2TPMss.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_CalcL2TPMss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.TYPE_5__ = type { i32 }

@MTU_FOR_PPPOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcL2TPMss(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %3
  store i32 0, i32* %4, align 4
  br label %69

18:                                               ; preds = %14
  %19 = load i32, i32* @MTU_FOR_PPPOE, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 40
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 20
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 20, %41
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %57

45:                                               ; preds = %18
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i64 @IsIP6(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, 40
  store i32 %52, i32* %8, align 4
  br label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 20
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 8
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 8
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 20
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 20
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %57, %17
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @IsIP6(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
