; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_fill_plfo_tables.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_fill_plfo_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@plfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_plfo_tables() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %22, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %25

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 128
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 0), align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32 %9, i32* %13, align 4
  br label %21

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 -256, %15
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 0), align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  br label %21

21:                                               ; preds = %14, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %2

25:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %43, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp slt i32 %27, 256
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i32, i32* %1, align 4
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 1), align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 127, i32* %36, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 1), align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 -128, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %1, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %26

46:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %1, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i32, i32* %1, align 4
  %52 = icmp slt i32 %51, 64
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %1, align 4
  %55 = mul nsw i32 %54, 2
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 2), align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %80

60:                                               ; preds = %50
  %61 = load i32, i32* %1, align 4
  %62 = icmp slt i32 %61, 192
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %1, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sub nsw i32 255, %65
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 2), align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %79

71:                                               ; preds = %60
  %72 = load i32, i32* %1, align 4
  %73 = mul nsw i32 %72, 2
  %74 = sub nsw i32 %73, 512
  %75 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 2), align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %63
  br label %80

80:                                               ; preds = %79, %53
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %1, align 4
  br label %47

84:                                               ; preds = %47
  store i32 0, i32* %1, align 4
  br label %85

85:                                               ; preds = %95, %84
  %86 = load i32, i32* %1, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = call i32 (...) @rand()
  %90 = and i32 %89, 255
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @plfo, i32 0, i32 3), align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %85

98:                                               ; preds = %85
  ret void
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
