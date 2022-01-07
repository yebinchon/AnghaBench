; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_Update_Counter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_Update_Counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEY_CHAN1 = common dso_local global i32 0, align 4
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_CH1_179 = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_DivNMax = common dso_local global i32* null, align 8
@POKEY_Base_mult = common dso_local global i32* null, align 8
@ANTIC_LINE_C = common dso_local global i32 0, align 4
@POKEY_CHAN2 = common dso_local global i32 0, align 4
@POKEY_CH1_CH2 = common dso_local global i32 0, align 4
@POKEY_CHAN4 = common dso_local global i32 0, align 4
@POKEY_CH3_CH4 = common dso_local global i32 0, align 4
@POKEY_CH3_179 = common dso_local global i32 0, align 4
@POKEY_CHAN3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Update_Counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Update_Counter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @POKEY_CHAN1, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = load i32*, i32** @POKEY_AUDCTL, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @POKEY_CH1_179, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load i32*, i32** @POKEY_AUDF, align 8
  %17 = load i32, i32* @POKEY_CHAN1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 4
  %22 = load i32*, i32** @POKEY_DivNMax, align 8
  %23 = load i32, i32* @POKEY_CHAN1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  br label %41

26:                                               ; preds = %8
  %27 = load i32*, i32** @POKEY_AUDF, align 8
  %28 = load i32, i32* @POKEY_CHAN1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32*, i32** @POKEY_Base_mult, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load i32*, i32** @POKEY_DivNMax, align 8
  %38 = load i32, i32* @POKEY_CHAN1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %26, %15
  %42 = load i32*, i32** @POKEY_DivNMax, align 8
  %43 = load i32, i32* @POKEY_CHAN1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ANTIC_LINE_C, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load i32, i32* @ANTIC_LINE_C, align 4
  %51 = load i32*, i32** @POKEY_DivNMax, align 8
  %52 = load i32, i32* @POKEY_CHAN1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %41
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @POKEY_CHAN2, align 4
  %59 = shl i32 1, %58
  %60 = and i32 %57, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %147

62:                                               ; preds = %56
  %63 = load i32*, i32** @POKEY_AUDCTL, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @POKEY_CH1_CH2, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %117

69:                                               ; preds = %62
  %70 = load i32*, i32** @POKEY_AUDCTL, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @POKEY_CH1_179, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load i32*, i32** @POKEY_AUDF, align 8
  %78 = load i32, i32* @POKEY_CHAN2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 256
  %83 = load i32*, i32** @POKEY_AUDF, align 8
  %84 = load i32, i32* @POKEY_CHAN1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %82, %87
  %89 = add nsw i32 %88, 7
  %90 = load i32*, i32** @POKEY_DivNMax, align 8
  %91 = load i32, i32* @POKEY_CHAN2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %116

94:                                               ; preds = %69
  %95 = load i32*, i32** @POKEY_AUDF, align 8
  %96 = load i32, i32* @POKEY_CHAN2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 256
  %101 = load i32*, i32** @POKEY_AUDF, align 8
  %102 = load i32, i32* @POKEY_CHAN1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %100, %105
  %107 = add nsw i32 %106, 1
  %108 = load i32*, i32** @POKEY_Base_mult, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = load i32*, i32** @POKEY_DivNMax, align 8
  %113 = load i32, i32* @POKEY_CHAN2, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %94, %76
  br label %132

117:                                              ; preds = %62
  %118 = load i32*, i32** @POKEY_AUDF, align 8
  %119 = load i32, i32* @POKEY_CHAN2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32*, i32** @POKEY_Base_mult, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load i32*, i32** @POKEY_DivNMax, align 8
  %129 = load i32, i32* @POKEY_CHAN2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %117, %116
  %133 = load i32*, i32** @POKEY_DivNMax, align 8
  %134 = load i32, i32* @POKEY_CHAN2, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ANTIC_LINE_C, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %132
  %141 = load i32, i32* @ANTIC_LINE_C, align 4
  %142 = load i32*, i32** @POKEY_DivNMax, align 8
  %143 = load i32, i32* @POKEY_CHAN2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140, %132
  br label %147

147:                                              ; preds = %146, %56
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* @POKEY_CHAN4, align 4
  %150 = shl i32 1, %149
  %151 = and i32 %148, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %236

153:                                              ; preds = %147
  %154 = load i32*, i32** @POKEY_AUDCTL, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @POKEY_CH3_CH4, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %206

160:                                              ; preds = %153
  %161 = load i32*, i32** @POKEY_AUDCTL, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @POKEY_CH3_179, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %184

167:                                              ; preds = %160
  %168 = load i32*, i32** @POKEY_AUDF, align 8
  %169 = load i32, i32* @POKEY_CHAN4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %172, 256
  %174 = load i32*, i32** @POKEY_AUDF, align 8
  %175 = load i64, i64* @POKEY_CHAN3, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %173, %177
  %179 = add nsw i32 %178, 7
  %180 = load i32*, i32** @POKEY_DivNMax, align 8
  %181 = load i32, i32* @POKEY_CHAN4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  br label %205

184:                                              ; preds = %160
  %185 = load i32*, i32** @POKEY_AUDF, align 8
  %186 = load i32, i32* @POKEY_CHAN4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 256
  %191 = load i32*, i32** @POKEY_AUDF, align 8
  %192 = load i64, i64* @POKEY_CHAN3, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %190, %194
  %196 = add nsw i32 %195, 1
  %197 = load i32*, i32** @POKEY_Base_mult, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 %196, %199
  %201 = load i32*, i32** @POKEY_DivNMax, align 8
  %202 = load i32, i32* @POKEY_CHAN4, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  br label %205

205:                                              ; preds = %184, %167
  br label %221

206:                                              ; preds = %153
  %207 = load i32*, i32** @POKEY_AUDF, align 8
  %208 = load i32, i32* @POKEY_CHAN4, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32*, i32** @POKEY_Base_mult, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  %217 = load i32*, i32** @POKEY_DivNMax, align 8
  %218 = load i32, i32* @POKEY_CHAN4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %216, i32* %220, align 4
  br label %221

221:                                              ; preds = %206, %205
  %222 = load i32*, i32** @POKEY_DivNMax, align 8
  %223 = load i32, i32* @POKEY_CHAN4, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @ANTIC_LINE_C, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %221
  %230 = load i32, i32* @ANTIC_LINE_C, align 4
  %231 = load i32*, i32** @POKEY_DivNMax, align 8
  %232 = load i32, i32* @POKEY_CHAN4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  store i32 %230, i32* %234, align 4
  br label %235

235:                                              ; preds = %229, %221
  br label %236

236:                                              ; preds = %235, %147
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
