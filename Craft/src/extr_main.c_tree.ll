; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_tree.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tree(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 3
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %72, %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  store i32 -3, i32* %7, align 4
  br label %29

29:                                               ; preds = %68, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 3
  br i1 %31, label %32, label %71

32:                                               ; preds = %29
  store i32 -3, i32* %8, align 4
  br label %33

33:                                               ; preds = %64, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp sle i32 %34, 3
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 4
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %47, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 11
  br i1 %53, label %54, label %63

54:                                               ; preds = %36
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @builder_block(i32 %57, i32 %58, i32 %61, i32 15)
  br label %63

63:                                               ; preds = %54, %36
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %33

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %29

71:                                               ; preds = %29
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %23

75:                                               ; preds = %23
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %87, %75
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 7
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @builder_block(i32 %83, i32 %84, i32 %85, i32 5)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %77

90:                                               ; preds = %77
  ret void
}

declare dso_local i32 @builder_block(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
