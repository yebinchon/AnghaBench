; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_inline_writestub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_inline_writestub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"inline_writestub\0A\00", align 1
@STOREB_STUB = common dso_local global i32 0, align 4
@WriteInvalidateByte = common dso_local global i64 0, align 8
@STOREW_STUB = common dso_local global i32 0, align 4
@WriteInvalidateWord = common dso_local global i64 0, align 8
@STOREL_STUB = common dso_local global i32 0, align 4
@WriteInvalidateLong = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inline_writestub(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = call i32 @assem_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @get_reg(i8* %18, i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp sge i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @save_regs(i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @emit_mov(i32 %30, i32 1)
  br label %32

32:                                               ; preds = %29, %7
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @emit_movimm(i32 %33, i32 0)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @STOREB_STUB, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, i64* @WriteInvalidateByte, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @emit_call(i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @STOREW_STUB, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* @WriteInvalidateWord, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @emit_call(i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @STOREL_STUB, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @WriteInvalidateLong, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @emit_call(i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @restore_regs(i32 %59)
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @assem_debug(i8*) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @restore_regs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
