; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_PEA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_PEA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32 }

@EA_DATA_REG = common dso_local global i64 0, align 8
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_POSTINCREMENT = common dso_local global i64 0, align 8
@EA_PREDECREMENT = common dso_local global i64 0, align 8
@EA_MISC = common dso_local global i64 0, align 8
@EA_MISC_IMMEDIATE = common dso_local global i64 0, align 8
@SIZE_W = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@EX_ADDRESS_ERROR = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @op_PEA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_PEA(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @EA_MODE(i32 %7)
  %9 = load i64, i64* @EA_DATA_REG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @opSWAP(%struct.TYPE_7__* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %100

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @EA_MODE(i32 %16)
  %18 = load i64, i64* @EA_DATA_REG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %45, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @EA_MODE(i32 %21)
  %23 = load i64, i64* @EA_ADDRESS_REG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @EA_MODE(i32 %26)
  %28 = load i64, i64* @EA_POSTINCREMENT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @EA_MODE(i32 %31)
  %33 = load i64, i64* @EA_PREDECREMENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @EA_MODE(i32 %36)
  %38 = load i64, i64* @EA_MISC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @EA_REG(i32 %41)
  %43 = load i64, i64* @EA_MISC_IMMEDIATE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %30, %25, %20, %15
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @op_ill(%struct.TYPE_7__* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %100

49:                                               ; preds = %40, %35
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SIZE_W, align 4
  %53 = load i32, i32* @ACCESS_READ, align 4
  %54 = call i32 @ea_resolve(%struct.TYPE_7__* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @op_ill(%struct.TYPE_7__* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %100

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = srem i32 %62, 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %68
  %77 = load i32, i32* @EX_ADDRESS_ERROR, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %88 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %100

92:                                               ; preds = %68
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @PUSH32(%struct.TYPE_7__* %93, i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 8, %98
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %92, %76, %57, %45, %11
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @opSWAP(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @EA_REG(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ea_resolve(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @PUSH32(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
