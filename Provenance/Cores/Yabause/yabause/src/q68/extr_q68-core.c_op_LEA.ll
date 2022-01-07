; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_LEA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_LEA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@INSN_GET_REG = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_POSTINCREMENT = common dso_local global i64 0, align 8
@EA_PREDECREMENT = common dso_local global i64 0, align 8
@EA_MISC = common dso_local global i64 0, align 8
@EA_MISC_IMMEDIATE = common dso_local global i64 0, align 8
@SIZE_W = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@reg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @op_LEA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_LEA(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @INSN_GET_REG, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @EA_MODE(i32 %8)
  %10 = load i64, i64* @EA_DATA_REG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @EA_MODE(i32 %13)
  %15 = load i64, i64* @EA_ADDRESS_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @EA_MODE(i32 %18)
  %20 = load i64, i64* @EA_POSTINCREMENT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @EA_MODE(i32 %23)
  %25 = load i64, i64* @EA_PREDECREMENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @EA_MODE(i32 %28)
  %30 = load i64, i64* @EA_MISC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @EA_REG(i32 %33)
  %35 = load i64, i64* @EA_MISC_IMMEDIATE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %22, %17, %12, %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @op_ill(%struct.TYPE_5__* %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %32, %27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SIZE_W, align 4
  %45 = load i32, i32* @ACCESS_READ, align 4
  %46 = call i32 @ea_resolve(%struct.TYPE_5__* %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @op_ill(%struct.TYPE_5__* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %70

53:                                               ; preds = %41
  %54 = load i32, i32* %6, align 4
  %55 = srem i32 %54, 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 2
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @reg, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %63, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %60, %49, %37
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i64 @EA_REG(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ea_resolve(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
