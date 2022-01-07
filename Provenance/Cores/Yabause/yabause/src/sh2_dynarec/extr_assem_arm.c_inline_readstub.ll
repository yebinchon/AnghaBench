; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_inline_readstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_inline_readstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"inline_readstub\0A\00", align 1
@LOADB_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadByte = common dso_local global i64 0, align 8
@LOADW_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadWord = common dso_local global i64 0, align 8
@LOADL_STUB = common dso_local global i32 0, align 4
@MappedMemoryReadLong = common dso_local global i64 0, align 8
@LOADS_STUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inline_readstub(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %17 = call i32 @assem_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @get_reg(i8* %18, i32 %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %7
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @get_reg(i8* %24, i32 -1)
  store i32 %25, i32* %16, align 4
  br label %26

26:                                               ; preds = %23, %7
  %27 = load i32, i32* %16, align 4
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @save_regs(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @emit_movimm(i32 %33, i32 0)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @LOADB_STUB, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i64, i64* @MappedMemoryReadByte, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @emit_call(i32 %40)
  br label %42

42:                                               ; preds = %38, %26
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @LOADW_STUB, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* @MappedMemoryReadWord, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @emit_call(i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @LOADL_STUB, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @MappedMemoryReadLong, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @emit_call(i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LOADS_STUB, align 4
  %61 = icmp ne i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @LOADB_STUB, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %58
  %68 = load i32, i32* %16, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @emit_movsbl_reg(i32 0, i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %93

74:                                               ; preds = %58
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @LOADW_STUB, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @emit_movswl_reg(i32 0, i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %92

85:                                               ; preds = %74
  %86 = load i32, i32* %16, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @emit_mov(i32 0, i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %73
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @restore_regs(i32 %94)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i32 @assem_debug(i8*) #1

declare dso_local i32 @get_reg(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @save_regs(i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @emit_movsbl_reg(i32, i32) #1

declare dso_local i32 @emit_movswl_reg(i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @restore_regs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
