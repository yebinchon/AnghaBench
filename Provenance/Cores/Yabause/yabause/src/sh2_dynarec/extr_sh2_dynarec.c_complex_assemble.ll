; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_complex_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_complex_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i32, i32 }

@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@div1 = common dso_local global i64 0, align 8
@MACL = common dso_local global i32 0, align 4
@MACH = common dso_local global i32 0, align 4
@rs1 = common dso_local global i64* null, align 8
@rs2 = common dso_local global i64* null, align 8
@EDI = common dso_local global i32 0, align 4
@EBP = common dso_local global i32 0, align 4
@macl = common dso_local global i64 0, align 8
@macw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @complex_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  %5 = load i32*, i32** @opcode, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %5, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32*, i32** @opcode2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i64, i64* @div1, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @emit_call(i32 %20)
  br label %22

22:                                               ; preds = %18, %11, %2
  %23 = load i32*, i32** @opcode, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %22
  %30 = load i32*, i32** @opcode2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 15
  br i1 %35, label %36, label %69

36:                                               ; preds = %29
  %37 = load %struct.regstat*, %struct.regstat** %4, align 8
  %38 = getelementptr inbounds %struct.regstat, %struct.regstat* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.regstat*, %struct.regstat** %4, align 8
  %41 = getelementptr inbounds %struct.regstat, %struct.regstat* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MACL, align 4
  %44 = load i32, i32* @MACH, align 4
  %45 = load i32, i32* @MACH, align 4
  %46 = call i32 @load_regs(i32 %39, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i64*, i64** @rs1, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @rs2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %36
  %59 = load i32, i32* @EDI, align 4
  %60 = load i32, i32* @EBP, align 4
  %61 = call i32 @emit_mov(i32 %59, i32 %60)
  %62 = load i32, i32* @EDI, align 4
  %63 = load i32, i32* @EDI, align 4
  %64 = call i32 @emit_addimm(i32 %62, i32 4, i32 %63)
  br label %65

65:                                               ; preds = %58, %36
  %66 = load i64, i64* @macl, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @emit_call(i32 %67)
  br label %69

69:                                               ; preds = %65, %29, %22
  %70 = load i32*, i32** @opcode, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %116

76:                                               ; preds = %69
  %77 = load i32*, i32** @opcode2, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 15
  br i1 %82, label %83, label %116

83:                                               ; preds = %76
  %84 = load %struct.regstat*, %struct.regstat** %4, align 8
  %85 = getelementptr inbounds %struct.regstat, %struct.regstat* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.regstat*, %struct.regstat** %4, align 8
  %88 = getelementptr inbounds %struct.regstat, %struct.regstat* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MACL, align 4
  %91 = load i32, i32* @MACH, align 4
  %92 = load i32, i32* @MACH, align 4
  %93 = call i32 @load_regs(i32 %86, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i64*, i64** @rs1, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** @rs2, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %98, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %83
  %106 = load i32, i32* @EDI, align 4
  %107 = load i32, i32* @EBP, align 4
  %108 = call i32 @emit_mov(i32 %106, i32 %107)
  %109 = load i32, i32* @EDI, align 4
  %110 = load i32, i32* @EDI, align 4
  %111 = call i32 @emit_addimm(i32 %109, i32 2, i32 %110)
  br label %112

112:                                              ; preds = %105, %83
  %113 = load i64, i64* @macw, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @emit_call(i32 %114)
  br label %116

116:                                              ; preds = %112, %76, %69
  ret void
}

declare dso_local i32 @emit_call(i32) #1

declare dso_local i32 @load_regs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @emit_mov(i32, i32) #1

declare dso_local i32 @emit_addimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
