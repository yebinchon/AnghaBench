; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttcompatgetflags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttcompatgetflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32 }

@IXOFF = common dso_local global i32 0, align 4
@TANDEM = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@CRMOD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@PASS8 = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@ANYP = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@ODDP = common dso_local global i32 0, align 4
@EVENP = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@CBREAK = common dso_local global i32 0, align 4
@RAW = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@LITOUT = common dso_local global i32 0, align 4
@MDMBUF = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@NOHANG = common dso_local global i32 0, align 4
@OXTABS = common dso_local global i32 0, align 4
@XTABS = common dso_local global i32 0, align 4
@ECHOE = common dso_local global i32 0, align 4
@CRTERA = common dso_local global i32 0, align 4
@CRTBS = common dso_local global i32 0, align 4
@ECHOKE = common dso_local global i32 0, align 4
@CRTKIL = common dso_local global i32 0, align 4
@ECHOPRT = common dso_local global i32 0, align 4
@PRTERA = common dso_local global i32 0, align 4
@ECHOCTL = common dso_local global i32 0, align 4
@CTLECH = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@DECCTQ = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@TOSTOP = common dso_local global i32 0, align 4
@FLUSHO = common dso_local global i32 0, align 4
@PENDIN = common dso_local global i32 0, align 4
@NOFLSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @ttcompatgetflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttcompatgetflags(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %2, align 8
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.tty*, %struct.tty** %2, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = getelementptr inbounds %struct.tty, %struct.tty* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IXOFF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @TANDEM, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ICRNL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @ONLCR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @CRMOD, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CSIZE, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @CS8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* @PASS8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ISTRIP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @ANYP, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %48
  br label %93

61:                                               ; preds = %42
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @PARENB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @INPCK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @PARODD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @ODDP, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @EVENP, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %91

85:                                               ; preds = %66
  %86 = load i32, i32* @EVENP, align 4
  %87 = load i32, i32* @ODDP, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %85, %84
  br label %92

92:                                               ; preds = %91, %61
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @ICANON, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @INPCK, align 4
  %101 = load i32, i32* @ISTRIP, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IXON, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %99, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @IEXTEN, align 4
  %110 = load i32, i32* @ISIG, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @CSIZE, align 4
  %117 = load i32, i32* @PARENB, align 4
  %118 = or i32 %116, %117
  %119 = and i32 %115, %118
  %120 = load i32, i32* @CS8, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %114, %107, %98
  %123 = load i32, i32* @CBREAK, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %130

126:                                              ; preds = %114
  %127 = load i32, i32* @RAW, align 4
  %128 = load i32, i32* %7, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %93
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @RAW, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @OPOST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @CSIZE, align 4
  %144 = load i32, i32* @PARENB, align 4
  %145 = or i32 %143, %144
  %146 = and i32 %142, %145
  %147 = load i32, i32* @CS8, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141
  %150 = load i32, i32* @LITOUT, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %141, %136, %131
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* @MDMBUF, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @MDMBUF, align 4
  %160 = load i32, i32* %7, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @HUPCL, align 4
  %165 = and i32 %163, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = load i32, i32* @NOHANG, align 4
  %169 = load i32, i32* %7, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @OXTABS, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @XTABS, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* @ECHOE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @CRTERA, align 4
  %187 = load i32, i32* @CRTBS, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %7, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %185, %180
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @ECHOKE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %191
  %197 = load i32, i32* @CRTKIL, align 4
  %198 = load i32, i32* @CRTBS, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* %7, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %196, %191
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @ECHOPRT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  %208 = load i32, i32* @PRTERA, align 4
  %209 = load i32, i32* %7, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %207, %202
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* @ECHOCTL, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = load i32, i32* @CTLECH, align 4
  %218 = load i32, i32* %7, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %216, %211
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @IXANY, align 4
  %223 = and i32 %221, %222
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* @DECCTQ, align 4
  %227 = load i32, i32* %7, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %225, %220
  %230 = load i32, i32* %4, align 4
  %231 = load i32, i32* @ECHO, align 4
  %232 = load i32, i32* @TOSTOP, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @FLUSHO, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @PENDIN, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @NOFLSH, align 4
  %239 = or i32 %237, %238
  %240 = and i32 %230, %239
  %241 = load i32, i32* %7, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* %7, align 4
  ret i32 %243
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
