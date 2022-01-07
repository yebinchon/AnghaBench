; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_bit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }

@EA_ADDRESS_REG = common dso_local global i32 0, align 4
@INSN_GET_REG = common dso_local global i32 0, align 4
@reg = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@SR_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @op_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_bit(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @EA_MODE(i32 %12)
  %14 = load i32, i32* @EA_ADDRESS_REG, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 256
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @opMOVP(%struct.TYPE_8__* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %135

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @op_ill(%struct.TYPE_8__* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %135

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 6
  %31 = and i32 %30, 3
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 256
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @INSN_GET_REG, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @reg, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %46

43:                                               ; preds = %28
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i32 @IFETCH(%struct.TYPE_8__* %44)
  store i32 %45, i32* %8, align 4
  store i32 4, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @EA_MODE(i32 %47)
  switch i32 %48, label %53 [
    i32 128, label %49
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @SIZE_L, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = urem i32 %51, 32
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @SIZE_B, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = urem i32 %55, 8
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ea_get(%struct.TYPE_8__* %58, i32 %59, i32 %60, i32 1, i32* %10)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %135

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @SIZE_L, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %75, %65
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %82, %83
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i32, i32* @SR_Z, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %100

94:                                               ; preds = %81
  %95 = load i32, i32* @SR_Z, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %94, %87
  %101 = load i32, i32* %6, align 4
  switch i32 %101, label %119 [
    i32 0, label %102
    i32 1, label %103
    i32 2, label %108
    i32 3, label %114
  ]

102:                                              ; preds = %100
  br label %119

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = shl i32 1, %104
  %106 = load i32, i32* %11, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %119

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = shl i32 1, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %11, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %11, align 4
  br label %119

114:                                              ; preds = %100
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 1, %115
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %100, %114, %108, %103, %102
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @ea_set(%struct.TYPE_8__* %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 4, i32 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %128, %64, %24, %20
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @opMOVP(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @IFETCH(%struct.TYPE_8__*) #1

declare dso_local i32 @ea_get(%struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ea_set(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
