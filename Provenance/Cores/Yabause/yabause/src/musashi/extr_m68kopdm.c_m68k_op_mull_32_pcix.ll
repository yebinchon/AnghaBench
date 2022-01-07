; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_mull_32_pcix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_mull_32_pcix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_mull_32_pcix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
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
  %15 = load i32, i32* @CPU_TYPE, align 4
  %16 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %183

18:                                               ; preds = %0
  %19 = call i32 (...) @OPER_I_16()
  store i32 %19, i32* %1, align 4
  %20 = call i32 (...) @OPER_PCIX_32()
  store i32 %20, i32* %2, align 4
  %21 = load i32*, i32** @REG_D, align 8
  %22 = load i32, i32* %1, align 4
  %23 = ashr i32 %22, 12
  %24 = and i32 %23, 7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = xor i32 %28, %29
  %31 = call i32 @GET_MSB_32(i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %32, i32* @FLAG_C, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @BIT_B(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %18
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @GET_MSB_32(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %2, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @MASK_OUT_ABOVE_32(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @GET_MSB_32(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @MASK_OUT_ABOVE_32(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %18
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @MASK_OUT_ABOVE_16(i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %2, align 4
  %57 = ashr i32 %56, 16
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @MASK_OUT_ABOVE_16(i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %3, align 4
  %61 = ashr i32 %60, 16
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @MASK_OUT_ABOVE_16(i32 %75)
  %77 = shl i32 %76, 16
  %78 = add nsw i32 %74, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @MASK_OUT_ABOVE_16(i32 %79)
  %81 = shl i32 %80, 16
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = ashr i32 %84, 16
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 16
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %9, align 4
  %91 = ashr i32 %90, 16
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @MASK_OUT_ABOVE_16(i32 %92)
  %94 = add nsw i32 %91, %93
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @MASK_OUT_ABOVE_16(i32 %95)
  %97 = add nsw i32 %94, %96
  %98 = ashr i32 %97, 16
  %99 = add nsw i32 %89, %98
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i64 @BIT_B(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %53
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 0, %107
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = sub nsw i32 %108, %111
  %113 = call i32 @MASK_OUT_ABOVE_32(i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 0, %114
  %116 = call i32 @MASK_OUT_ABOVE_32(i32 %115)
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %106, %103, %53
  %118 = load i32, i32* %1, align 4
  %119 = call i64 @BIT_A(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  %123 = load i32*, i32** @REG_D, align 8
  %124 = load i32, i32* %1, align 4
  %125 = and i32 %124, 7
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32*, i32** @REG_D, align 8
  %130 = load i32, i32* %1, align 4
  %131 = ashr i32 %130, 12
  %132 = and i32 %131, 7
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  store i32 %128, i32* %134, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @NFLAG_32(i32 %135)
  store i32 %136, i32* @FLAG_N, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %13, align 4
  %139 = or i32 %137, %138
  store i32 %139, i32* @FLAG_Z, align 4
  %140 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %140, i32* @FLAG_V, align 4
  br label %185

141:                                              ; preds = %117
  %142 = load i32, i32* %13, align 4
  %143 = load i32*, i32** @REG_D, align 8
  %144 = load i32, i32* %1, align 4
  %145 = ashr i32 %144, 12
  %146 = and i32 %145, 7
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  store i32 %142, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @NFLAG_32(i32 %149)
  store i32 %150, i32* @FLAG_N, align 4
  %151 = load i32, i32* %13, align 4
  store i32 %151, i32* @FLAG_Z, align 4
  %152 = load i32, i32* %1, align 4
  %153 = call i64 @BIT_B(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %141
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @GET_MSB_32(i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %155
  %160 = load i32, i32* %14, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %172, label %162

162:                                              ; preds = %159, %155
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @GET_MSB_32(i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  br label %170

170:                                              ; preds = %166, %162
  %171 = phi i1 [ false, %162 ], [ %169, %166 ]
  br label %172

172:                                              ; preds = %170, %159
  %173 = phi i1 [ true, %159 ], [ %171, %170 ]
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = shl i32 %175, 7
  store i32 %176, i32* @FLAG_V, align 4
  br label %182

177:                                              ; preds = %141
  %178 = load i32, i32* %14, align 4
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i32
  %181 = shl i32 %180, 7
  store i32 %181, i32* @FLAG_V, align 4
  br label %182

182:                                              ; preds = %177, %172
  br label %185

183:                                              ; preds = %0
  %184 = call i32 (...) @m68ki_exception_illegal()
  br label %185

185:                                              ; preds = %183, %182, %121
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @OPER_PCIX_32(...) #1

declare dso_local i32 @GET_MSB_32(i32) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i64 @BIT_A(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
