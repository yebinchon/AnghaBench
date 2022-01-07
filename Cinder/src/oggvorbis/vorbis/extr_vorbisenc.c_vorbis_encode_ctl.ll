; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_ctl.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_vorbisenc.c_vorbis_encode_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { double, double, double, double, i32, i32, double, i32, double, i32, double, i8*, i32, i32, i64 }
%struct.ovectl_ratemanage_arg = type { double, double, i32, double, double, double, double, i32 }
%struct.ovectl_ratemanage2_arg = type { i32, i32, i32, i32, i32, i32, i32 }

@OV_EINVAL = common dso_local global i32 0, align 4
@OV_EIMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vorbis_encode_ctl(%struct.TYPE_6__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ovectl_ratemanage_arg*, align 8
  %12 = alloca %struct.ovectl_ratemanage_arg*, align 8
  %13 = alloca %struct.ovectl_ratemanage_arg*, align 8
  %14 = alloca %struct.ovectl_ratemanage_arg*, align 8
  %15 = alloca %struct.ovectl_ratemanage2_arg*, align 8
  %16 = alloca %struct.ovectl_ratemanage2_arg*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca double, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %487

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 14
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @OV_EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %489

44:                                               ; preds = %37, %27
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %485 [
    i32 130, label %46
    i32 128, label %87
    i32 131, label %108
    i32 129, label %128
    i32 133, label %172
    i32 132, label %222
    i32 135, label %365
    i32 134, label %372
    i32 137, label %397
    i32 136, label %404
    i32 139, label %427
    i32 138, label %434
  ]

46:                                               ; preds = %44
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to %struct.ovectl_ratemanage_arg*
  store %struct.ovectl_ratemanage_arg* %48, %struct.ovectl_ratemanage_arg** %11, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %53 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load double, double* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  %60 = fdiv double %56, %59
  %61 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %62 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %61, i32 0, i32 1
  store double %60, double* %62, align 8
  %63 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %64 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %63, i32 0, i32 0
  store double %60, double* %64, align 8
  %65 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %66 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %71 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %70, i32 0, i32 3
  store double %69, double* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load double, double* %73, align 8
  %75 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %76 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %75, i32 0, i32 4
  store double %74, double* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load double, double* %78, align 8
  %80 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %81 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %80, i32 0, i32 5
  store double %79, double* %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load double, double* %83, align 8
  %85 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %11, align 8
  %86 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %85, i32 0, i32 6
  store double %84, double* %86, align 8
  store i32 0, i32* %4, align 4
  br label %489

87:                                               ; preds = %44
  %88 = load i8*, i8** %7, align 8
  %89 = bitcast i8* %88 to %struct.ovectl_ratemanage_arg*
  store %struct.ovectl_ratemanage_arg* %89, %struct.ovectl_ratemanage_arg** %12, align 8
  %90 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %12, align 8
  %91 = icmp eq %struct.ovectl_ratemanage_arg* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 12
  store i32 0, i32* %94, align 8
  br label %107

95:                                               ; preds = %87
  %96 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %12, align 8
  %97 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 12
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @vorbis_encode_ctl(%struct.TYPE_6__* %101, i32 131, i8* %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @vorbis_encode_ctl(%struct.TYPE_6__* %104, i32 129, i8* %105)
  br label %107

107:                                              ; preds = %95, %92
  store i32 0, i32* %4, align 4
  br label %489

108:                                              ; preds = %44
  %109 = load i8*, i8** %7, align 8
  %110 = bitcast i8* %109 to %struct.ovectl_ratemanage_arg*
  store %struct.ovectl_ratemanage_arg* %110, %struct.ovectl_ratemanage_arg** %13, align 8
  %111 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %13, align 8
  %112 = icmp eq %struct.ovectl_ratemanage_arg* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  store double 0.000000e+00, double* %115, align 8
  br label %127

116:                                              ; preds = %108
  %117 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %13, align 8
  %118 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %117, i32 0, i32 5
  %119 = load double, double* %118, align 8
  %120 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %13, align 8
  %121 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %120, i32 0, i32 6
  %122 = load double, double* %121, align 8
  %123 = fadd double %119, %122
  %124 = fmul double %123, 5.000000e-01
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store double %124, double* %126, align 8
  br label %127

127:                                              ; preds = %116, %113
  store i32 0, i32* %4, align 4
  br label %489

128:                                              ; preds = %44
  %129 = load i8*, i8** %7, align 8
  %130 = bitcast i8* %129 to %struct.ovectl_ratemanage_arg*
  store %struct.ovectl_ratemanage_arg* %130, %struct.ovectl_ratemanage_arg** %14, align 8
  %131 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %14, align 8
  %132 = icmp eq %struct.ovectl_ratemanage_arg* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store double 0.000000e+00, double* %135, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store double 0.000000e+00, double* %137, align 8
  br label %163

138:                                              ; preds = %128
  %139 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %14, align 8
  %140 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %139, i32 0, i32 3
  %141 = load double, double* %140, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  store double %141, double* %143, align 8
  %144 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %14, align 8
  %145 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %144, i32 0, i32 4
  %146 = load double, double* %145, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  store double %146, double* %148, align 8
  %149 = load %struct.ovectl_ratemanage_arg*, %struct.ovectl_ratemanage_arg** %14, align 8
  %150 = getelementptr inbounds %struct.ovectl_ratemanage_arg, %struct.ovectl_ratemanage_arg* %149, i32 0, i32 0
  %151 = load double, double* %150, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load double, double* %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = fadd double %154, %157
  %159 = fmul double %151, %158
  %160 = fmul double %159, 5.000000e-01
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store double %160, double* %162, align 8
  br label %163

163:                                              ; preds = %138, %133
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load double, double* %165, align 8
  %167 = fcmp olt double %166, 1.280000e+02
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  store double 1.280000e+02, double* %170, align 8
  br label %171

171:                                              ; preds = %168, %163
  store i32 0, i32* %4, align 4
  br label %489

172:                                              ; preds = %44
  %173 = load i8*, i8** %7, align 8
  %174 = bitcast i8* %173 to %struct.ovectl_ratemanage2_arg*
  store %struct.ovectl_ratemanage2_arg* %174, %struct.ovectl_ratemanage2_arg** %15, align 8
  %175 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %176 = icmp eq %struct.ovectl_ratemanage2_arg* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @OV_EINVAL, align 4
  store i32 %178, i32* %4, align 4
  br label %489

179:                                              ; preds = %172
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %184 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load double, double* %186, align 8
  %188 = fdiv double %187, 1.000000e+03
  %189 = fptosi double %188 to i32
  %190 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %191 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load double, double* %193, align 8
  %195 = fdiv double %194, 1.000000e+03
  %196 = fptosi double %195 to i32
  %197 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %198 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load double, double* %200, align 8
  %202 = fdiv double %201, 1.000000e+03
  %203 = fptosi double %202 to i32
  %204 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %205 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %210 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load double, double* %212, align 8
  %214 = fptosi double %213 to i32
  %215 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %216 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %15, align 8
  %221 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 4
  store i32 0, i32* %4, align 4
  br label %489

222:                                              ; preds = %44
  %223 = load i8*, i8** %7, align 8
  %224 = bitcast i8* %223 to %struct.ovectl_ratemanage2_arg*
  store %struct.ovectl_ratemanage2_arg* %224, %struct.ovectl_ratemanage2_arg** %16, align 8
  %225 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %226 = icmp eq %struct.ovectl_ratemanage2_arg* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 12
  store i32 0, i32* %229, align 8
  br label %364

230:                                              ; preds = %222
  %231 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %232 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %230
  %236 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %237 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %242 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %245 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %243, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %240
  %249 = load i32, i32* @OV_EINVAL, align 4
  store i32 %249, i32* %4, align 4
  br label %489

250:                                              ; preds = %240, %235, %230
  %251 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %252 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %270

255:                                              ; preds = %250
  %256 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %257 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %255
  %261 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %262 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %265 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = load i32, i32* @OV_EINVAL, align 4
  store i32 %269, i32* %4, align 4
  br label %489

270:                                              ; preds = %260, %255, %250
  %271 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %272 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %270
  %276 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %277 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %290

280:                                              ; preds = %275
  %281 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %282 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %285 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp sgt i32 %283, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = load i32, i32* @OV_EINVAL, align 4
  store i32 %289, i32* %4, align 4
  br label %489

290:                                              ; preds = %280, %275, %270
  %291 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %292 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = sitofp i32 %293 to double
  %295 = fcmp ole double %294, 0.000000e+00
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  %297 = load i32, i32* @OV_EINVAL, align 4
  store i32 %297, i32* %4, align 4
  br label %489

298:                                              ; preds = %290
  %299 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %300 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = load i32, i32* @OV_EINVAL, align 4
  store i32 %304, i32* %4, align 4
  br label %489

305:                                              ; preds = %298
  %306 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %307 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 4
  %309 = sitofp i32 %308 to double
  %310 = fcmp olt double %309, 0.000000e+00
  br i1 %310, label %311, label %313

311:                                              ; preds = %305
  %312 = load i32, i32* @OV_EINVAL, align 4
  store i32 %312, i32* %4, align 4
  br label %489

313:                                              ; preds = %305
  %314 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %315 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %314, i32 0, i32 5
  %316 = load i32, i32* %315, align 4
  %317 = sitofp i32 %316 to double
  %318 = fcmp ogt double %317, 1.000000e+00
  br i1 %318, label %319, label %321

319:                                              ; preds = %313
  %320 = load i32, i32* @OV_EINVAL, align 4
  store i32 %320, i32* %4, align 4
  br label %489

321:                                              ; preds = %313
  %322 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %323 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %322, i32 0, i32 6
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 12
  store i32 %324, i32* %326, align 8
  %327 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %328 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 %329, 1000
  %331 = sitofp i32 %330 to double
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  store double %331, double* %333, align 8
  %334 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %335 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %336, 1000
  %338 = sitofp i32 %337 to double
  %339 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %339, i32 0, i32 2
  store double %338, double* %340, align 8
  %341 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %342 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = mul nsw i32 %343, 1000
  %345 = sitofp i32 %344 to double
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 3
  store double %345, double* %347, align 8
  %348 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %349 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 4
  store i32 %350, i32* %352, align 8
  %353 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %354 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = sitofp i32 %355 to double
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 0
  store double %356, double* %358, align 8
  %359 = load %struct.ovectl_ratemanage2_arg*, %struct.ovectl_ratemanage2_arg** %16, align 8
  %360 = getelementptr inbounds %struct.ovectl_ratemanage2_arg, %struct.ovectl_ratemanage2_arg* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 4
  br label %364

364:                                              ; preds = %321, %227
  store i32 0, i32* %4, align 4
  br label %489

365:                                              ; preds = %44
  %366 = load i8*, i8** %7, align 8
  %367 = bitcast i8* %366 to double*
  store double* %367, double** %17, align 8
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 6
  %370 = load double, double* %369, align 8
  %371 = load double*, double** %17, align 8
  store double %370, double* %371, align 8
  store i32 0, i32* %4, align 4
  br label %489

372:                                              ; preds = %44
  %373 = load i8*, i8** %7, align 8
  %374 = bitcast i8* %373 to double*
  store double* %374, double** %18, align 8
  %375 = load double*, double** %18, align 8
  %376 = load double, double* %375, align 8
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 6
  store double %376, double* %378, align 8
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 6
  %381 = load double, double* %380, align 8
  %382 = fcmp olt double %381, 2.000000e+00
  br i1 %382, label %383, label %386

383:                                              ; preds = %372
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 6
  store double 2.000000e+00, double* %385, align 8
  br label %386

386:                                              ; preds = %383, %372
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 6
  %389 = load double, double* %388, align 8
  %390 = fcmp ogt double %389, 9.900000e+01
  br i1 %390, label %391, label %394

391:                                              ; preds = %386
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 6
  store double 9.900000e+01, double* %393, align 8
  br label %394

394:                                              ; preds = %391, %386
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 7
  store i32 1, i32* %396, align 8
  store i32 0, i32* %4, align 4
  br label %489

397:                                              ; preds = %44
  %398 = load i8*, i8** %7, align 8
  %399 = bitcast i8* %398 to double*
  store double* %399, double** %19, align 8
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 8
  %402 = load double, double* %401, align 8
  %403 = load double*, double** %19, align 8
  store double %402, double* %403, align 8
  store i32 0, i32* %4, align 4
  br label %489

404:                                              ; preds = %44
  %405 = load i8*, i8** %7, align 8
  %406 = bitcast i8* %405 to double*
  store double* %406, double** %20, align 8
  %407 = load double*, double** %20, align 8
  %408 = load double, double* %407, align 8
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 8
  store double %408, double* %410, align 8
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 8
  %413 = load double, double* %412, align 8
  %414 = fcmp ogt double %413, 0.000000e+00
  br i1 %414, label %415, label %418

415:                                              ; preds = %404
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 8
  store double 0.000000e+00, double* %417, align 8
  br label %418

418:                                              ; preds = %415, %404
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 8
  %421 = load double, double* %420, align 8
  %422 = fcmp olt double %421, -1.500000e+01
  br i1 %422, label %423, label %426

423:                                              ; preds = %418
  %424 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 8
  store double -1.500000e+01, double* %425, align 8
  br label %426

426:                                              ; preds = %423, %418
  store i32 0, i32* %4, align 4
  br label %489

427:                                              ; preds = %44
  %428 = load i8*, i8** %7, align 8
  %429 = bitcast i8* %428 to i32*
  store i32* %429, i32** %21, align 8
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 9
  %432 = load i32, i32* %431, align 8
  %433 = load i32*, i32** %21, align 8
  store i32 %432, i32* %433, align 4
  store i32 0, i32* %4, align 4
  br label %489

434:                                              ; preds = %44
  store double 0.000000e+00, double* %23, align 8
  %435 = load i8*, i8** %7, align 8
  %436 = bitcast i8* %435 to i32*
  store i32* %436, i32** %24, align 8
  %437 = load i32*, i32** %24, align 8
  %438 = load i32, i32* %437, align 4
  %439 = icmp ne i32 %438, 0
  %440 = zext i1 %439 to i32
  %441 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 9
  store i32 %440, i32* %442, align 8
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 9
  %445 = load i32, i32* %444, align 8
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %434
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  br label %452

451:                                              ; preds = %434
  br label %452

452:                                              ; preds = %451, %447
  %453 = phi i32 [ %450, %447 ], [ -1, %451 ]
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 0
  %456 = load double, double* %455, align 8
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 13
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 12
  %462 = load i32, i32* %461, align 8
  %463 = call i8* @get_setup_template(i32 %453, double %456, i32 %459, i32 %462, double* %23)
  store i8* %463, i8** %22, align 8
  %464 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 11
  %466 = load i8*, i8** %465, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %470, label %468

468:                                              ; preds = %452
  %469 = load i32, i32* @OV_EIMPL, align 4
  store i32 %469, i32* %4, align 4
  br label %489

470:                                              ; preds = %452
  %471 = load i8*, i8** %22, align 8
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 11
  store i8* %471, i8** %473, align 8
  %474 = load double, double* %23, align 8
  %475 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 10
  store double %474, double* %476, align 8
  %477 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %482 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %481, i32 0, i32 0
  %483 = load double, double* %482, align 8
  %484 = call i32 @vorbis_encode_setup_setting(%struct.TYPE_6__* %477, i32 %480, double %483)
  store i32 0, i32* %4, align 4
  br label %489

485:                                              ; preds = %44
  %486 = load i32, i32* @OV_EIMPL, align 4
  store i32 %486, i32* %4, align 4
  br label %489

487:                                              ; preds = %3
  %488 = load i32, i32* @OV_EINVAL, align 4
  store i32 %488, i32* %4, align 4
  br label %489

489:                                              ; preds = %487, %485, %470, %468, %427, %426, %397, %394, %365, %364, %319, %311, %303, %296, %288, %268, %248, %179, %177, %171, %127, %107, %46, %42
  %490 = load i32, i32* %4, align 4
  ret i32 %490
}

declare dso_local i8* @get_setup_template(i32, double, i32, i32, double*) #1

declare dso_local i32 @vorbis_encode_setup_setting(%struct.TYPE_6__*, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
