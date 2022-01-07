; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cptrapcc_16.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cptrapcc_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }

@M68020_PLUS = common dso_local global i32 0, align 4
@M68K_INS_FTRAPF = common dso_local global i32 0, align 4
@M68K_AM_IMMEDIATE = common dso_local global i32 0, align 4
@M68K_OP_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @d68020_cptrapcc_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cptrapcc_16(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @M68020_PLUS, align 4
  %9 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__* %7, i32 %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @read_imm_16(%struct.TYPE_11__* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = call i32 @read_imm_16(%struct.TYPE_11__* %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = load i32, i32* @M68K_INS_FTRAPF, align 4
  %16 = call %struct.TYPE_13__* @build_init_op(%struct.TYPE_11__* %14, i32 %15, i32 1, i32 2)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 47
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %18
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 0
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %5, align 8
  %29 = load i32, i32* @M68K_AM_IMMEDIATE, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @M68K_OP_IMM, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @read_imm_16(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_13__* @build_init_op(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
