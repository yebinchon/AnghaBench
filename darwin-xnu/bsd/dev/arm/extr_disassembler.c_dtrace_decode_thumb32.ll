; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_dtrace_decode_thumb32.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_dtrace_decode_thumb32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dtrace_decode_thumb32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_decode_thumb32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BITS(i32 %9, i32 11, i32 3)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BITS(i32 %11, i32 4, i32 127)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @BITS(i32 %13, i32 15, i32 1)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 100
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @thumb32_loadstore_multiple(i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %168

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 100
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @thumb32_loadstore_double_exclusive_table(i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %168

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 96
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @thumb32_dataproc_regshift(i32 %38, i32 %39)
  store i32 %40, i32* %3, align 4
  br label %168

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 64
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @thumb32_coproc(i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %168

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @thumb32_dataproc_mod_immed(i32 %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %168

64:                                               ; preds = %57, %53
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, 32
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @thumb32_dataproc_plain_immed(i32 %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %168

75:                                               ; preds = %68, %64
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @thumb32_b_misc_control(i32 %79, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %168

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %166

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, 113
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @thumb32_store_single(i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  br label %168

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, 113
  %97 = icmp eq i32 %96, 16
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @thumb32_instword_to_arm(i32 %99, i32 %100)
  %102 = call i32 @vfp_struct_loadstore(i32 %101)
  store i32 %102, i32* %3, align 4
  br label %168

103:                                              ; preds = %94
  %104 = load i32, i32* %7, align 4
  %105 = and i32 %104, 103
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @thumb32_loadbyte_memhint(i32 %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %168

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 103
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @thumb32_loadhalfword_memhint(i32 %116, i32 %117)
  store i32 %118, i32* %3, align 4
  br label %168

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, 103
  %122 = icmp eq i32 %121, 5
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @thumb32_loadword(i32 %124, i32 %125)
  store i32 %126, i32* %3, align 4
  br label %168

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, 103
  %130 = icmp eq i32 %129, 7
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %132, i32* %3, align 4
  br label %168

133:                                              ; preds = %127
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, 112
  %136 = icmp eq i32 %135, 32
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @thumb32_dataproc_reg(i32 %138, i32 %139)
  store i32 %140, i32* %3, align 4
  br label %168

141:                                              ; preds = %133
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 120
  %144 = icmp eq i32 %143, 48
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @thumb32_multiply(i32 %146, i32 %147)
  store i32 %148, i32* %3, align 4
  br label %168

149:                                              ; preds = %141
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 120
  %152 = icmp eq i32 %151, 56
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @thumb32_longmultiply(i32 %154, i32 %155)
  store i32 %156, i32* %3, align 4
  br label %168

157:                                              ; preds = %149
  %158 = load i32, i32* %7, align 4
  %159 = and i32 %158, 64
  %160 = icmp eq i32 %159, 64
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @thumb32_coproc(i32 %162, i32 %163)
  store i32 %164, i32* %3, align 4
  br label %168

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %83
  %167 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %161, %153, %145, %137, %131, %123, %115, %107, %98, %90, %78, %71, %60, %45, %37, %29, %21
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i32 @thumb32_loadstore_multiple(i32, i32) #1

declare dso_local i32 @thumb32_loadstore_double_exclusive_table(i32, i32) #1

declare dso_local i32 @thumb32_dataproc_regshift(i32, i32) #1

declare dso_local i32 @thumb32_coproc(i32, i32) #1

declare dso_local i32 @thumb32_dataproc_mod_immed(i32, i32) #1

declare dso_local i32 @thumb32_dataproc_plain_immed(i32, i32) #1

declare dso_local i32 @thumb32_b_misc_control(i32, i32) #1

declare dso_local i32 @thumb32_store_single(i32, i32) #1

declare dso_local i32 @vfp_struct_loadstore(i32) #1

declare dso_local i32 @thumb32_instword_to_arm(i32, i32) #1

declare dso_local i32 @thumb32_loadbyte_memhint(i32, i32) #1

declare dso_local i32 @thumb32_loadhalfword_memhint(i32, i32) #1

declare dso_local i32 @thumb32_loadword(i32, i32) #1

declare dso_local i32 @thumb32_dataproc_reg(i32, i32) #1

declare dso_local i32 @thumb32_multiply(i32, i32) #1

declare dso_local i32 @thumb32_longmultiply(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
