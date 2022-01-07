; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_shiftimm_alloc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_shiftimm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64 }

@rs1 = common dso_local global i32* null, align 8
@rt1 = common dso_local global i32* null, align 8
@opcode = common dso_local global i32* null, align 8
@opcode2 = common dso_local global i32* null, align 8
@opcode3 = common dso_local global i32* null, align 8
@TBIT = common dso_local global i64 0, align 8
@SR = common dso_local global i32 0, align 4
@rs2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shiftimm_alloc(%struct.regstat* %0, i32 %1) #0 {
  %3 = alloca %struct.regstat*, align 8
  %4 = alloca i32, align 4
  store %struct.regstat* %0, %struct.regstat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.regstat*, %struct.regstat** %3, align 8
  %6 = load i32*, i32** @rs1, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clear_const(%struct.regstat* %5, i32 %10)
  %12 = load %struct.regstat*, %struct.regstat** %3, align 8
  %13 = load i32*, i32** @rt1, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @clear_const(%struct.regstat* %12, i32 %17)
  %19 = load %struct.regstat*, %struct.regstat** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** @rs1, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @alloc_reg(%struct.regstat* %19, i32 %20, i32 %25)
  %27 = load %struct.regstat*, %struct.regstat** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** @rt1, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @alloc_reg(%struct.regstat* %27, i32 %28, i32 %33)
  %35 = load %struct.regstat*, %struct.regstat** %3, align 8
  %36 = load i32*, i32** @rt1, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dirty_reg(%struct.regstat* %35, i32 %40)
  %42 = load i32*, i32** @opcode, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %96

48:                                               ; preds = %2
  %49 = load i32*, i32** @opcode2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %95

55:                                               ; preds = %48
  %56 = load i32*, i32** @opcode2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load i32*, i32** @opcode3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %86

69:                                               ; preds = %62, %55
  %70 = load %struct.regstat*, %struct.regstat** %3, align 8
  %71 = getelementptr inbounds %struct.regstat, %struct.regstat* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TBIT, align 8
  %74 = shl i64 1, %73
  %75 = and i64 %72, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %69
  %78 = load %struct.regstat*, %struct.regstat** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @SR, align 4
  %81 = call i32 @alloc_reg(%struct.regstat* %78, i32 %79, i32 %80)
  %82 = load %struct.regstat*, %struct.regstat** %3, align 8
  %83 = load i32, i32* @SR, align 4
  %84 = call i32 @dirty_reg(%struct.regstat* %82, i32 %83)
  br label %85

85:                                               ; preds = %77, %69
  br label %94

86:                                               ; preds = %62
  %87 = load %struct.regstat*, %struct.regstat** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @SR, align 4
  %90 = call i32 @alloc_reg(%struct.regstat* %87, i32 %88, i32 %89)
  %91 = load %struct.regstat*, %struct.regstat** %3, align 8
  %92 = load i32, i32* @SR, align 4
  %93 = call i32 @dirty_reg(%struct.regstat* %91, i32 %92)
  br label %94

94:                                               ; preds = %86, %85
  br label %95

95:                                               ; preds = %94, %48
  br label %96

96:                                               ; preds = %95, %2
  %97 = load i32*, i32** @opcode, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 2
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** @opcode2, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 13
  %110 = zext i1 %109 to i32
  %111 = and i32 %103, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %96
  %114 = load %struct.regstat*, %struct.regstat** %3, align 8
  %115 = load i32*, i32** @rs2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @clear_const(%struct.regstat* %114, i32 %119)
  %121 = load %struct.regstat*, %struct.regstat** %3, align 8
  %122 = load i32, i32* %4, align 4
  %123 = load i32*, i32** @rs2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @alloc_reg(%struct.regstat* %121, i32 %122, i32 %127)
  br label %129

129:                                              ; preds = %113, %96
  ret void
}

declare dso_local i32 @clear_const(%struct.regstat*, i32) #1

declare dso_local i32 @alloc_reg(%struct.regstat*, i32, i32) #1

declare dso_local i32 @dirty_reg(%struct.regstat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
