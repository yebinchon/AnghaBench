; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_coreaudio.c_choose_output_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_coreaudio.c_choose_output_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@kAudioHardwarePropertyDevices = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeGlobal = common dso_local global i32 0, align 4
@kAudioObjectPropertyElementMaster = common dso_local global i32 0, align 4
@kAudioObjectSystemObject = common dso_local global i8 0, align 1
@noErr = common dso_local global i64 0, align 8
@kAudioDevicePropertyScopeOutput = common dso_local global i32 0, align 4
@kAudioDevicePropertyDeviceName = common dso_local global i32 0, align 4
@kAudioOutputUnitProperty_CurrentDevice = common dso_local global i32 0, align 4
@kAudioUnitScope_Global = common dso_local global i32 0, align 4
@kAudioObjectPropertyScopeOutput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @choose_output_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_output_device(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @kAudioHardwarePropertyDevices, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @kAudioObjectPropertyScopeGlobal, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @kAudioObjectPropertyElementMaster, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i8, i8* @kAudioObjectSystemObject, align 1
  %18 = call i64 @AudioObjectGetPropertyDataSize(i8 signext %17, %struct.TYPE_7__* %7, i32 0, i32 0, i32* %9)
  %19 = load i64, i64* @noErr, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %83

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 1
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i8, i8* @kAudioObjectSystemObject, align 1
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @AudioObjectGetPropertyData(i8 signext %33, %struct.TYPE_7__* %7, i32 0, i32 0, i32* %9, i8* %34)
  %36 = load i64, i64* @noErr, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %22
  br label %80

39:                                               ; preds = %32
  %40 = load i32, i32* @kAudioDevicePropertyScopeOutput, align 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @kAudioDevicePropertyDeviceName, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %76, %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %49, align 16
  store i32 1024, i32* %9, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %56 = call i64 @AudioObjectGetPropertyData(i8 signext %54, %struct.TYPE_7__* %7, i32 0, i32 0, i32* %9, i8* %55)
  %57 = load i64, i64* @noErr, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %48
  %60 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %61 = load i8*, i8** %4, align 8
  %62 = call i64 @string_is_equal(i8* %60, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @kAudioOutputUnitProperty_CurrentDevice, align 4
  %69 = load i32, i32* @kAudioUnitScope_Global, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = call i32 @AudioUnitSetProperty(i32 %67, i32 %68, i32 %69, i32 0, i8* %73, i32 1)
  br label %80

75:                                               ; preds = %59, %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %44

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79, %64, %38
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %80, %21
  ret void
}

declare dso_local i64 @AudioObjectGetPropertyDataSize(i8 signext, %struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @AudioObjectGetPropertyData(i8 signext, %struct.TYPE_7__*, i32, i32, i32*, i8*) #1

declare dso_local i64 @string_is_equal(i8*, i8*) #1

declare dso_local i32 @AudioUnitSetProperty(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
