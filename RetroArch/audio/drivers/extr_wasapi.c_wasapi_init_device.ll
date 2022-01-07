; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_wasapi.c_wasapi_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"[WASAPI]: Initializing device %s ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[WASAPI]: Initializing default device.. \0A\00", align 1
@CLSID_MMDeviceEnumerator = common dso_local global i32**** null, align 8
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IMMDeviceEnumerator = common dso_local global i32**** null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"[WASAPI]: %d : %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"[WASAPI]: Fallback, device index is a single number index instead: %d.\0A\00", align 1
@eRender = common dso_local global i32 0, align 4
@DEVICE_STATE_ACTIVE = common dso_local global i32 0, align 4
@eConsole = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"[WASAPI]: Failed to initialize device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @wasapi_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wasapi_init_device(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.string_list*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %20

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @CLSCTX_ALL, align 4
  %22 = bitcast i32** %7 to i8**
  %23 = call i32 @CoCreateInstance(i32***** @CLSID_MMDeviceEnumerator, i32* null, i32 %21, i32***** @IID_IMMDeviceEnumerator, i8** %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %159

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %139

31:                                               ; preds = %28
  store i32 -1, i32* %10, align 4
  %32 = call i64 @mmdevice_list_new(i32* null)
  %33 = inttoptr i64 %32 to %struct.string_list*
  store %struct.string_list* %33, %struct.string_list** %11, align 8
  %34 = load %struct.string_list*, %struct.string_list** %11, align 8
  %35 = icmp ne %struct.string_list* %34, null
  br i1 %35, label %36, label %94

36:                                               ; preds = %31
  %37 = load %struct.string_list*, %struct.string_list** %11, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.string_list*, %struct.string_list** %11, align 8
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.string_list*, %struct.string_list** %11, align 8
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.string_list*, %struct.string_list** %11, align 8
  %61 = getelementptr inbounds %struct.string_list, %struct.string_list* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @string_is_equal(i8* %59, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %48
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %10, align 4
  br label %76

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %42

76:                                               ; preds = %70, %42
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = call i64 @isdigit(i8 signext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @strtoul(i8* %86, i32* null, i32 0)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %85, %79, %76
  br label %91

91:                                               ; preds = %90, %36
  %92 = load %struct.string_list*, %struct.string_list** %11, align 8
  %93 = call i32 @string_list_free(%struct.string_list* %92)
  br label %94

94:                                               ; preds = %91, %31
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* @eRender, align 4
  %101 = load i32, i32* @DEVICE_STATE_ACTIVE, align 4
  %102 = call i32 @_IMMDeviceEnumerator_EnumAudioEndpoints(i32* %99, i32 %100, i32 %101, i32** %9)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @FAILED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %159

107:                                              ; preds = %98
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @_IMMDeviceCollection_GetCount(i32* %108, i32* %5)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %159

114:                                              ; preds = %107
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %135, %114
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @_IMMDeviceCollection_Item(i32* %120, i32 %121, i32** %8)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = call i64 @FAILED(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  br label %159

127:                                              ; preds = %119
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  br label %138

132:                                              ; preds = %127
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @IFACE_RELEASE(i32* %133)
  br label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %115

138:                                              ; preds = %131, %115
  br label %149

139:                                              ; preds = %28
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* @eRender, align 4
  %142 = load i32, i32* @eConsole, align 4
  %143 = call i32 @_IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32* %140, i32 %141, i32 %142, i32** %8)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i64 @FAILED(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %159

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %138
  %150 = load i32*, i32** %8, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  br label %159

153:                                              ; preds = %149
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @IFACE_RELEASE(i32* %154)
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @IFACE_RELEASE(i32* %156)
  %158 = load i32*, i32** %8, align 8
  store i32* %158, i32** %2, align 8
  br label %171

159:                                              ; preds = %152, %147, %126, %113, %106, %27
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @IFACE_RELEASE(i32* %160)
  %162 = load i32*, i32** %7, align 8
  %163 = call i32 @IFACE_RELEASE(i32* %162)
  %164 = load i8*, i8** %3, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %170

168:                                              ; preds = %159
  %169 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %166
  store i32* null, i32** %2, align 8
  br label %171

171:                                              ; preds = %170, %153
  %172 = load i32*, i32** %2, align 8
  ret i32* %172
}

declare dso_local i32 @RARCH_LOG(i8*, ...) #1

declare dso_local i32 @CoCreateInstance(i32*****, i32*, i32, i32*****, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @mmdevice_list_new(i32*) #1

declare dso_local i64 @string_is_equal(i8*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @string_list_free(%struct.string_list*) #1

declare dso_local i32 @_IMMDeviceEnumerator_EnumAudioEndpoints(i32*, i32, i32, i32**) #1

declare dso_local i32 @_IMMDeviceCollection_GetCount(i32*, i32*) #1

declare dso_local i32 @_IMMDeviceCollection_Item(i32*, i32, i32**) #1

declare dso_local i32 @IFACE_RELEASE(i32*) #1

declare dso_local i32 @_IMMDeviceEnumerator_GetDefaultAudioEndpoint(i32*, i32, i32, i32**) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
