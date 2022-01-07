; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cpdbcc.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cpdbcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@M68020_PLUS = common dso_local global i32 0, align 4
@M68K_INS_FDBF = common dso_local global i32 0, align 4
@M68K_REG_D0 = common dso_local global i64 0, align 8
@M68K_OP_BR_DISP_SIZE_WORD = common dso_local global i32 0, align 4
@M68K_GRP_JUMP = common dso_local global i32 0, align 4
@M68K_GRP_BRANCH_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @d68020_cpdbcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cpdbcc(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = load i32, i32* @M68020_PLUS, align 4
  %10 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_13__* %8, i32 %9)
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call i32 @read_imm_16(%struct.TYPE_13__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = call i32 @read_imm_16(%struct.TYPE_13__* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 47
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = load i32, i32* @M68K_INS_FDBF, align 4
  %25 = call %struct.TYPE_15__* @build_init_op(%struct.TYPE_13__* %23, i32 %24, i32 2, i32 0)
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %3, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 0
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 1
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %5, align 8
  %34 = load i64, i64* @M68K_REG_D0, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 7
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %34, %39
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = load i32, i32* @M68K_OP_BR_DISP_SIZE_WORD, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @make_int_16(i32 %45)
  %47 = add nsw i64 %46, 2
  %48 = call i32 @make_cpbcc_operand(%struct.TYPE_14__* %43, i32 %44, i64 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %50 = load i32, i32* @M68K_GRP_JUMP, align 4
  %51 = call i32 @set_insn_group(%struct.TYPE_13__* %49, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = load i32, i32* @M68K_GRP_BRANCH_RELATIVE, align 4
  %54 = call i32 @set_insn_group(%struct.TYPE_13__* %52, i32 %53)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @read_imm_16(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_15__* @build_init_op(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @make_cpbcc_operand(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i64 @make_int_16(i32) #1

declare dso_local i32 @set_insn_group(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
