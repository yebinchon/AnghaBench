; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_ea_get.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_ea_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_entry = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@EX_ILLEGAL_INSTRUCTION = common dso_local global i32 0, align 4
@EA_MISC_IMMEDIATE = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@ACCESS_MODIFY = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*, i32)* @ea_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ea_get(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @EA_MODE(i32 %14)
  switch i32 %15, label %116 [
    i32 129, label %16
    i32 130, label %33
    i32 128, label %62
  ]

16:                                               ; preds = %6
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @current_entry, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @EA_REG(i32 %22)
  %24 = mul nsw i32 %23, 4
  %25 = call i32 @JIT_EMIT_GET_OP1_REGISTER(i32 %21, i32 %24)
  br label %32

26:                                               ; preds = %16
  %27 = load i32, i32* @current_entry, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @EA_REG(i32 %28)
  %30 = mul nsw i32 %29, 4
  %31 = call i32 @JIT_EMIT_GET_OP2_REGISTER(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %189

33:                                               ; preds = %6
  %34 = load i32*, i32** %11, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @SIZE_B, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @EX_ILLEGAL_INSTRUCTION, align 4
  %41 = call i32 @raise_exception(i32* %39, i32 %40)
  %42 = load i32*, i32** %11, align 8
  store i32 -1, i32* %42, align 4
  br label %189

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* @current_entry, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @EA_REG(i32 %48)
  %50 = add nsw i32 8, %49
  %51 = mul nsw i32 %50, 4
  %52 = call i32 @JIT_EMIT_GET_OP1_REGISTER(i32 %47, i32 %51)
  br label %60

53:                                               ; preds = %43
  %54 = load i32, i32* @current_entry, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @EA_REG(i32 %55)
  %57 = add nsw i32 8, %56
  %58 = mul nsw i32 %57, 4
  %59 = call i32 @JIT_EMIT_GET_OP2_REGISTER(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60
  br label %189

62:                                               ; preds = %6
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @EA_REG(i32 %63)
  %65 = load i32, i32* @EA_MISC_IMMEDIATE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @EX_ILLEGAL_INSTRUCTION, align 4
  %73 = call i32 @raise_exception(i32* %71, i32 %72)
  %74 = load i32*, i32** %11, align 8
  store i32 -1, i32* %74, align 4
  br label %189

75:                                               ; preds = %67
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SIZE_L, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 8, i32 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @IFETCH(i32* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @SIZE_B, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = and i32 %88, 255
  store i32 %89, i32* %13, align 4
  br label %102

90:                                               ; preds = %75
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @SIZE_L, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  %96 = shl i32 %95, 16
  store i32 %96, i32* %13, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @IFETCH(i32* %97)
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %94, %90
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @current_entry, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %106, i32 %107)
  br label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @current_entry, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113
  br label %189

115:                                              ; preds = %62
  br label %116

116:                                              ; preds = %6, %115
  %117 = load i32*, i32** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* @ACCESS_MODIFY, align 4
  br label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @ACCESS_READ, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = call i32 @ea_resolve(i32* %117, i32 %118, i32 %119, i32 %127)
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* @EX_ILLEGAL_INSTRUCTION, align 4
  %136 = call i32 @raise_exception(i32* %134, i32 %135)
  br label %189

137:                                              ; preds = %126
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @SIZE_B, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load i32, i32* %12, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @current_entry, align 4
  %146 = call i32 @JIT_EMIT_GET_OP1_EA_B(i32 %145)
  br label %150

147:                                              ; preds = %141
  %148 = load i32, i32* @current_entry, align 4
  %149 = call i32 @JIT_EMIT_GET_OP2_EA_B(i32 %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %188

151:                                              ; preds = %137
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @SIZE_W, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %171

155:                                              ; preds = %151
  %156 = load i32, i32* @current_entry, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %159 = load i32, i32* @FAULT_STATUS_RW_READ, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32 %156, i32 %157, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* @current_entry, align 4
  %166 = call i32 @JIT_EMIT_GET_OP1_EA_W(i32 %165)
  br label %170

167:                                              ; preds = %155
  %168 = load i32, i32* @current_entry, align 4
  %169 = call i32 @JIT_EMIT_GET_OP2_EA_W(i32 %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %187

171:                                              ; preds = %151
  %172 = load i32, i32* @current_entry, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %175 = load i32, i32* @FAULT_STATUS_RW_READ, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32 %172, i32 %173, i32 %176)
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load i32, i32* @current_entry, align 4
  %182 = call i32 @JIT_EMIT_GET_OP1_EA_L(i32 %181)
  br label %186

183:                                              ; preds = %171
  %184 = load i32, i32* @current_entry, align 4
  %185 = call i32 @JIT_EMIT_GET_OP2_EA_L(i32 %184)
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187, %150
  br label %189

189:                                              ; preds = %38, %70, %133, %188, %114, %61, %32
  ret void
}

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_REGISTER(i32, i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_REGISTER(i32, i32) #1

declare dso_local i32 @raise_exception(i32*, i32) #1

declare dso_local i32 @IFETCH(i32*) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32, i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_EA_B(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_EA_B(i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_EA_W(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_EA_W(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_EA_L(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_EA_L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
