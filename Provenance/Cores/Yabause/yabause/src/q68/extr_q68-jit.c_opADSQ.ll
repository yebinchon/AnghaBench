; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opADSQ.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opADSQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_COUNT = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@size = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@EA_INDIRECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opADSQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opADSQ(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 256
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @INSN_GET_COUNT, align 4
  %12 = load i32, i32* @INSN_GET_SIZE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @EA_MODE(i32 %13)
  %15 = load i64, i64* @EA_ADDRESS_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @size, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 2, i32* @size, align 4
  br label %21

21:                                               ; preds = %20, %17, %2
  %22 = load i32, i32* @current_entry, align 4
  %23 = load i32, i32* @count, align 4
  %24 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @size, align 4
  %28 = call i32 @ea_get(i32* %25, i32 %26, i32 %27, i32 1, i32* %7, i32 2)
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %160

32:                                               ; preds = %21
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @cc_needed(i32* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @EA_MODE(i32 %39)
  %41 = load i64, i64* @EA_ADDRESS_REG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @current_entry, align 4
  %45 = call i32 @JIT_EMIT_SUB_L(i32 %44)
  br label %83

46:                                               ; preds = %38
  %47 = load i32, i32* @size, align 4
  %48 = load i32, i32* @SIZE_B, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* @current_entry, align 4
  %52 = call i32 @JIT_EMIT_SUB_B(i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @current_entry, align 4
  %57 = call i32 @JIT_EMIT_SETCC_SUB_B(i32 %56)
  br label %58

58:                                               ; preds = %55, %50
  br label %82

59:                                               ; preds = %46
  %60 = load i32, i32* @size, align 4
  %61 = load i32, i32* @SIZE_W, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* @current_entry, align 4
  %65 = call i32 @JIT_EMIT_SUB_W(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @current_entry, align 4
  %70 = call i32 @JIT_EMIT_SETCC_SUB_W(i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  br label %81

72:                                               ; preds = %59
  %73 = load i32, i32* @current_entry, align 4
  %74 = call i32 @JIT_EMIT_SUB_L(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @current_entry, align 4
  %79 = call i32 @JIT_EMIT_SETCC_SUB_L(i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %71
  br label %82

82:                                               ; preds = %81, %58
  br label %83

83:                                               ; preds = %82, %43
  br label %130

84:                                               ; preds = %32
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @EA_MODE(i32 %85)
  %87 = load i64, i64* @EA_ADDRESS_REG, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @current_entry, align 4
  %91 = call i32 @JIT_EMIT_ADD_L(i32 %90)
  br label %129

92:                                               ; preds = %84
  %93 = load i32, i32* @size, align 4
  %94 = load i32, i32* @SIZE_B, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i32, i32* @current_entry, align 4
  %98 = call i32 @JIT_EMIT_ADD_B(i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @current_entry, align 4
  %103 = call i32 @JIT_EMIT_SETCC_ADD_B(i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %128

105:                                              ; preds = %92
  %106 = load i32, i32* @size, align 4
  %107 = load i32, i32* @SIZE_W, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* @current_entry, align 4
  %111 = call i32 @JIT_EMIT_ADD_W(i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @current_entry, align 4
  %116 = call i32 @JIT_EMIT_SETCC_ADD_W(i32 %115)
  br label %117

117:                                              ; preds = %114, %109
  br label %127

118:                                              ; preds = %105
  %119 = load i32, i32* @current_entry, align 4
  %120 = call i32 @JIT_EMIT_ADD_L(i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i32, i32* @current_entry, align 4
  %125 = call i32 @JIT_EMIT_SETCC_ADD_L(i32 %124)
  br label %126

126:                                              ; preds = %123, %118
  br label %127

127:                                              ; preds = %126, %117
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128, %89
  br label %130

130:                                              ; preds = %129, %83
  %131 = load i32*, i32** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @size, align 4
  %134 = call i32 @ea_set(i32* %131, i32 %132, i32 %133)
  %135 = load i32, i32* @size, align 4
  %136 = load i32, i32* @SIZE_L, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @EA_MODE(i32 %139)
  %141 = load i64, i64* @EA_ADDRESS_REG, align 8
  %142 = icmp eq i64 %140, %141
  br label %143

143:                                              ; preds = %138, %130
  %144 = phi i1 [ true, %130 ], [ %142, %138 ]
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 8, i32 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %7, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i64 @EA_MODE(i32 %149)
  %151 = load i64, i64* @EA_INDIRECT, align 8
  %152 = icmp sge i64 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 4, i32 0
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* @current_entry, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %157, i32 %158)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %143, %31
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_B(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADD_L(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
