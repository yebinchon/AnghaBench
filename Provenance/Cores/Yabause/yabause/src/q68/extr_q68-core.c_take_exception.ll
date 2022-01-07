; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_take_exception.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_take_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i32, i32, i32, i32, i32, i8*, i32* }

@take_exception.exception_cycles = internal constant <{ [147 x i32], [109 x i32] }> <{ [147 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 34, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 38, i32 50, i32 50], [109 x i32] zeroinitializer }>, align 16
@SR_S = common dso_local global i32 0, align 4
@Q68_HALTED_DOUBLE_FAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @take_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @take_exception(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 9
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SR_S, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %14, %2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 7
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i8*, i8** @Q68_HALTED_DOUBLE_FAULT, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  store i32 0, i32* %3, align 4
  br label %111

41:                                               ; preds = %29
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PUSH32(%struct.TYPE_7__* %42, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PUSH16(%struct.TYPE_7__* %47, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 145
  br i1 %53, label %57, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 146
  br i1 %56, label %57, label %73

57:                                               ; preds = %54, %41
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PUSH16(%struct.TYPE_7__* %58, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PUSH32(%struct.TYPE_7__* %63, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PUSH16(%struct.TYPE_7__* %68, i32 %71)
  br label %73

73:                                               ; preds = %57, %54
  %74 = load i32, i32* @SR_S, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = icmp sge i32 %79, 141
  br i1 %80, label %81, label %90

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  %83 = icmp sle i32 %82, 135
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sub nsw i32 %86, 141
  %88 = add nsw i32 %87, 1
  %89 = call i32 @SR_SET_I(%struct.TYPE_7__* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %81, %73
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %92, 4
  %94 = call i32 @READU32(%struct.TYPE_7__* %91, i32 %93)
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %90
  %103 = load i8*, i8** @Q68_HALTED_DOUBLE_FAULT, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 8
  store i8* %103, i8** %105, align 8
  store i32 0, i32* %3, align 4
  br label %111

106:                                              ; preds = %90
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [256 x i32], [256 x i32]* bitcast (<{ [147 x i32], [109 x i32] }>* @take_exception.exception_cycles to [256 x i32]*), i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %102, %37
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @PUSH32(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PUSH16(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @SR_SET_I(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @READU32(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
