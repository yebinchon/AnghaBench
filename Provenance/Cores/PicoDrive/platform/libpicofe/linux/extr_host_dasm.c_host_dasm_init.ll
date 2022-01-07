; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_host_dasm.c_host_dasm_init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/linux/extr_host_dasm.c_host_dasm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@g_argv = common dso_local global i32* null, align 8
@di = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@insn_printf = common dso_local global i32 0, align 4
@bfd_target_unknown_flavour = common dso_local global i32 0, align 4
@dis_asm_memory_error = common dso_local global i32 0, align 4
@dis_asm_print_address = common dso_local global i32 0, align 4
@dis_asm_read_memory = common dso_local global i32 0, align 4
@BFD_ARCH = common dso_local global i32 0, align 4
@BFD_MACH = common dso_local global i32 0, align 4
@BFD_ENDIAN_LITTLE = common dso_local global i32 0, align 4
@DASM_OPTS = common dso_local global i32 0, align 4
@init_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @host_dasm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host_dasm_init() #0 {
  %1 = call i32 (...) @bfd_init()
  %2 = load i32*, i32** @g_argv, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @slurp_symtab(i32 %4)
  %6 = load i32, i32* @insn_printf, align 4
  %7 = call i32 @init_disassemble_info(%struct.TYPE_4__* @di, i32* null, i32 %6)
  %8 = load i32, i32* @bfd_target_unknown_flavour, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 7), align 4
  %9 = load i32, i32* @dis_asm_memory_error, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 6), align 4
  %10 = load i32, i32* @dis_asm_print_address, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 5), align 4
  %11 = load i32, i32* @dis_asm_read_memory, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 4), align 4
  %12 = load i32, i32* @BFD_ARCH, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 3), align 4
  %13 = load i32, i32* @BFD_MACH, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 2), align 4
  %14 = load i32, i32* @BFD_ENDIAN_LITTLE, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 1), align 4
  %15 = load i32, i32* @DASM_OPTS, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @di, i32 0, i32 0), align 4
  %16 = call i32 @disassemble_init_for_target(%struct.TYPE_4__* @di)
  store i32 1, i32* @init_done, align 4
  ret void
}

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @slurp_symtab(i32) #1

declare dso_local i32 @init_disassemble_info(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @disassemble_init_for_target(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
