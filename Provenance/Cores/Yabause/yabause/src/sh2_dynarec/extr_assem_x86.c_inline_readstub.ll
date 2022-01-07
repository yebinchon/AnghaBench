; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_inline_readstub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x86.c_inline_readstub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"inline_readstub\0A\00", align 1
@EAX = common dso_local global i32 0, align 4
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
  %34 = load i32, i32* @EAX, align 4
  %35 = call i32 @emit_movimm(i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @LOADB_STUB, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i64, i64* @MappedMemoryReadByte, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @emit_call(i32 %41)
  br label %43

43:                                               ; preds = %39, %26
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LOADW_STUB, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* @MappedMemoryReadWord, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @emit_call(i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @LOADL_STUB, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i64, i64* @MappedMemoryReadLong, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @emit_call(i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @LOADS_STUB, align 4
  %62 = icmp ne i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @LOADB_STUB, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %59
  %69 = load i32, i32* %16, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @EAX, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @emit_movsbl_reg(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  br label %101

76:                                               ; preds = %59
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @LOADW_STUB, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* %16, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @EAX, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @emit_movswl_reg(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %80
  br label %100

88:                                               ; preds = %76
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @EAX, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = icmp sge i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @EAX, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @emit_mov(i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %92, %88
  br label %100

100:                                              ; preds = %99, %87
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @restore_regs(i32 %102)
  %104 = load i32, i32* %8, align 4
  ret i32 %104
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
