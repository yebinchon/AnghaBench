; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opNBCD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opNBCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i32 0, align 4
@SR_X_SHIFT = common dso_local global i32 0, align 4
@SR_X = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SR_Z = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32)* @opNBCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opNBCD(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @EA_MODE(i32 %13)
  %15 = load i64, i64* @EA_ADDRESS_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @op_ill(%struct.TYPE_6__* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %112

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SIZE_B, align 4
  %25 = call i32 @ea_get(%struct.TYPE_6__* %22, i32 %23, i32 %24, i32 1, i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %112

29:                                               ; preds = %21
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SR_X_SHIFT, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 1
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* @SR_X, align 4
  %37 = load i32, i32* @SR_C, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 15
  %46 = sub nsw i32 0, %45
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %29
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 10
  store i32 %53, i32* %10, align 4
  store i32 16, i32* %11, align 4
  br label %54

54:                                               ; preds = %51, %29
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 240
  %57 = sub nsw i32 0, %56
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 160
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @SR_X, align 4
  %66 = load i32, i32* @SR_C, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %62, %54
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* @SR_X, align 4
  %80 = load i32, i32* @SR_C, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %72
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 255
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load i32, i32* @SR_Z, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @SIZE_B, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @ea_set(%struct.TYPE_6__* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @EA_MODE(i32 %104)
  %106 = load i64, i64* @EA_DATA_REG, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 6, i32 8
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %98, %28, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ea_get(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ea_set(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
