; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_client.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"[WASAPI]: IAudioClient::GetDevicePeriod failed with error 0x%.8X.\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"[WASAPI]: IAudioClient::GetStreamLatency failed with error 0x%.8X.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"[WASAPI]: IAudioClient::GetBufferSize failed with error 0x%.8X.\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"[WASAPI]: Client initialized (%s, %s, %uHz, %.1fms).\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"[WASAPI]: Client's buffer length is %u frames (%.1fms).\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"[WASAPI]: Device period is %.1fms (%lld frames).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32)* @wasapi_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wasapi_init_client(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store double 0.000000e+00, double* %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32* @wasapi_init_client_ex(i32* %22, i32* %23, i32* %24, i32 %25)
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %21
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32* @wasapi_init_client_sh(i32* %30, i32* %31, i32* %32, i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32*, i32** %8, align 8
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %29
  br label %40

40:                                               ; preds = %39, %21
  br label %61

41:                                               ; preds = %5
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32* @wasapi_init_client_sh(i32* %42, i32* %43, i32* %44, i32 %45)
  store i32* %46, i32** %13, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %41
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32* @wasapi_init_client_ex(i32* %50, i32* %51, i32* %52, i32 %53)
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %49
  br label %60

60:                                               ; preds = %59, %41
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i32* null, i32** %6, align 8
  br label %155

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @_IAudioClient_GetDevicePeriod(i32* %70, i32* null, i32* %15)
  store i32 %71, i32* %12, align 4
  br label %75

72:                                               ; preds = %65
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @_IAudioClient_GetDevicePeriod(i32* %73, i32* %15, i32* null)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %12, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @_IAudioClient_GetStreamLatency(i32* %87, i32* %16)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %86
  br label %96

96:                                               ; preds = %95, %82
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @_IAudioClient_GetBufferSize(i32* %97, double* %17)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i64 @FAILED(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load double, double* %17, align 8
  %111 = fmul double %110, 1.000000e+03
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = uitofp i32 %113 to double
  %115 = fdiv double %111, %114
  store double %115, double* %14, align 8
  br label %122

116:                                              ; preds = %105
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add i32 %117, %118
  %120 = uitofp i32 %119 to double
  %121 = fdiv double %120, 1.000000e+04
  store double %121, double* %14, align 8
  br label %122

122:                                              ; preds = %116, %109
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load double, double* %14, align 8
  %136 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %132, i32 %134, double %135)
  %137 = load double, double* %17, align 8
  %138 = load double, double* %17, align 8
  %139 = fmul double %138, 1.000000e+03
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %140, align 4
  %142 = uitofp i32 %141 to double
  %143 = fdiv double %139, %142
  %144 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), double %137, double %143)
  %145 = load i32, i32* %15, align 4
  %146 = uitofp i32 %145 to double
  %147 = fdiv double %146, 1.000000e+04
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %149, align 4
  %151 = mul i32 %148, %150
  %152 = udiv i32 %151, 10000000
  %153 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), double %147, i32 %152)
  %154 = load i32*, i32** %13, align 8
  store i32* %154, i32** %6, align 8
  br label %155

155:                                              ; preds = %122, %64
  %156 = load i32*, i32** %6, align 8
  ret i32* %156
}

declare dso_local i32* @wasapi_init_client_ex(i32*, i32*, i32*, i32) #1

declare dso_local i32* @wasapi_init_client_sh(i32*, i32*, i32*, i32) #1

declare dso_local i32 @_IAudioClient_GetDevicePeriod(i32*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @RARCH_WARN(i8*, i32) #1

declare dso_local i32 @_IAudioClient_GetStreamLatency(i32*, i32*) #1

declare dso_local i32 @_IAudioClient_GetBufferSize(i32*, double*) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
