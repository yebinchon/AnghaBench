; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_color_tree_get.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_color_tree_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8, i8, i8, i8)* @color_tree_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_tree_get(%struct.TYPE_3__* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %63, %5
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %66

17:                                               ; preds = %14
  %18 = load i8, i8* %8, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %12, align 4
  %21 = ashr i32 %19, %20
  %22 = and i32 %21, 1
  %23 = mul nsw i32 8, %22
  %24 = load i8, i8* %9, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %25, %26
  %28 = and i32 %27, 1
  %29 = mul nsw i32 4, %28
  %30 = add nsw i32 %23, %29
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %12, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = mul nsw i32 2, %35
  %37 = add nsw i32 %30, %36
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %12, align 4
  %41 = ashr i32 %39, %40
  %42 = and i32 %41, 1
  %43 = mul nsw i32 1, %42
  %44 = add nsw i32 %37, %43
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %17
  store i32 -1, i32* %6, align 4
  br label %76

54:                                               ; preds = %17
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %7, align 8
  br label %62

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  br label %74

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %69
  %75 = phi i32 [ %72, %69 ], [ -1, %73 ]
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %53
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
