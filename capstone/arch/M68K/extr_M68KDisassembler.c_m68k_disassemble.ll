; ModuleID = '/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_m68k_disassemble.c'
source_filename = "/home/carl/AnghaBench/capstone/arch/M68K/extr_M68KDisassembler.c_m68k_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_17__*)* }
%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_18__, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@M68K_INS_INVALID = common dso_local global i32 0, align 4
@M68K_SIZE_TYPE_CPU = common dso_local global i32 0, align 4
@M68K_OPERAND_COUNT = common dso_local global i32 0, align 4
@M68K_OP_REG = common dso_local global i32 0, align 4
@g_instruction_table = common dso_local global %struct.TYPE_14__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @m68k_disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m68k_disassemble(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %6, align 8
  %14 = load i32, i32* @M68K_INS_INVALID, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @build_opcode_table()
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = call i32 @memset(%struct.TYPE_18__* %18, i32 0, i32 16)
  %20 = load i32, i32* @M68K_SIZE_TYPE_CPU, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %37, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @M68K_OPERAND_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* @M68K_OP_REG, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 4
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %24

40:                                               ; preds = %24
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = call i64 @peek_imm_16(%struct.TYPE_17__* %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = call i32 @peek_imm_32(%struct.TYPE_17__* %46)
  %48 = and i32 %47, 65535
  %49 = call i64 @instruction_is_valid(%struct.TYPE_17__* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %40
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = call i64 @read_imm_16(%struct.TYPE_17__* %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** @g_instruction_table, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = call i32 %62(%struct.TYPE_17__* %63)
  br label %65

65:                                               ; preds = %51, %40
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = sub i32 %68, %70
  store i32 %71, i32* %8, align 4
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @build_opcode_table(...) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @peek_imm_16(%struct.TYPE_17__*) #1

declare dso_local i64 @instruction_is_valid(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @peek_imm_32(%struct.TYPE_17__*) #1

declare dso_local i64 @read_imm_16(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
