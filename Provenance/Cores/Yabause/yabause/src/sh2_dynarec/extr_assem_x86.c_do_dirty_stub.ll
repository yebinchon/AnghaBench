; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_do_dirty_stub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_do_dirty_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"do_dirty_stub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@source = common dso_local global i64 0, align 8
@slen = common dso_local global i32 0, align 4
@alignedsource = common dso_local global i64 0, align 8
@slave = common dso_local global i64 0, align 8
@EAX = common dso_local global i32 0, align 4
@copy = common dso_local global i64 0, align 8
@EBX = common dso_local global i32 0, align 4
@ECX = common dso_local global i32 0, align 4
@verify_code = common dso_local global i32 0, align 4
@ESP = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@instr_addr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_dirty_stub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @start, align 8
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, 2
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %5, %8
  %10 = call i32 @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* @source, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @slen, align 4
  %14 = mul nsw i32 %13, 2
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 2
  %17 = and i32 %16, -3
  %18 = load i64, i64* @alignedsource, align 8
  %19 = trunc i64 %18 to i32
  %20 = sub nsw i32 %17, %19
  store i32 %20, i32* %3, align 4
  %21 = load i64, i64* @start, align 8
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* @slave, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @emit_pushimm(i64 %27)
  %29 = load i64, i64* @source, align 8
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, -4
  %32 = load i32, i32* @EAX, align 4
  %33 = call i32 @emit_movimm(i32 %31, i32 %32)
  %34 = load i64, i64* @copy, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @EBX, align 4
  %37 = call i32 @emit_movimm(i32 %35, i32 %36)
  %38 = load i64, i64* @source, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @slen, align 4
  %41 = mul nsw i32 %40, 2
  %42 = add nsw i32 %39, %41
  %43 = add nsw i32 %42, 2
  %44 = and i32 %43, -4
  %45 = load i64, i64* @source, align 8
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, -4
  %48 = sub nsw i32 %44, %47
  %49 = load i32, i32* @ECX, align 4
  %50 = call i32 @emit_movimm(i32 %48, i32 %49)
  %51 = call i32 @emit_call(i32 ptrtoint (i32* @verify_code to i32))
  %52 = load i32, i32* @ESP, align 4
  %53 = load i32, i32* @ESP, align 4
  %54 = call i32 @emit_addimm(i32 %52, i32 4, i32 %53)
  %55 = load i64, i64* @out, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @load_regs_entry(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i64, i64* @out, align 8
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %1
  %64 = load i32*, i32** @instr_addr, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %1
  %70 = load i32*, i32** @instr_addr, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @emit_jmp(i32 %74)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @emit_pushimm(i64) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

declare dso_local i32 @load_regs_entry(i32) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
