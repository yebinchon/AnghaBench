; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_dirty_stub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_do_dirty_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"do_dirty_stub %x\0A\00", align 1
@start = common dso_local global i64 0, align 8
@source = common dso_local global i64 0, align 8
@slen = common dso_local global i32 0, align 4
@alignedsource = common dso_local global i64 0, align 8
@copy = common dso_local global i64 0, align 8
@slave = common dso_local global i64 0, align 8
@verify_code = common dso_local global i32 0, align 4
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
  %21 = load i64, i64* @source, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, -4
  %24 = call i32 @emit_loadlp(i32 %23, i32 1)
  %25 = load i64, i64* @copy, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @emit_loadlp(i32 %26, i32 2)
  %28 = load i64, i64* @source, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @slen, align 4
  %31 = mul nsw i32 %30, 2
  %32 = add nsw i32 %29, %31
  %33 = add nsw i32 %32, 2
  %34 = and i32 %33, -4
  %35 = load i64, i64* @source, align 8
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, -4
  %38 = sub nsw i32 %34, %37
  %39 = call i32 @emit_loadlp(i32 %38, i32 3)
  %40 = load i64, i64* @start, align 8
  %41 = load i32, i32* %2, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load i64, i64* @slave, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @emit_movimm(i64 %46, i32 0)
  %48 = call i32 @emit_call(i32 ptrtoint (i32* @verify_code to i32))
  %49 = load i64, i64* @out, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @load_regs_entry(i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load i64, i64* @out, align 8
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %1
  %58 = load i32*, i32** @instr_addr, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %57, %1
  %64 = load i32*, i32** @instr_addr, align 8
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @emit_jmp(i32 %68)
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @assem_debug(i8*, i64) #1

declare dso_local i32 @emit_loadlp(i32, i32) #1

declare dso_local i32 @emit_movimm(i64, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @load_regs_entry(i32) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
