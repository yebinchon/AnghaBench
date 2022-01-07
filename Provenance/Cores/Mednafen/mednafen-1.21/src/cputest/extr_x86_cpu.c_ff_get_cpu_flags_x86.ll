; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/cputest/extr_x86_cpu.c_ff_get_cpu_flags_x86.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/cputest/extr_x86_cpu.c_ff_get_cpu_flags_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { [3 x i32] }

@CPUTEST_FLAG_CMOV = common dso_local global i32 0, align 4
@CPUTEST_FLAG_MMX = common dso_local global i32 0, align 4
@CPUTEST_FLAG_MMX2 = common dso_local global i32 0, align 4
@CPUTEST_FLAG_SSE = common dso_local global i32 0, align 4
@CPUTEST_FLAG_SSE2 = common dso_local global i32 0, align 4
@CPUTEST_FLAG_SSE3 = common dso_local global i32 0, align 4
@CPUTEST_FLAG_SSSE3 = common dso_local global i32 0, align 4
@CPUTEST_FLAG_SSE4 = common dso_local global i32 0, align 4
@CPUTEST_FLAG_SSE42 = common dso_local global i32 0, align 4
@CPUTEST_FLAG_AVX = common dso_local global i32 0, align 4
@CPUTEST_FLAG_3DNOW = common dso_local global i32 0, align 4
@CPUTEST_FLAG_3DNOWEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@CPUTEST_FLAG_SSE2SLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@CPUTEST_FLAG_SSE3SLOW = common dso_local global i32 0, align 4
@CPUTEST_FLAG_ATOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_cpu_flags_x86() #0 {
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
  %12 = alloca %union.anon, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = bitcast %union.anon* %12 to [3 x i32]*
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = bitcast %union.anon* %12 to [3 x i32]*
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.anon* %12 to [3 x i32]*
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpuid(i32 0, i32 %13, i32 %16, i32 %19, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 1
  br i1 %25, label %26, label %128

26:                                               ; preds = %0
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @cpuid(i32 1, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %2, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 15
  %35 = load i32, i32* %2, align 4
  %36 = ashr i32 %35, 20
  %37 = and i32 %36, 255
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %2, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 15
  %42 = load i32, i32* %2, align 4
  %43 = ashr i32 %42, 12
  %44 = and i32 %43, 240
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 32768
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %26
  %50 = load i32, i32* @CPUTEST_FLAG_CMOV, align 4
  %51 = load i32, i32* %1, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %1, align 4
  br label %53

53:                                               ; preds = %49, %26
  %54 = load i32, i32* %8, align 4
  %55 = and i32 %54, 8388608
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @CPUTEST_FLAG_MMX, align 4
  %59 = load i32, i32* %1, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 33554432
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @CPUTEST_FLAG_MMX2, align 4
  %67 = load i32, i32* @CPUTEST_FLAG_SSE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %1, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 67108864
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @CPUTEST_FLAG_SSE2, align 4
  %77 = load i32, i32* %1, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %1, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @CPUTEST_FLAG_SSE3, align 4
  %85 = load i32, i32* %1, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %1, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, 512
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* @CPUTEST_FLAG_SSSE3, align 4
  %93 = load i32, i32* %1, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %1, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, 524288
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @CPUTEST_FLAG_SSE4, align 4
  %101 = load i32, i32* %1, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %1, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, 1048576
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* @CPUTEST_FLAG_SSE42, align 4
  %109 = load i32, i32* %1, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, 402653184
  %114 = icmp eq i32 %113, 402653184
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @xgetbv(i32 0, i32 %116, i32 %117)
  %119 = load i32, i32* %2, align 4
  %120 = and i32 %119, 6
  %121 = icmp eq i32 %120, 6
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i32, i32* @CPUTEST_FLAG_AVX, align 4
  %124 = load i32, i32* %1, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %1, align 4
  br label %126

126:                                              ; preds = %122, %115
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %0
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @cpuid(i32 -2147483648, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %7, align 4
  %135 = icmp uge i32 %134, -2147483647
  br i1 %135, label %136, label %192

136:                                              ; preds = %128
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @cpuid(i32 -2147483647, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = and i32 %142, -2147483648
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i32, i32* @CPUTEST_FLAG_3DNOW, align 4
  %147 = load i32, i32* %1, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %1, align 4
  br label %149

149:                                              ; preds = %145, %136
  %150 = load i32, i32* %9, align 4
  %151 = and i32 %150, 1073741824
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* @CPUTEST_FLAG_3DNOWEXT, align 4
  %155 = load i32, i32* %1, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %1, align 4
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, 8388608
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* @CPUTEST_FLAG_MMX, align 4
  %163 = load i32, i32* %1, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %1, align 4
  br label %165

165:                                              ; preds = %161, %157
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 4194304
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* @CPUTEST_FLAG_MMX2, align 4
  %171 = load i32, i32* %1, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %1, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = bitcast %union.anon* %12 to [12 x i8]*
  %175 = getelementptr inbounds [12 x i8], [12 x i8]* %174, i64 0, i64 0
  %176 = call i32 @strncmp(i8* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %1, align 4
  %180 = load i32, i32* @CPUTEST_FLAG_SSE2, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %178
  %184 = load i32, i32* %4, align 4
  %185 = and i32 %184, 64
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %183
  %188 = load i32, i32* @CPUTEST_FLAG_SSE2SLOW, align 4
  %189 = load i32, i32* %1, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %1, align 4
  br label %191

191:                                              ; preds = %187, %183, %178, %173
  br label %192

192:                                              ; preds = %191, %128
  %193 = bitcast %union.anon* %12 to [12 x i8]*
  %194 = getelementptr inbounds [12 x i8], [12 x i8]* %193, i64 0, i64 0
  %195 = call i32 @strncmp(i8* %194, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %243, label %197

197:                                              ; preds = %192
  %198 = load i32, i32* %10, align 4
  %199 = icmp eq i32 %198, 6
  br i1 %199, label %200, label %232

200:                                              ; preds = %197
  %201 = load i32, i32* %11, align 4
  %202 = icmp eq i32 %201, 9
  br i1 %202, label %209, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = icmp eq i32 %204, 13
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %11, align 4
  %208 = icmp eq i32 %207, 14
  br i1 %208, label %209, label %232

209:                                              ; preds = %206, %203, %200
  %210 = load i32, i32* %1, align 4
  %211 = load i32, i32* @CPUTEST_FLAG_SSE2, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load i32, i32* @CPUTEST_FLAG_SSE2SLOW, align 4
  %216 = load i32, i32* @CPUTEST_FLAG_SSE2, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* %1, align 4
  %219 = xor i32 %218, %217
  store i32 %219, i32* %1, align 4
  br label %220

220:                                              ; preds = %214, %209
  %221 = load i32, i32* %1, align 4
  %222 = load i32, i32* @CPUTEST_FLAG_SSE3, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load i32, i32* @CPUTEST_FLAG_SSE3SLOW, align 4
  %227 = load i32, i32* @CPUTEST_FLAG_SSE3, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* %1, align 4
  %230 = xor i32 %229, %228
  store i32 %230, i32* %1, align 4
  br label %231

231:                                              ; preds = %225, %220
  br label %232

232:                                              ; preds = %231, %206, %197
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 6
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load i32, i32* %11, align 4
  %237 = icmp eq i32 %236, 28
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load i32, i32* @CPUTEST_FLAG_ATOM, align 4
  %240 = load i32, i32* %1, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %1, align 4
  br label %242

242:                                              ; preds = %238, %235, %232
  br label %243

243:                                              ; preds = %242, %192
  %244 = load i32, i32* %1, align 4
  ret i32 %244
}

declare dso_local i32 @cpuid(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xgetbv(i32, i32, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
