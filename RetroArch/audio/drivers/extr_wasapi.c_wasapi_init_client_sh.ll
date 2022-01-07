; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_client_sh.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_client_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32, i32, i32, i32, i32*, i32*)*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*)* }

@IID_IAudioClient = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"[WASAPI]: Initializing client (shared, %s, %uHz, %ums) ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@AUDCLNT_SHAREMODE_SHARED = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_EVENTCALLBACK = common dso_local global i32 0, align 4
@AUDCLNT_STREAMFLAGS_NOPERSIST = common dso_local global i32 0, align 4
@AUDCLNT_E_ALREADY_INITIALIZED = common dso_local global i64 0, align 8
@AUDCLNT_E_UNSUPPORTED_FORMAT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"[WASAPI]: Unsupported format.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32*, i32*, i32)* @wasapi_init_client_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @wasapi_init_client_sh(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %13, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @IID_IAudioClient, align 4
  %24 = load i32, i32* @CLSCTX_ALL, align 4
  %25 = bitcast %struct.TYPE_8__** %13 to i8**
  %26 = call i64 @_IMMDevice_Activate(i32* %22, i32 %23, i32 %24, i32* null, i8** %25)
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %137

31:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %120, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %123

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %40, %35
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %116, %45
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %119

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @wasapi_set_format(i32* %10, i32 %57, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64 (%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*)*, i64 (%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*)** %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %66 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %67 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  %68 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %69 = or i32 %67, %68
  %70 = call i64 %64(%struct.TYPE_8__* %65, i32 %66, i32 %69, i32 0, i32 0, i32* %10, i32* null)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @AUDCLNT_E_ALREADY_INITIALIZED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %49
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %76 = call i32 @IFACE_RELEASE(%struct.TYPE_8__* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* @IID_IAudioClient, align 4
  %79 = load i32, i32* @CLSCTX_ALL, align 4
  %80 = bitcast %struct.TYPE_8__** %13 to i8**
  %81 = call i64 @_IMMDevice_Activate(i32* %77, i32 %78, i32 %79, i32* null, i8** %80)
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %17, align 8
  %83 = call i64 @FAILED(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %137

86:                                               ; preds = %74
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64 (%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*)*, i64 (%struct.TYPE_8__*, i32, i32, i32, i32, i32*, i32*)** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = load i32, i32* @AUDCLNT_SHAREMODE_SHARED, align 4
  %94 = load i32, i32* @AUDCLNT_STREAMFLAGS_EVENTCALLBACK, align 4
  %95 = load i32, i32* @AUDCLNT_STREAMFLAGS_NOPERSIST, align 4
  %96 = or i32 %94, %95
  %97 = call i64 %91(%struct.TYPE_8__* %92, i32 %93, i32 %96, i32 0, i32 0, i32* %10, i32* null)
  store i64 %97, i64* %17, align 8
  br label %98

98:                                               ; preds = %86, %49
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* @AUDCLNT_E_UNSUPPORTED_FORMAT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 2, i32* %11, align 4
  br label %119

103:                                              ; preds = %98
  %104 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @wasapi_pref_rate(i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = call i32 @wasapi_pref_rate(i32 %113)
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %111, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %46

119:                                              ; preds = %102, %46
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %32

123:                                              ; preds = %32
  %124 = load i64, i64* %16, align 8
  %125 = call i64 @FAILED(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %134

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %5, align 8
  br label %137

134:                                              ; preds = %127
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %136 = call i32 @IFACE_RELEASE(%struct.TYPE_8__* %135)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %137

137:                                              ; preds = %134, %128, %85, %30
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %138
}

declare dso_local i64 @_IMMDevice_Activate(i32*, i32, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i32, i32) #1

declare dso_local i32 @wasapi_set_format(i32*, i32, i32) #1

declare dso_local i32 @IFACE_RELEASE(%struct.TYPE_8__*) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @wasapi_pref_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
