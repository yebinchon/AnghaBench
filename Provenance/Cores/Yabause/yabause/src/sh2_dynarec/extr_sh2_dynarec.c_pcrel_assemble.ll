; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_pcrel_assemble.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_pcrel_assemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regstat = type { i64*, i32 }

@rt1 = common dso_local global i32* null, align 8
@imm = common dso_local global i32* null, align 8
@HOST_REGS = common dso_local global i32 0, align 4
@HOST_CCREG = common dso_local global i64 0, align 8
@CCREG = common dso_local global i64 0, align 8
@opcode = common dso_local global i32* null, align 8
@start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can't do constant propagation, doing PC-relatve load\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcrel_assemble(i32 %0, %struct.regstat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regstat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regstat* %1, %struct.regstat** %4, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %17 = load %struct.regstat*, %struct.regstat** %4, align 8
  %18 = getelementptr inbounds %struct.regstat, %struct.regstat* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32*, i32** @rt1, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_reg(i64* %19, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32*, i32** @imm, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %50, %2
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @HOST_REGS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.regstat*, %struct.regstat** %4, align 8
  %37 = getelementptr inbounds %struct.regstat, %struct.regstat* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %44, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %31

53:                                               ; preds = %31
  %54 = load %struct.regstat*, %struct.regstat** %4, align 8
  %55 = getelementptr inbounds %struct.regstat, %struct.regstat* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @HOST_CCREG, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CCREG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i64, i64* @HOST_CCREG, align 8
  %64 = trunc i64 %63 to i32
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %15, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %62, %53
  %70 = load i32, i32* %5, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %152

72:                                               ; preds = %69
  %73 = load %struct.regstat*, %struct.regstat** %4, align 8
  %74 = getelementptr inbounds %struct.regstat, %struct.regstat* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %151, label %80

80:                                               ; preds = %72
  store i32 0, i32* %16, align 4
  %81 = load i32*, i32** @opcode, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 12
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @start, align 4
  %90 = load i32, i32* %3, align 4
  %91 = mul nsw i32 %90, 2
  %92 = add nsw i32 %89, %91
  %93 = add nsw i32 %92, 4
  %94 = and i32 %93, -4
  %95 = load i32*, i32** @imm, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %94, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32*, i32** @opcode, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 9
  br i1 %106, label %107, label %119

107:                                              ; preds = %80
  %108 = load i32, i32* @start, align 4
  %109 = load i32, i32* %3, align 4
  %110 = mul nsw i32 %109, 2
  %111 = add nsw i32 %108, %110
  %112 = add nsw i32 %111, 4
  %113 = load i32*, i32** @imm, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %112, %117
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %107, %80
  %120 = call i32 @assem_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %121 = load i32, i32* %5, align 4
  %122 = shl i32 1, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %15, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @can_direct_read(i32 %126)
  %128 = call i32 @assert(i32 %127)
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @map_address(i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @emit_movimm(i32 %130, i32 %131)
  %133 = load i32*, i32** @opcode, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 9
  br i1 %138, label %139, label %143

139:                                              ; preds = %119
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @emit_movswl_indexed(i32 0, i32 %140, i32 %141)
  br label %150

143:                                              ; preds = %119
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @emit_readword_indexed(i32 0, i32 %144, i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @emit_rorimm(i32 %147, i32 16, i32 %148)
  br label %150

150:                                              ; preds = %143, %139
  br label %151

151:                                              ; preds = %150, %72
  br label %152

152:                                              ; preds = %151, %69
  ret void
}

declare dso_local i32 @get_reg(i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assem_debug(i8*) #1

declare dso_local i32 @can_direct_read(i32) #1

declare dso_local i32 @emit_movimm(i32, i32) #1

declare dso_local i32 @map_address(i32) #1

declare dso_local i32 @emit_movswl_indexed(i32, i32, i32) #1

declare dso_local i32 @emit_readword_indexed(i32, i32, i32) #1

declare dso_local i32 @emit_rorimm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
