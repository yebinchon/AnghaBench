; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_fffloatscan.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_fffloatscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_MANT_DIG = common dso_local global i32 0, align 4
@FLT_MIN_EXP = common dso_local global i32 0, align 4
@DBL_MANT_DIG = common dso_local global i32 0, align 4
@DBL_MIN_EXP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"infinity\00", align 1
@INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@NAN = common dso_local global double 0.000000e+00, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, i32)* @fffloatscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @fffloatscan(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %29 [
    i32 0, label %14
    i32 1, label %19
    i32 2, label %24
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @FLT_MANT_DIG, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @FLT_MIN_EXP, align 4
  %17 = load i32, i32* %10, align 4
  %18 = sub nsw i32 %16, %17
  store i32 %18, i32* %11, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* @DBL_MANT_DIG, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @DBL_MIN_EXP, align 4
  %22 = load i32, i32* %10, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  br label %30

24:                                               ; preds = %3
  %25 = load i32, i32* @DBL_MANT_DIG, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @DBL_MIN_EXP, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  br label %30

29:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %241

30:                                               ; preds = %24, %19, %14
  br label %31

31:                                               ; preds = %37, %30
  %32 = load i32*, i32** %5, align 8
  %33 = call signext i8 @shgetc(i32* %32)
  %34 = sext i8 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = call i64 @av_isspace(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %31

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 43
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %54

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 45
  %47 = zext i1 %46 to i32
  %48 = mul nsw i32 2, %47
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = call signext i8 @shgetc(i32* %51)
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %44, %41
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %56, 8
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, 32
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* @.str, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %60, %64
  br label %66

66:                                               ; preds = %58, %55
  %67 = phi i1 [ false, %55 ], [ %65, %58 ]
  br i1 %67, label %68, label %79

68:                                               ; preds = %66
  %69 = load i64, i64* %9, align 8
  %70 = icmp ult i64 %69, 7
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32*, i32** %5, align 8
  %73 = call signext i8 @shgetc(i32* %72)
  %74 = sext i8 %73 to i32
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %55

79:                                               ; preds = %66
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = icmp eq i64 %83, 8
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %9, align 8
  %87 = icmp ugt i64 %86, 3
  br i1 %87, label %88, label %116

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88, %82, %79
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %92, 8
  br i1 %93, label %94, label %111

94:                                               ; preds = %91
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @shunget(i32* %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %106, %99
  %101 = load i64, i64* %9, align 8
  %102 = icmp ugt i64 %101, 3
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @shunget(i32* %104)
  br label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %9, align 8
  br label %100

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %91
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @INFINITY, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sitofp i32 %114 to double
  store double %115, double* %4, align 8
  br label %241

116:                                              ; preds = %88, %85
  %117 = load i64, i64* %9, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %116
  store i64 0, i64* %9, align 8
  br label %120

120:                                              ; preds = %141, %119
  %121 = load i64, i64* %9, align 8
  %122 = icmp ult i64 %121, 3
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, 32
  %126 = load i64, i64* %9, align 8
  %127 = getelementptr inbounds [4 x i8], [4 x i8]* @.str.1, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %125, %129
  br label %131

131:                                              ; preds = %123, %120
  %132 = phi i1 [ false, %120 ], [ %130, %123 ]
  br i1 %132, label %133, label %144

133:                                              ; preds = %131
  %134 = load i64, i64* %9, align 8
  %135 = icmp ult i64 %134, 2
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32*, i32** %5, align 8
  %138 = call signext i8 @shgetc(i32* %137)
  %139 = sext i8 %138 to i32
  store i32 %139, i32* %12, align 4
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %9, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %9, align 8
  br label %120

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %116
  %146 = load i64, i64* %9, align 8
  %147 = icmp eq i64 %146, 3
  br i1 %147, label %148, label %204

148:                                              ; preds = %145
  %149 = load i32*, i32** %5, align 8
  %150 = call signext i8 @shgetc(i32* %149)
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 40
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @shunget(i32* %154)
  %156 = load double, double* @NAN, align 8
  store double %156, double* %4, align 8
  br label %241

157:                                              ; preds = %148
  store i64 1, i64* %9, align 8
  br label %158

158:                                              ; preds = %201, %157
  %159 = load i32*, i32** %5, align 8
  %160 = call signext i8 @shgetc(i32* %159)
  %161 = sext i8 %160 to i32
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %12, align 4
  %163 = sub nsw i32 %162, 48
  %164 = icmp ult i32 %163, 10
  br i1 %164, label %176, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %12, align 4
  %167 = sub nsw i32 %166, 65
  %168 = icmp ult i32 %167, 26
  br i1 %168, label %176, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  %171 = sub nsw i32 %170, 97
  %172 = icmp ult i32 %171, 26
  br i1 %172, label %176, label %173

173:                                              ; preds = %169
  %174 = load i32, i32* %12, align 4
  %175 = icmp eq i32 %174, 95
  br i1 %175, label %176, label %177

176:                                              ; preds = %173, %169, %165, %158
  br label %201

177:                                              ; preds = %173
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 41
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load double, double* @NAN, align 8
  store double %181, double* %4, align 8
  br label %241

182:                                              ; preds = %177
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @shunget(i32* %183)
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @EINVAL, align 4
  store i32 %188, i32* @errno, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @shlim(i32* %189, i32 0)
  store double 0.000000e+00, double* %4, align 8
  br label %241

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %196, %191
  %193 = load i64, i64* %9, align 8
  %194 = add i64 %193, -1
  store i64 %194, i64* %9, align 8
  %195 = icmp ne i64 %193, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load i32*, i32** %5, align 8
  %198 = call i32 @shunget(i32* %197)
  br label %192

199:                                              ; preds = %192
  %200 = load double, double* @NAN, align 8
  store double %200, double* %4, align 8
  br label %241

201:                                              ; preds = %176
  %202 = load i64, i64* %9, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %9, align 8
  br label %158

204:                                              ; preds = %145
  %205 = load i64, i64* %9, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %204
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @shunget(i32* %208)
  %210 = load i32, i32* @EINVAL, align 4
  store i32 %210, i32* @errno, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = call i32 @shlim(i32* %211, i32 0)
  store double 0.000000e+00, double* %4, align 8
  br label %241

213:                                              ; preds = %204
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %214, 48
  br i1 %215, label %216, label %233

216:                                              ; preds = %213
  %217 = load i32*, i32** %5, align 8
  %218 = call signext i8 @shgetc(i32* %217)
  %219 = sext i8 %218 to i32
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = or i32 %220, 32
  %222 = icmp eq i32 %221, 120
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load i32*, i32** %5, align 8
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %7, align 4
  %229 = call double @hexfloat(i32* %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store double %229, double* %4, align 8
  br label %241

230:                                              ; preds = %216
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @shunget(i32* %231)
  store i32 48, i32* %12, align 4
  br label %233

233:                                              ; preds = %230, %213
  %234 = load i32*, i32** %5, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %7, align 4
  %240 = call double @decfloat(i32* %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  store double %240, double* %4, align 8
  br label %241

241:                                              ; preds = %233, %223, %207, %199, %187, %180, %153, %111, %29
  %242 = load double, double* %4, align 8
  ret double %242
}

declare dso_local i64 @av_isspace(i32) #1

declare dso_local signext i8 @shgetc(i32*) #1

declare dso_local i32 @shunget(i32*) #1

declare dso_local i32 @shlim(i32*, i32) #1

declare dso_local double @hexfloat(i32*, i32, i32, i32, i32) #1

declare dso_local double @decfloat(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
