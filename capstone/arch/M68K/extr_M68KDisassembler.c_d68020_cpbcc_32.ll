; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cpbcc_32.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_d68020_cpbcc_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32* }

@M68020_PLUS = common dso_local global i32 0, align 4
@M68K_INS_FBF = common dso_local global i32 0, align 4
@M68K_OP_BR_DISP_SIZE_LONG = common dso_local global i32 0, align 4
@M68K_GRP_JUMP = common dso_local global i32 0, align 4
@M68K_GRP_BRANCH_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @d68020_cpbcc_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68020_cpbcc_32(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = load i32, i32* @M68020_PLUS, align 4
  %7 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__* %5, i32 %6)
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = load i32, i32* @M68020_PLUS, align 4
  %10 = call i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__* %8, i32 %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 47
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = load i32, i32* @M68K_INS_FBF, align 4
  %23 = call %struct.TYPE_12__* @build_init_op(%struct.TYPE_11__* %21, i32 %22, i32 1, i32 4)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %3, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @M68K_OP_BR_DISP_SIZE_LONG, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = call i32 @read_imm_32(%struct.TYPE_11__* %30)
  %32 = call i32 @make_cpbcc_operand(i32* %28, i32 %29, i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = load i32, i32* @M68K_GRP_JUMP, align 4
  %35 = call i32 @set_insn_group(%struct.TYPE_11__* %33, i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = load i32, i32* @M68K_GRP_BRANCH_RELATIVE, align 4
  %38 = call i32 @set_insn_group(%struct.TYPE_11__* %36, i32 %37)
  ret void
}

declare dso_local i32 @LIMIT_CPU_TYPES(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_12__* @build_init_op(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @make_cpbcc_operand(i32*, i32, i32) #1

declare dso_local i32 @read_imm_32(%struct.TYPE_11__*) #1

declare dso_local i32 @set_insn_group(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
