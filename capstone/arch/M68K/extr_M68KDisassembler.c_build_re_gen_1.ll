; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_re_gen_1.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_build_re_gen_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }

@M68K_AM_REG_DIRECT_DATA = common dso_local global i32 0, align 4
@M68K_REG_D0 = common dso_local global i64 0, align 8
@M68K_AM_REG_DIRECT_ADDR = common dso_local global i32 0, align 4
@M68K_REG_A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32, i32)* @build_re_gen_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_re_gen_1(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.TYPE_11__* @build_init_op(%struct.TYPE_9__* %12, i32 %13, i32 2, i32 %14)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %11, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 0
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i64 1
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load i32, i32* @M68K_AM_REG_DIRECT_DATA, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @M68K_REG_D0, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 9
  %35 = and i32 %34, 7
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %30, %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %54

40:                                               ; preds = %4
  %41 = load i32, i32* @M68K_AM_REG_DIRECT_ADDR, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @M68K_REG_A0, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 9
  %49 = and i32 %48, 7
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %44, %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %40, %26
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @get_ea_mode_op(%struct.TYPE_9__* %55, %struct.TYPE_10__* %56, i32 %59, i32 %60)
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
