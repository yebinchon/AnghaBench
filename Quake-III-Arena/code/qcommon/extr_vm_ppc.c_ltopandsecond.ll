; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc.c_ltopandsecond.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc.c_ltopandsecond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@pass = common dso_local global i64 0, align 8
@buf = common dso_local global i32* null, align 8
@compiledOfs = common dso_local global i32 0, align 4
@PPC_STWU = common dso_local global i32 0, align 4
@R_TOP = common dso_local global i32 0, align 4
@R_OPSTACK = common dso_local global i32 0, align 4
@jused = common dso_local global i64* null, align 8
@instruction = common dso_local global i64 0, align 8
@tvm = common dso_local global %struct.TYPE_2__* null, align 8
@PPC_LWZ = common dso_local global i32 0, align 4
@R_SECOND = common dso_local global i32 0, align 4
@PPC_ADDI = common dso_local global i32 0, align 4
@PPC_STW = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@rtopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ltopandsecond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltopandsecond() #0 {
  %1 = load i64, i64* @pass, align 8
  %2 = icmp sge i64 %1, 0
  br i1 %2, label %3, label %47

3:                                                ; preds = %0
  %4 = load i32*, i32** @buf, align 8
  %5 = load i32, i32* @compiledOfs, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PPC_STWU, align 4
  %11 = load i32, i32* @R_TOP, align 4
  %12 = shl i32 %11, 21
  %13 = or i32 %10, %12
  %14 = load i32, i32* @R_OPSTACK, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %13, %15
  %17 = or i32 %16, 4
  %18 = icmp eq i32 %9, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  %20 = load i64*, i64** @jused, align 8
  %21 = load i64, i64* @instruction, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load i32, i32* @compiledOfs, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* @compiledOfs, align 4
  %28 = load i64, i64* @pass, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @compiledOfs, align 4
  %32 = mul nsw i32 %31, 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tvm, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @instruction, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* @PPC_LWZ, align 4
  %40 = load i32, i32* @R_SECOND, align 4
  %41 = load i32, i32* @R_OPSTACK, align 4
  %42 = call i32 @InstImm(i32 %39, i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* @PPC_ADDI, align 4
  %44 = load i32, i32* @R_OPSTACK, align 4
  %45 = load i32, i32* @R_OPSTACK, align 4
  %46 = call i32 @InstImm(i32 %43, i32 %44, i32 %45, i32 -4)
  br label %104

47:                                               ; preds = %19, %3, %0
  %48 = load i64, i64* @pass, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %47
  %51 = load i32*, i32** @buf, align 8
  %52 = load i32, i32* @compiledOfs, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PPC_STW, align 4
  %58 = load i32, i32* @R_TOP, align 4
  %59 = shl i32 %58, 21
  %60 = or i32 %57, %59
  %61 = load i32, i32* @R_OPSTACK, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = icmp eq i32 %56, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %50
  %66 = load i64*, i64** @jused, align 8
  %67 = load i64, i64* @instruction, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load i32, i32* @compiledOfs, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* @compiledOfs, align 4
  %74 = load i64, i64* @pass, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @compiledOfs, align 4
  %78 = mul nsw i32 %77, 4
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tvm, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @instruction, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* @PPC_LWZ, align 4
  %86 = load i32, i32* @R_SECOND, align 4
  %87 = load i32, i32* @R_OPSTACK, align 4
  %88 = call i32 @InstImm(i32 %85, i32 %86, i32 %87, i32 -4)
  %89 = load i32, i32* @PPC_ADDI, align 4
  %90 = load i32, i32* @R_OPSTACK, align 4
  %91 = load i32, i32* @R_OPSTACK, align 4
  %92 = call i32 @InstImm(i32 %89, i32 %90, i32 %91, i32 -8)
  br label %103

93:                                               ; preds = %65, %50, %47
  %94 = call i32 (...) @ltop()
  %95 = load i32, i32* @PPC_LWZ, align 4
  %96 = load i32, i32* @R_SECOND, align 4
  %97 = load i32, i32* @R_OPSTACK, align 4
  %98 = call i32 @InstImm(i32 %95, i32 %96, i32 %97, i32 -4)
  %99 = load i32, i32* @PPC_ADDI, align 4
  %100 = load i32, i32* @R_OPSTACK, align 4
  %101 = load i32, i32* @R_OPSTACK, align 4
  %102 = call i32 @InstImm(i32 %99, i32 %100, i32 %101, i32 -8)
  br label %103

103:                                              ; preds = %93, %84
  br label %104

104:                                              ; preds = %103, %38
  %105 = load i32, i32* @qfalse, align 4
  store i32 %105, i32* @rtopped, align 4
  ret void
}

declare dso_local i32 @InstImm(i32, i32, i32, i32) #1

declare dso_local i32 @ltop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
