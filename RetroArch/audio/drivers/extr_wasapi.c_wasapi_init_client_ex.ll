; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_client_ex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_client_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 (i32, i32, double, double, i32*, i32*)*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)* }

@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"[WASAPI]: Initializing client (exclusive, %s, %uHz, %ums) ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@AUDCLNT_SHAREMODE_EXCLUSIVE = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_EVENTCALLBACK = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_NOPERSIST = common dso_local global i32 0, align 4
@AUDCLNT_E_BUFFER_SIZE_NOT_ALIGNED = common dso_local global i64 0, align 8
@AUDCLNT_E_ALREADY_INITIALIZED = common dso_local global i64 0, align 8
@AUDCLNT_E_UNSUPPORTED_FORMAT = common dso_local global i64 0, align 8
@AUDCLNT_E_DEVICE_IN_USE = common dso_local global i64 0, align 8
@AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"[WASAPI]: Unsupported format.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32*, i32*, i32)* @wasapi_init_client_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @wasapi_init_client_ex(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %13, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @IID_IAudioClient, align 4
  %26 = load i32, i32* @CLSCTX_ALL, align 4
  %27 = bitcast %struct.TYPE_11__** %13 to i8**
  %28 = call i64 @_IMMDevice_Activate(i32* %24, i32 %25, i32 %26, i32* null, i8** %27)
  store i64 %28, i64* %19, align 8
  %29 = load i64, i64* %19, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %212

33:                                               ; preds = %4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = call i64 @_IAudioClient_GetDevicePeriod(%struct.TYPE_11__* %34, i32* null, double* %16)
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* %19, align 8
  %37 = call i64 @FAILED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %209

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = uitofp i32 %41 to double
  %43 = fmul double %42, 1.000000e+04
  store double %43, double* %17, align 8
  %44 = load double, double* %17, align 8
  %45 = load double, double* %16, align 8
  %46 = fcmp olt double %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load double, double* %16, align 8
  store double %48, double* %17, align 8
  br label %49

49:                                               ; preds = %47, %40
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %195, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %198

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %58, %53
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %191, %63
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %194

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @wasapi_set_format(i32* %10, i32 %75, i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)*, i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = load i32, i32* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 4
  %85 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  %86 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %87 = or i32 %85, %86
  %88 = load double, double* %17, align 8
  %89 = load double, double* %17, align 8
  %90 = call i64 %82(%struct.TYPE_11__* %83, i32 %84, i32 %87, double %88, double %89, i32* %10, i32* null)
  store i64 %90, i64* %19, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* @AUDCLNT_E_BUFFER_SIZE_NOT_ALIGNED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %133

94:                                               ; preds = %67
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %96 = call i64 @_IAudioClient_GetBufferSize(%struct.TYPE_11__* %95, double* %18)
  store i64 %96, i64* %19, align 8
  %97 = load i64, i64* %19, align 8
  %98 = call i64 @FAILED(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %209

101:                                              ; preds = %94
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %103 = call i32 @IFACE_RELEASE(%struct.TYPE_11__* %102)
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @IID_IAudioClient, align 4
  %106 = load i32, i32* @CLSCTX_ALL, align 4
  %107 = bitcast %struct.TYPE_11__** %13 to i8**
  %108 = call i64 @_IMMDevice_Activate(i32* %104, i32 %105, i32 %106, i32* null, i8** %107)
  store i64 %108, i64* %19, align 8
  %109 = load i64, i64* %19, align 8
  %110 = call i64 @FAILED(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %212

113:                                              ; preds = %101
  %114 = load i32, i32* %15, align 4
  %115 = uitofp i32 %114 to double
  %116 = fdiv double 1.000000e+07, %115
  %117 = load double, double* %18, align 8
  %118 = fmul double %116, %117
  %119 = fadd double %118, 5.000000e-01
  store double %119, double* %17, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)*, i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)** %123, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %126 = load i32, i32* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 4
  %127 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  %128 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %129 = or i32 %127, %128
  %130 = load double, double* %17, align 8
  %131 = load double, double* %17, align 8
  %132 = call i64 %124(%struct.TYPE_11__* %125, i32 %126, i32 %129, double %130, double %131, i32* %10, i32* null)
  store i64 %132, i64* %19, align 8
  br label %133

133:                                              ; preds = %113, %67
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* @AUDCLNT_E_ALREADY_INITIALIZED, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %133
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %139 = call i32 @IFACE_RELEASE(%struct.TYPE_11__* %138)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @IID_IAudioClient, align 4
  %142 = load i32, i32* @CLSCTX_ALL, align 4
  %143 = bitcast %struct.TYPE_11__** %13 to i8**
  %144 = call i64 @_IMMDevice_Activate(i32* %140, i32 %141, i32 %142, i32* null, i8** %143)
  store i64 %144, i64* %19, align 8
  %145 = load i64, i64* %19, align 8
  %146 = call i64 @FAILED(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %137
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %212

149:                                              ; preds = %137
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)*, i64 (%struct.TYPE_11__*, i32, i32, double, double, i32*, i32*)** %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %156 = load i32, i32* @AUDCLNT_SHAREMODE_EXCLUSIVE, align 4
  %157 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  %158 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %159 = or i32 %157, %158
  %160 = load double, double* %17, align 8
  %161 = load double, double* %17, align 8
  %162 = call i64 %154(%struct.TYPE_11__* %155, i32 %156, i32 %159, double %160, double %161, i32* %10, i32* null)
  store i64 %162, i64* %19, align 8
  br label %163

163:                                              ; preds = %149, %133
  %164 = load i64, i64* %19, align 8
  %165 = load i64, i64* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load i64, i64* %19, align 8
  %169 = load i64, i64* @AUDCLNT_E_DEVICE_IN_USE, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  br label %209

172:                                              ; preds = %167
  %173 = load i64, i64* %19, align 8
  %174 = load i64, i64* @AUDCLNT_E_EXCLUSIVE_MODE_NOT_ALLOWED, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %209

177:                                              ; preds = %172
  store i32 2, i32* %11, align 4
  br label %194

178:                                              ; preds = %163
  %179 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @wasapi_pref_rate(i32 %180)
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %182, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %178
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  %189 = call i32 @wasapi_pref_rate(i32 %188)
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %186, %178
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  br label %64

194:                                              ; preds = %177, %64
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  br label %50

198:                                              ; preds = %50
  %199 = load i64, i64* %19, align 8
  %200 = call i64 @FAILED(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  br label %209

203:                                              ; preds = %198
  %204 = load i32, i32* %14, align 4
  %205 = load i32*, i32** %7, align 8
  store i32 %204, i32* %205, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32*, i32** %8, align 8
  store i32 %206, i32* %207, align 4
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %208, %struct.TYPE_11__** %5, align 8
  br label %212

209:                                              ; preds = %202, %176, %171, %100, %39
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %211 = call i32 @IFACE_RELEASE(%struct.TYPE_11__* %210)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %212

212:                                              ; preds = %209, %203, %148, %112, %32
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %213
}

declare dso_local i64 @_IMMDevice_Activate(i32*, i32, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @_IAudioClient_GetDevicePeriod(%struct.TYPE_11__*, i32*, double*) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i32, i32) #1

declare dso_local i32 @wasapi_set_format(i32*, i32, i32) #1

declare dso_local i64 @_IAudioClient_GetBufferSize(%struct.TYPE_11__*, double*) #1

declare dso_local i32 @IFACE_RELEASE(%struct.TYPE_11__*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @wasapi_pref_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
