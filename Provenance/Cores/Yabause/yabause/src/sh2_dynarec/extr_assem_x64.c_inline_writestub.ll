; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_inline_writestub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_inline_writestub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"inline_writestub\0A\00", align 1
@ESI = common dso_local global i32 0, align 4
@EDI = common dso_local global i32 0, align 4
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
  %28 = load i32, i32* @ESI, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @ESI, align 4
  %33 = call i32 @emit_mov(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %7
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @EDI, align 4
  %37 = call i32 @emit_movimm(i32 %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @STOREB_STUB, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i64, i64* @WriteInvalidateByte, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @emit_call(i32 %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @STOREW_STUB, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* @WriteInvalidateWord, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @emit_call(i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @STOREL_STUB, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* @WriteInvalidateLong, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @emit_call(i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @restore_regs(i32 %62)
  %64 = load i32, i32* %8, align 4
  ret i32 %64
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
