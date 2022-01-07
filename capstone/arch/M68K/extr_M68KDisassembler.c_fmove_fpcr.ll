; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_fmove_fpcr.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_fmove_fpcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@M68K_INS_FMOVE = common dso_local global i32 0, align 4
@M68K_REG_FPCR = common dso_local global i32 0, align 4
@M68K_REG_FPSR = common dso_local global i32 0, align 4
@M68K_REG_FPIAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32)* @fmove_fpcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmove_fpcr(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 10
  %13 = and i32 %12, 7
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 13
  %16 = and i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load i32, i32* @M68K_INS_FMOVE, align 4
  %19 = call %struct.TYPE_11__* @build_init_op(%struct.TYPE_9__* %17, i32 %18, i32 2, i32 4)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 0
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %5, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 1
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %10, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %5, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %6, align 8
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @get_ea_mode_op(%struct.TYPE_9__* %35, %struct.TYPE_10__* %36, i32 %39, i32 4)
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @M68K_REG_FPCR, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %66

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @M68K_REG_FPSR, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %65

56:                                               ; preds = %48
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @M68K_REG_FPIAR, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %52
  br label %66

66:                                               ; preds = %65, %44
  ret void
}

declare dso_local %struct.TYPE_11__* @build_init_op(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @get_ea_mode_op(%struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
