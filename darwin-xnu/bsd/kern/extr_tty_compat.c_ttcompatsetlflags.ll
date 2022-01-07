; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttcompatsetlflags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttcompatsetlflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.termios = type { i32, i32, i32, i32 }

@PARMRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@CRTERA = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@CRTKIL = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@PRTERA = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@CTLECH = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@TANDEM = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@DECCTQ = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@MDMBUF = common dso_local global i32 0, align 4
@NOHANG = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@LITOUT = common dso_local global i32 0, align 4
@PASS8 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ANYP = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.termios*)* @ttcompatsetlflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttcompatsetlflags(%struct.tty* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %10 = load %struct.tty*, %struct.tty** %3, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.termios*, %struct.termios** %4, align 8
  %14 = getelementptr inbounds %struct.termios, %struct.termios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.termios*, %struct.termios** %4, align 8
  %17 = getelementptr inbounds %struct.termios, %struct.termios* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.termios*, %struct.termios** %4, align 8
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.termios*, %struct.termios** %4, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @PARMRK, align 4
  %26 = load i32, i32* @IGNPAR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IGNCR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @INLCR, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CRTERA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @ECHOE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @ECHOE, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CRTKIL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @ECHOKE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @ECHOKE, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @PRTERA, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @ECHOPRT, align 4
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %76

71:                                               ; preds = %62
  %72 = load i32, i32* @ECHOPRT, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @CTLECH, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @ECHOCTL, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %90

85:                                               ; preds = %76
  %86 = load i32, i32* @ECHOCTL, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %85, %81
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @TANDEM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @IXOFF, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %104

99:                                               ; preds = %90
  %100 = load i32, i32* @IXOFF, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @DECCTQ, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @IXANY, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load i32, i32* @IXANY, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %113, %109
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @MDMBUF, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @MDMBUF, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %132

127:                                              ; preds = %118
  %128 = load i32, i32* @MDMBUF, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %127, %123
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @NOHANG, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32, i32* @HUPCL, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %9, align 4
  br label %146

142:                                              ; preds = %132
  %143 = load i32, i32* @HUPCL, align 4
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* @TOSTOP, align 4
  %148 = load i32, i32* @FLUSHO, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @PENDIN, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @NOFLSH, align 4
  %153 = or i32 %151, %152
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %8, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @TOSTOP, align 4
  %159 = load i32, i32* @FLUSHO, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @PENDIN, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @NOFLSH, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %157, %164
  %166 = load i32, i32* %8, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @CSIZE, align 4
  %169 = load i32, i32* @PARENB, align 4
  %170 = or i32 %168, %169
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* @RAW, align 4
  %176 = load i32, i32* @LITOUT, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PASS8, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %174, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %230

182:                                              ; preds = %146
  %183 = load i32, i32* @CS8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* @RAW, align 4
  %188 = load i32, i32* @PASS8, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %182
  %193 = load i32, i32* %5, align 4
  %194 = load i32, i32* @RAW, align 4
  %195 = load i32, i32* @PASS8, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @ANYP, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %193, %198
  %200 = load i32, i32* @PASS8, align 4
  %201 = load i32, i32* @ANYP, align 4
  %202 = or i32 %200, %201
  %203 = icmp eq i32 %199, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %192, %182
  %205 = load i32, i32* @ISTRIP, align 4
  %206 = load i32, i32* %6, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %6, align 4
  br label %213

208:                                              ; preds = %192
  %209 = load i32, i32* @ISTRIP, align 4
  %210 = xor i32 %209, -1
  %211 = load i32, i32* %6, align 4
  %212 = and i32 %211, %210
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %208, %204
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @RAW, align 4
  %216 = load i32, i32* @LITOUT, align 4
  %217 = or i32 %215, %216
  %218 = and i32 %214, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %213
  %221 = load i32, i32* @OPOST, align 4
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %7, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %7, align 4
  br label %229

225:                                              ; preds = %213
  %226 = load i32, i32* @OPOST, align 4
  %227 = load i32, i32* %7, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %225, %220
  br label %242

230:                                              ; preds = %146
  %231 = load i32, i32* @CS7, align 4
  %232 = load i32, i32* @PARENB, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* %9, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* @ISTRIP, align 4
  %237 = load i32, i32* %6, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* @OPOST, align 4
  %240 = load i32, i32* %7, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %230, %229
  %243 = load i32, i32* %6, align 4
  %244 = load %struct.termios*, %struct.termios** %4, align 8
  %245 = getelementptr inbounds %struct.termios, %struct.termios* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %7, align 4
  %247 = load %struct.termios*, %struct.termios** %4, align 8
  %248 = getelementptr inbounds %struct.termios, %struct.termios* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.termios*, %struct.termios** %4, align 8
  %251 = getelementptr inbounds %struct.termios, %struct.termios* %250, i32 0, i32 2
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.termios*, %struct.termios** %4, align 8
  %254 = getelementptr inbounds %struct.termios, %struct.termios* %253, i32 0, i32 3
  store i32 %252, i32* %254, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
