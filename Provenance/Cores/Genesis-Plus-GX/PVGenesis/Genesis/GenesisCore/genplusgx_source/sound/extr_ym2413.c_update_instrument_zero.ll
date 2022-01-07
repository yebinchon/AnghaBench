; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_update_instrument_zero.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/sound/extr_ym2413.c_update_instrument_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**, i32, i32* }

@ym2413 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_instrument_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_instrument_zero(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 0), align 8
  %7 = getelementptr inbounds i32*, i32** %6, i64 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32* %9, i32** %3, align 8
  store i64 9, i64* %5, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 1), align 8
  %11 = and i32 %10, 32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 6, i64* %5, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 7
  switch i32 %16, label %210 [
    i32 0, label %17
    i32 1, label %41
    i32 2, label %66
    i32 3, label %89
    i32 4, label %112
    i32 5, label %136
    i32 6, label %161
    i32 7, label %185
  ]

17:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 240
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i64, i64* %4, align 8
  %31 = mul i64 %30, 2
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @set_mul(i64 %31, i32 %34)
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %4, align 8
  br label %18

40:                                               ; preds = %18
  br label %210

41:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 240
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i64, i64* %4, align 8
  %55 = mul i64 %54, 2
  %56 = add i64 %55, 1
  %57 = load i32*, i32** %3, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_mul(i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %46
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %4, align 8
  br label %42

65:                                               ; preds = %42
  br label %210

66:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 240
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i64, i64* %4, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @set_ksl_tl(i64 %79, i32 %82)
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %4, align 8
  br label %67

88:                                               ; preds = %67
  br label %210

89:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 240
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load i64, i64* %4, align 8
  %103 = load i32*, i32** %3, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @set_ksl_wave_fb(i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %101, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %4, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %4, align 8
  br label %90

111:                                              ; preds = %90
  br label %210

112:                                              ; preds = %14
  store i64 0, i64* %4, align 8
  br label %113

113:                                              ; preds = %132, %112
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* %5, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 240
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load i64, i64* %4, align 8
  %126 = mul i64 %125, 2
  %127 = load i32*, i32** %3, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @set_ar_dr(i64 %126, i32 %129)
  br label %131

131:                                              ; preds = %124, %117
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %4, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %4, align 8
  br label %113

135:                                              ; preds = %113
  br label %210

136:                                              ; preds = %14
  store i64 0, i64* %4, align 8
  br label %137

137:                                              ; preds = %157, %136
  %138 = load i64, i64* %4, align 8
  %139 = load i64, i64* %5, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %137
  %142 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %143 = load i64, i64* %4, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 240
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load i64, i64* %4, align 8
  %150 = mul i64 %149, 2
  %151 = add i64 %150, 1
  %152 = load i32*, i32** %3, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @set_ar_dr(i64 %151, i32 %154)
  br label %156

156:                                              ; preds = %148, %141
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %4, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %4, align 8
  br label %137

160:                                              ; preds = %137
  br label %210

161:                                              ; preds = %14
  store i64 0, i64* %4, align 8
  br label %162

162:                                              ; preds = %181, %161
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* %5, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %162
  %167 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %168 = load i64, i64* %4, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 240
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load i64, i64* %4, align 8
  %175 = mul i64 %174, 2
  %176 = load i32*, i32** %3, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 6
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @set_sl_rr(i64 %175, i32 %178)
  br label %180

180:                                              ; preds = %173, %166
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %4, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %4, align 8
  br label %162

184:                                              ; preds = %162
  br label %210

185:                                              ; preds = %14
  store i64 0, i64* %4, align 8
  br label %186

186:                                              ; preds = %206, %185
  %187 = load i64, i64* %4, align 8
  %188 = load i64, i64* %5, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %186
  %191 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ym2413, i32 0, i32 2), align 8
  %192 = load i64, i64* %4, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 240
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load i64, i64* %4, align 8
  %199 = mul i64 %198, 2
  %200 = add i64 %199, 1
  %201 = load i32*, i32** %3, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 7
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @set_sl_rr(i64 %200, i32 %203)
  br label %205

205:                                              ; preds = %197, %190
  br label %206

206:                                              ; preds = %205
  %207 = load i64, i64* %4, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %4, align 8
  br label %186

209:                                              ; preds = %186
  br label %210

210:                                              ; preds = %14, %209, %184, %160, %135, %111, %88, %65, %40
  ret void
}

declare dso_local i32 @set_mul(i64, i32) #1

declare dso_local i32 @set_ksl_tl(i64, i32) #1

declare dso_local i32 @set_ksl_wave_fb(i64, i32) #1

declare dso_local i32 @set_ar_dr(i64, i32) #1

declare dso_local i32 @set_sl_rr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
