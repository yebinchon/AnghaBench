; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opMVSR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opMVSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@EA_DATA_REG = common dso_local global i64 0, align 8
@SR_S = common dso_local global i32 0, align 4
@EX_PRIVILEGE_VIOLATION = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@SIZE_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @opMVSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMVSR(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 9
  %14 = and i32 %13, 3
  switch i32 %14, label %27 [
    i32 0, label %15
    i32 1, label %22
    i32 2, label %26
  ]

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @EA_MODE(i32 %16)
  %18 = load i64, i64* @EA_DATA_REG, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 6, i32 8
  store i32 %21, i32* %8, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @op_ill(%struct.TYPE_7__* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %88

26:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 12, i32* %8, align 4
  br label %39

27:                                               ; preds = %2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SR_S, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EX_PRIVILEGE_VIOLATION, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %88

38:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 12, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %26, %15
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @EA_MODE(i32 %40)
  %42 = load i64, i64* @EA_ADDRESS_REG, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @op_ill(%struct.TYPE_7__* %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %88

48:                                               ; preds = %39
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SIZE_W, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ea_get(%struct.TYPE_7__* %49, i32 %50, i32 %51, i32 %52, i32* %9)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %88

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @SIZE_W, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ea_set(%struct.TYPE_7__* %73, i32 %74, i32 %75, i32 %76)
  br label %86

78:                                               ; preds = %57
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @set_SR(%struct.TYPE_7__* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %56, %44, %34, %22
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ea_get(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ea_set(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @set_SR(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
