; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cpbcc_16.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cpbcc_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@M68020_PLUS = common dso_local global i32 0, align 4
@M68K_INS_FBF = common dso_local global i32 0, align 4
@M68K_OP_BR_DISP_SIZE_WORD = common dso_local global i32 0, align 4
@M68K_GRP_JUMP = common dso_local global i32 0, align 4
@M68K_GRP_BRANCH_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @d68020_cpbcc_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cpbcc_16(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = load i32, i32* @M68020_PLUS, align 4
  %7 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__* %5, i32 %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 47
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, %11
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = load i32, i32* @M68K_INS_FBF, align 4
  %20 = call %struct.TYPE_12__* @build_init_op(%struct.TYPE_11__* %18, i32 %19, i32 1, i32 2)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @M68K_OP_BR_DISP_SIZE_WORD, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = call i32 @read_imm_16(%struct.TYPE_11__* %27)
  %29 = call i32 @make_int_16(i32 %28)
  %30 = call i32 @make_cpbcc_operand(i32* %25, i32 %26, i32 %29)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = load i32, i32* @M68K_GRP_JUMP, align 4
  %33 = call i32 @set_insn_group(%struct.TYPE_11__* %31, i32 %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = load i32, i32* @M68K_GRP_BRANCH_RELATIVE, align 4
  %36 = call i32 @set_insn_group(%struct.TYPE_11__* %34, i32 %35)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_12__* @build_init_op(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @make_cpbcc_operand(i32*, i32, i32) #1

declare dso_local i32 @make_int_16(i32) #1

declare dso_local i32 @read_imm_16(%struct.TYPE_11__*) #1

declare dso_local i32 @set_insn_group(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
