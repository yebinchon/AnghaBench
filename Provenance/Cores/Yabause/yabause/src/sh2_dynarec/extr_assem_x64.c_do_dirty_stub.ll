; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_dirty_stub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_do_dirty_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"do_dirty_stub %x\0A\00", align 1
@start = common dso_local global i32 0, align 4
@source = common dso_local global i64 0, align 8
@slen = common dso_local global i32 0, align 4
@alignedsource = common dso_local global i64 0, align 8
@EAX = common dso_local global i32 0, align 4
@copy = common dso_local global i64 0, align 8
@EBX = common dso_local global i32 0, align 4
@ECX = common dso_local global i32 0, align 4
@slave = common dso_local global i32 0, align 4
@verify_code = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@instr_addr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_dirty_stub(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @start, align 4
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, 2
  %8 = add nsw i32 %5, %7
  %9 = call i32 @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i64, i64* @source, align 8
  %11 = trunc i64 %10 to i32
  %12 = load i32, i32* @slen, align 4
  %13 = mul nsw i32 %12, 2
  %14 = add nsw i32 %11, %13
  %15 = add nsw i32 %14, 2
  %16 = and i32 %15, -3
  %17 = load i64, i64* @alignedsource, align 8
  %18 = trunc i64 %17 to i32
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i64, i64* @source, align 8
  %21 = trunc i64 %20 to i32
  %22 = icmp ule i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load i64, i64* @source, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, -4
  %27 = load i32, i32* @EAX, align 4
  %28 = call i32 @emit_movimm(i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %1
  %30 = load i64, i64* @source, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, -4
  %33 = load i32, i32* @EAX, align 4
  %34 = call i32 @emit_movimm64(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i64, i64* @copy, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @EBX, align 4
  %39 = call i32 @emit_movimm(i32 %37, i32 %38)
  %40 = load i64, i64* @source, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @slen, align 4
  %43 = mul nsw i32 %42, 2
  %44 = add nsw i32 %41, %43
  %45 = add nsw i32 %44, 2
  %46 = and i32 %45, -4
  %47 = load i64, i64* @source, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, -4
  %50 = sub nsw i32 %46, %49
  %51 = load i32, i32* @ECX, align 4
  %52 = call i32 @emit_movimm(i32 %50, i32 %51)
  %53 = load i32, i32* @start, align 4
  %54 = load i32, i32* %2, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %53, %55
  %57 = load i32, i32* @slave, align 4
  %58 = add nsw i32 %56, %57
  %59 = call i32 @emit_movimm(i32 %58, i32 12)
  %60 = call i32 @emit_call(i32 ptrtoint (i32* @verify_code to i32))
  %61 = load i64, i64* @out, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @load_regs_entry(i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i64, i64* @out, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %35
  %70 = load i32*, i32** @instr_addr, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %69, %35
  %76 = load i32*, i32** @instr_addr, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @emit_jmp(i32 %80)
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @assem_debug(i8*, i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_movimm64(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @load_regs_entry(i32) #1

declare dso_local i32 @emit_jmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
