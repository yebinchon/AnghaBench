; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_reg_write16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_reg_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@Pico32x = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@m68k_poll = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@P32XS_nRES = common dso_local global i32 0, align 4
@P32XS_FM = common dso_local global i32 0, align 4
@P32XS_ADEN = common dso_local global i32 0, align 4
@sh2s = common dso_local global i32* null, align 8
@SH2_STATE_CPOLL = common dso_local global i32 0, align 4
@msh2 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @p32x_reg_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p32x_reg_write16(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 0), align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 62
  store i32 %10, i32* %3, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @m68k_poll, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %119 [
    i32 0, label %12
    i32 8, label %47
    i32 10, label %55
    i32 12, label %63
    i32 14, label %71
    i32 16, label %78
    i32 18, label %86
    i32 26, label %90
    i32 48, label %98
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %13, %16
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @P32XS_nRES, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = call i32 (...) @p32x_reset_sh2s()
  br label %25

25:                                               ; preds = %23, %12
  %26 = load i32, i32* @P32XS_FM, align 4
  %27 = load i32, i32* @P32XS_nRES, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @P32XS_ADEN, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @P32XS_FM, align 4
  %38 = load i32, i32* @P32XS_nRES, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @P32XS_ADEN, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %36, %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %190

47:                                               ; preds = %2
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sdiv i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  br label %190

55:                                               ; preds = %2
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, -2
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sdiv i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  br label %190

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sdiv i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  br label %190

71:                                               ; preds = %2
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %72, i32* %77, align 4
  br label %190

78:                                               ; preds = %2
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, -4
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sdiv i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  br label %190

86:                                               ; preds = %2
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @dreq0_write(i32* %87, i32 %88)
  br label %190

90:                                               ; preds = %2
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 257
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sdiv i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  br label %190

98:                                               ; preds = %2
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sdiv i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, -16
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, 15
  %108 = or i32 %105, %107
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %3, align 4
  %112 = sdiv i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 (...) @SekCyclesDone()
  %118 = call i32 @p32x_pwm_write16(i32 %115, i32 %116, i32* null, i32 %117)
  br label %190

119:                                              ; preds = %2
  %120 = load i32, i32* %3, align 4
  %121 = and i32 %120, 48
  %122 = icmp eq i32 %121, 32
  br i1 %122, label %123, label %175

123:                                              ; preds = %119
  %124 = call i32 (...) @SekCyclesDone()
  store i32 %124, i32* %6, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sdiv i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %123
  br label %190

134:                                              ; preds = %123
  %135 = load i32, i32* %3, align 4
  %136 = and i32 %135, 15
  %137 = sdiv i32 %136, 2
  %138 = shl i32 1, %137
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 1), align 8
  %140 = load i32, i32* %7, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @p32x_sync_sh2s(i32 %144)
  br label %146

146:                                              ; preds = %143, %134
  %147 = load i32, i32* %4, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %3, align 4
  %150 = sdiv i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load i32*, i32** @sh2s, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* @SH2_STATE_CPOLL, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @p32x_sh2_poll_event(i32* %154, i32 %155, i32 %156)
  %158 = load i32*, i32** @sh2s, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* @SH2_STATE_CPOLL, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @p32x_sh2_poll_event(i32* %159, i32 %160, i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 1), align 8
  %165 = or i32 %164, %163
  store i32 %165, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 1), align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @msh2, i32 0, i32 0), align 8
  %168 = trunc i64 %167 to i32
  %169 = sub nsw i32 %166, %168
  %170 = icmp sgt i32 %169, 120
  br i1 %170, label %171, label %174

171:                                              ; preds = %146
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @p32x_sync_sh2s(i32 %172)
  br label %174

174:                                              ; preds = %171, %146
  br label %190

175:                                              ; preds = %119
  %176 = load i32, i32* %3, align 4
  %177 = and i32 %176, 48
  %178 = icmp eq i32 %177, 48
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i32, i32* %3, align 4
  %181 = load i32, i32* %4, align 4
  %182 = call i32 (...) @SekCyclesDone()
  %183 = call i32 @p32x_pwm_write16(i32 %180, i32 %181, i32* null, i32 %182)
  br label %190

184:                                              ; preds = %175
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  %188 = load i32, i32* %4, align 4
  %189 = call i32 @p32x_reg_write8(i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %179, %174, %133, %98, %90, %86, %78, %71, %63, %55, %47, %25
  ret void
}

declare dso_local i32 @p32x_reset_sh2s(...) #1

declare dso_local i32 @dreq0_write(i32*, i32) #1

declare dso_local i32 @p32x_pwm_write16(i32, i32, i32*, i32) #1

declare dso_local i32 @SekCyclesDone(...) #1

declare dso_local i32 @p32x_sync_sh2s(i32) #1

declare dso_local i32 @p32x_sh2_poll_event(i32*, i32, i32) #1

declare dso_local i32 @p32x_reg_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
