; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_vasnprintf.c_max_room_needed.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_vasnprintf.c_max_room_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32* }

@TYPE_LONGINT = common dso_local global i32 0, align 4
@TYPE_ULONGINT = common dso_local global i32 0, align 4
@CHAR_BIT = common dso_local global i32 0, align 4
@TYPE_LONGDOUBLE = common dso_local global i32 0, align 4
@LDBL_MAX_EXP = common dso_local global double 0.000000e+00, align 8
@DBL_MAX_EXP = common dso_local global double 0.000000e+00, align 8
@LDBL_DIG = common dso_local global double 0.000000e+00, align 8
@DBL_DIG = common dso_local global double 0.000000e+00, align 8
@MB_CUR_MAX = common dso_local global i64 0, align 8
@TYPE_LONGLONGINT = common dso_local global i32 0, align 4
@TYPE_ULONGLONGINT = common dso_local global i32 0, align 4
@TYPE_WIDE_CHAR = common dso_local global i32 0, align 4
@TYPE_WIDE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64, i32, i32, i32, i64, i32, i64, i32)* @MAX_ROOM_NEEDED to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MAX_ROOM_NEEDED(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %216 [
    i32 100, label %22
    i32 105, label %22
    i32 117, label %22
    i32 111, label %61
    i32 120, label %96
    i32 88, label %96
    i32 102, label %131
    i32 70, label %131
    i32 101, label %156
    i32 69, label %156
    i32 103, label %156
    i32 71, label %156
    i32 97, label %161
    i32 65, label %161
    i32 99, label %186
    i32 115, label %187
    i32 112, label %206
  ]

22:                                               ; preds = %9, %9, %9
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @TYPE_LONGINT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @TYPE_ULONGINT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26, %22
  %31 = load i32, i32* @CHAR_BIT, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = uitofp i64 %33 to double
  %35 = fmul double %34, 3.010300e-01
  %36 = fptoui double %35 to i32
  %37 = add i32 %36, 1
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %19, align 8
  br label %48

39:                                               ; preds = %26
  %40 = load i32, i32* @CHAR_BIT, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = uitofp i64 %42 to double
  %44 = fmul double %43, 3.010300e-01
  %45 = fptoui double %44 to i32
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %19, align 8
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %17, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %17, align 8
  store i64 %53, i64* %19, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load i64, i64* %19, align 8
  %56 = load i64, i64* %19, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i64 @xsum(i64 %55, i32 %57)
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %19, align 8
  %60 = call i64 @xsum(i64 %59, i32 1)
  store i64 %60, i64* %19, align 8
  br label %218

61:                                               ; preds = %9
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @TYPE_LONGINT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @TYPE_ULONGINT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @CHAR_BIT, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 8, %71
  %73 = uitofp i64 %72 to double
  %74 = fmul double %73, 3.333340e-01
  %75 = fptoui double %74 to i32
  %76 = add i32 %75, 1
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %19, align 8
  br label %87

78:                                               ; preds = %65
  %79 = load i32, i32* @CHAR_BIT, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = uitofp i64 %81 to double
  %83 = fmul double %82, 3.333340e-01
  %84 = fptoui double %83 to i32
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  store i64 %86, i64* %19, align 8
  br label %87

87:                                               ; preds = %78, %69
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %17, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* %17, align 8
  store i64 %92, i64* %19, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i64, i64* %19, align 8
  %95 = call i64 @xsum(i64 %94, i32 1)
  store i64 %95, i64* %19, align 8
  br label %218

96:                                               ; preds = %9, %9
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @TYPE_LONGINT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* @TYPE_ULONGINT, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @CHAR_BIT, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 8, %106
  %108 = uitofp i64 %107 to double
  %109 = fmul double %108, 2.500000e-01
  %110 = fptoui double %109 to i32
  %111 = add i32 %110, 1
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %19, align 8
  br label %122

113:                                              ; preds = %100
  %114 = load i32, i32* @CHAR_BIT, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = uitofp i64 %116 to double
  %118 = fmul double %117, 2.500000e-01
  %119 = fptoui double %118 to i32
  %120 = add i32 %119, 1
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %19, align 8
  br label %122

122:                                              ; preds = %113, %104
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %17, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i64, i64* %17, align 8
  store i64 %127, i64* %19, align 8
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i64, i64* %19, align 8
  %130 = call i64 @xsum(i64 %129, i32 2)
  store i64 %130, i64* %19, align 8
  br label %218

131:                                              ; preds = %9, %9
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @TYPE_LONGDOUBLE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %131
  %136 = load double, double* @LDBL_MAX_EXP, align 8
  %137 = fmul double %136, 3.010300e-01
  %138 = fmul double %137, 2.000000e+00
  %139 = fptoui double %138 to i32
  %140 = add i32 %139, 1
  %141 = add i32 %140, 10
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %19, align 8
  br label %151

143:                                              ; preds = %131
  %144 = load double, double* @DBL_MAX_EXP, align 8
  %145 = fmul double %144, 3.010300e-01
  %146 = fmul double %145, 2.000000e+00
  %147 = fptoui double %146 to i32
  %148 = add i32 %147, 1
  %149 = add i32 %148, 10
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %19, align 8
  br label %151

151:                                              ; preds = %143, %135
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* %17, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i64 @xsum(i64 %152, i32 %154)
  store i64 %155, i64* %19, align 8
  br label %218

156:                                              ; preds = %9, %9, %9, %9
  store i64 12, i64* %19, align 8
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* %17, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i64 @xsum(i64 %157, i32 %159)
  store i64 %160, i64* %19, align 8
  br label %218

161:                                              ; preds = %9, %9
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @TYPE_LONGDOUBLE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = load double, double* @LDBL_DIG, align 8
  %167 = fmul double %166, 0x3FEA978D4FDF3B64
  %168 = fptoui double %167 to i32
  %169 = add i32 %168, 1
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %19, align 8
  br label %177

171:                                              ; preds = %161
  %172 = load double, double* @DBL_DIG, align 8
  %173 = fmul double %172, 0x3FEA978D4FDF3B64
  %174 = fptoui double %173 to i32
  %175 = add i32 %174, 1
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %19, align 8
  br label %177

177:                                              ; preds = %171, %165
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* %17, align 8
  %180 = icmp ult i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i64, i64* %17, align 8
  store i64 %182, i64* %19, align 8
  br label %183

183:                                              ; preds = %181, %177
  %184 = load i64, i64* %19, align 8
  %185 = call i64 @xsum(i64 %184, i32 12)
  store i64 %185, i64* %19, align 8
  br label %218

186:                                              ; preds = %9
  store i64 1, i64* %19, align 8
  br label %218

187:                                              ; preds = %9
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = load i64, i64* %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %20, align 8
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %187
  %199 = load i8*, i8** %20, align 8
  %200 = load i64, i64* %17, align 8
  %201 = call i64 @local_strnlen(i8* %199, i64 %200)
  store i64 %201, i64* %19, align 8
  br label %205

202:                                              ; preds = %187
  %203 = load i8*, i8** %20, align 8
  %204 = call i64 @strlen(i8* %203)
  store i64 %204, i64* %19, align 8
  br label %205

205:                                              ; preds = %202, %198
  br label %218

206:                                              ; preds = %9
  %207 = load i32, i32* @CHAR_BIT, align 4
  %208 = sext i32 %207 to i64
  %209 = mul i64 8, %208
  %210 = uitofp i64 %209 to double
  %211 = fmul double %210, 2.500000e-01
  %212 = fptoui double %211 to i32
  %213 = add i32 %212, 1
  %214 = add i32 %213, 2
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %19, align 8
  br label %218

216:                                              ; preds = %9
  %217 = call i32 (...) @abort() #3
  unreachable

218:                                              ; preds = %206, %205, %186, %183, %156, %151, %128, %93, %54
  %219 = load i32, i32* %18, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = load i64, i64* %19, align 8
  %223 = load i64, i64* %15, align 8
  %224 = icmp ult i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i64, i64* %15, align 8
  store i64 %226, i64* %19, align 8
  br label %227

227:                                              ; preds = %225, %221
  br label %228

228:                                              ; preds = %227, %218
  %229 = load i64, i64* %19, align 8
  %230 = call i64 @xsum(i64 %229, i32 1)
  store i64 %230, i64* %19, align 8
  %231 = load i64, i64* %19, align 8
  ret i64 %231
}

declare dso_local i64 @xsum(i64, i32) #1

declare dso_local i64 @local_strnlen(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
