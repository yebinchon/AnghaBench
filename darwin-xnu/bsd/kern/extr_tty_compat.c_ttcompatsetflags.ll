; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttcompatsetflags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttcompatsetflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.termios = type { i32, i32, i32, i32 }

@RAW = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IMAXBEL = common dso_local global i32 0, align 4
@XTABS = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@CBREAK = common dso_local global i32 0, align 4
@CRMOD = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@LITOUT = common dso_local global i32 0, align 4
@PASS8 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ANYP = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@EVENP = common dso_local global i32 0, align 4
@ODDP = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@TANDEM = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@DECCTQ = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, %struct.termios*)* @ttcompatsetflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttcompatsetflags(%struct.tty* %0, %struct.termios* %1) #0 {
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
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RAW, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %2
  %30 = load i32, i32* @IGNBRK, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @ECHOCTL, align 4
  %32 = load i32, i32* @ISIG, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ICANON, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @IEXTEN, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %115

41:                                               ; preds = %2
  %42 = load i32, i32* @PARMRK, align 4
  %43 = load i32, i32* @IGNPAR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IGNCR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @INLCR, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @BRKINT, align 4
  %53 = load i32, i32* @IXON, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @IMAXBEL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* @ISIG, align 4
  %60 = load i32, i32* @IEXTEN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @ECHOCTL, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @XTABS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %41
  %71 = load i32, i32* @OXTABS, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  br label %79

74:                                               ; preds = %41
  %75 = load i32, i32* @OXTABS, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @CBREAK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load i32, i32* @ICANON, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %93

89:                                               ; preds = %79
  %90 = load i32, i32* @ICANON, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @CRMOD, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load i32, i32* @ICRNL, align 4
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @ONLCR, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %114

105:                                              ; preds = %93
  %106 = load i32, i32* @ICRNL, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* @ONLCR, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %105, %98
  br label %115

115:                                              ; preds = %114, %29
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @ECHO, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load i32, i32* @ECHO, align 4
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %129

124:                                              ; preds = %115
  %125 = load i32, i32* @ECHO, align 4
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %124, %120
  %130 = load i32, i32* @CSIZE, align 4
  %131 = load i32, i32* @PARENB, align 4
  %132 = or i32 %130, %131
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @RAW, align 4
  %138 = load i32, i32* @LITOUT, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @PASS8, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %136, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %192

144:                                              ; preds = %129
  %145 = load i32, i32* @CS8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @RAW, align 4
  %150 = load i32, i32* @PASS8, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %144
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @RAW, align 4
  %157 = load i32, i32* @PASS8, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @ANYP, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %155, %160
  %162 = load i32, i32* @PASS8, align 4
  %163 = load i32, i32* @ANYP, align 4
  %164 = or i32 %162, %163
  %165 = icmp eq i32 %161, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %154, %144
  %167 = load i32, i32* @ISTRIP, align 4
  %168 = load i32, i32* %6, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %6, align 4
  br label %175

170:                                              ; preds = %154
  %171 = load i32, i32* @ISTRIP, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, %172
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %170, %166
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @RAW, align 4
  %178 = load i32, i32* @LITOUT, align 4
  %179 = or i32 %177, %178
  %180 = and i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %175
  %183 = load i32, i32* @OPOST, align 4
  %184 = xor i32 %183, -1
  %185 = load i32, i32* %7, align 4
  %186 = and i32 %185, %184
  store i32 %186, i32* %7, align 4
  br label %191

187:                                              ; preds = %175
  %188 = load i32, i32* @OPOST, align 4
  %189 = load i32, i32* %7, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %187, %182
  br label %204

192:                                              ; preds = %129
  %193 = load i32, i32* @CS7, align 4
  %194 = load i32, i32* @PARENB, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* @ISTRIP, align 4
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* @OPOST, align 4
  %202 = load i32, i32* %7, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %192, %191
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* @EVENP, align 4
  %207 = load i32, i32* @ODDP, align 4
  %208 = or i32 %206, %207
  %209 = and i32 %205, %208
  %210 = load i32, i32* @EVENP, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %204
  %213 = load i32, i32* @INPCK, align 4
  %214 = load i32, i32* %6, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* @PARODD, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %9, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %9, align 4
  br label %241

220:                                              ; preds = %204
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @EVENP, align 4
  %223 = load i32, i32* @ODDP, align 4
  %224 = or i32 %222, %223
  %225 = and i32 %221, %224
  %226 = load i32, i32* @ODDP, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %220
  %229 = load i32, i32* @INPCK, align 4
  %230 = load i32, i32* %6, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* @PARODD, align 4
  %233 = load i32, i32* %9, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %9, align 4
  br label %240

235:                                              ; preds = %220
  %236 = load i32, i32* @INPCK, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %6, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %6, align 4
  br label %240

240:                                              ; preds = %235, %228
  br label %241

241:                                              ; preds = %240, %212
  %242 = load i32, i32* %5, align 4
  %243 = load i32, i32* @TANDEM, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %241
  %247 = load i32, i32* @IXOFF, align 4
  %248 = load i32, i32* %6, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %6, align 4
  br label %255

250:                                              ; preds = %241
  %251 = load i32, i32* @IXOFF, align 4
  %252 = xor i32 %251, -1
  %253 = load i32, i32* %6, align 4
  %254 = and i32 %253, %252
  store i32 %254, i32* %6, align 4
  br label %255

255:                                              ; preds = %250, %246
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* @DECCTQ, align 4
  %258 = and i32 %256, %257
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load i32, i32* @IXANY, align 4
  %262 = load i32, i32* %6, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %6, align 4
  br label %269

264:                                              ; preds = %255
  %265 = load i32, i32* @IXANY, align 4
  %266 = xor i32 %265, -1
  %267 = load i32, i32* %6, align 4
  %268 = and i32 %267, %266
  store i32 %268, i32* %6, align 4
  br label %269

269:                                              ; preds = %264, %260
  %270 = load i32, i32* %6, align 4
  %271 = load %struct.termios*, %struct.termios** %4, align 8
  %272 = getelementptr inbounds %struct.termios, %struct.termios* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load i32, i32* %7, align 4
  %274 = load %struct.termios*, %struct.termios** %4, align 8
  %275 = getelementptr inbounds %struct.termios, %struct.termios* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = load i32, i32* %8, align 4
  %277 = load %struct.termios*, %struct.termios** %4, align 8
  %278 = getelementptr inbounds %struct.termios, %struct.termios* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.termios*, %struct.termios** %4, align 8
  %281 = getelementptr inbounds %struct.termios, %struct.termios* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
