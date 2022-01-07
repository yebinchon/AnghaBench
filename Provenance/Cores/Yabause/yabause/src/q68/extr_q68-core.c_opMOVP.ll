; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opMOVP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opMOVP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@reg0 = common dso_local global i64 0, align 8
@reg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @opMOVP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMOVP(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @INSN_GET_REG, align 4
  %12 = load i32, i32* @INSN_GET_REG0, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 128
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 64
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i32 @IFETCH(%struct.TYPE_6__* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @reg0, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %77

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @reg, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 0
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 24
  %44 = call i32 @WRITE8(%struct.TYPE_6__* %39, i32 %41, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 2
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, 16
  %50 = call i32 @WRITE8(%struct.TYPE_6__* %45, i32 %47, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 4
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 8
  %56 = call i32 @WRITE8(%struct.TYPE_6__* %51, i32 %53, i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 6
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 0
  %62 = call i32 @WRITE8(%struct.TYPE_6__* %57, i32 %59, i32 %61)
  br label %76

63:                                               ; preds = %29
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 0
  %67 = load i32, i32* %9, align 4
  %68 = ashr i32 %67, 8
  %69 = call i32 @WRITE8(%struct.TYPE_6__* %64, i32 %66, i32 %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 2
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 0
  %75 = call i32 @WRITE8(%struct.TYPE_6__* %70, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %63, %38
  br label %127

77:                                               ; preds = %2
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 0
  %84 = call i32 @READU8(%struct.TYPE_6__* %81, i32 %83)
  %85 = shl i32 %84, 24
  store i32 %85, i32* %10, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 2
  %89 = call i32 @READU8(%struct.TYPE_6__* %86, i32 %88)
  %90 = shl i32 %89, 16
  %91 = load i32, i32* %10, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 4
  %96 = call i32 @READU8(%struct.TYPE_6__* %93, i32 %95)
  %97 = shl i32 %96, 8
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 6
  %103 = call i32 @READU8(%struct.TYPE_6__* %100, i32 %102)
  %104 = shl i32 %103, 0
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %120

107:                                              ; preds = %77
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 0
  %111 = call i32 @READU8(%struct.TYPE_6__* %108, i32 %110)
  %112 = shl i32 %111, 8
  store i32 %112, i32* %10, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 2
  %116 = call i32 @READU8(%struct.TYPE_6__* %113, i32 %115)
  %117 = shl i32 %116, 0
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %107, %80
  %121 = load i32, i32* %10, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @reg, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %121, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %76
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 24, i32 16
  ret i32 %131
}

declare dso_local i32 @IFETCH(%struct.TYPE_6__*) #1

declare dso_local i32 @WRITE8(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @READU8(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
