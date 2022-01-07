; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_poll.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers/extr_dinput.c_dinput_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinput_input = type { %struct.TYPE_8__*, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_8__ = type { i32 (...)* }
%struct.TYPE_10__ = type { i64*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dinput_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dinput_poll(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dinput_input*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.dinput_input*
  store %struct.dinput_input* %7, %struct.dinput_input** %3, align 8
  %8 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %9 = icmp ne %struct.dinput_input* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %158

11:                                               ; preds = %1
  %12 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %13 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %12, i32 0, i32 11
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = call i32 @memset(%struct.TYPE_10__* %14, i32 0, i32 8)
  %16 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %17 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %11
  %21 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %22 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %21, i32 0, i32 12
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %25 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %24, i32 0, i32 11
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = call i32 @IDirectInputDevice8_GetDeviceState(i64 %23, i32 8, %struct.TYPE_10__* %26)
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %32 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %31, i32 0, i32 12
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @IDirectInputDevice8_Acquire(i64 %33)
  %35 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %36 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %39 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %38, i32 0, i32 11
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = call i32 @IDirectInputDevice8_GetDeviceState(i64 %37, i32 8, %struct.TYPE_10__* %40)
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %46 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %45, i32 0, i32 11
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i32 @memset(%struct.TYPE_10__* %47, i32 0, i32 8)
  br label %49

49:                                               ; preds = %44, %30
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50, %11
  %52 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %53 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %146

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = call i32 @memset(%struct.TYPE_10__* %5, i32 0, i32 16)
  %60 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %61 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %60, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @IDirectInputDevice8_GetDeviceState(i64 %62, i32 16, %struct.TYPE_10__* %5)
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %56
  %67 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %68 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @IDirectInputDevice8_Acquire(i64 %69)
  %71 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %72 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @IDirectInputDevice8_GetDeviceState(i64 %73, i32 16, %struct.TYPE_10__* %5)
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = call i32 @memset(%struct.TYPE_10__* %5, i32 0, i32 16)
  br label %79

79:                                               ; preds = %77, %66
  br label %80

80:                                               ; preds = %79, %56
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %84 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %88 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %80
  %95 = call i32 (...) @unset_doubleclick_on_titlebar()
  br label %96

96:                                               ; preds = %94, %80
  %97 = call i64 (...) @doubleclick_on_titlebar_pressed()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %101 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %100, i32 0, i32 7
  store i64 0, i64* %101, align 8
  br label %109

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %108 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %107, i32 0, i32 7
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %102, %99
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %115 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %114, i32 0, i32 6
  store i64 %113, i64* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %121 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %120, i32 0, i32 5
  store i64 %119, i64* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %127 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 4
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %133 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %132, i32 0, i32 3
  store i64 %131, i64* %133, align 8
  %134 = call i32 @GetCursorPos(%struct.TYPE_9__* %4)
  %135 = call i64 (...) @video_driver_window_get()
  %136 = trunc i64 %135 to i32
  %137 = call i32 @ScreenToClient(i32 %136, %struct.TYPE_9__* %4)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %141 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %140, i32 0, i32 2
  store i64 %139, i64* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %145 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %109, %51
  %147 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %148 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %147, i32 0, i32 0
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = icmp ne %struct.TYPE_8__* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load %struct.dinput_input*, %struct.dinput_input** %3, align 8
  %153 = getelementptr inbounds %struct.dinput_input, %struct.dinput_input* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32 (...)*, i32 (...)** %155, align 8
  %157 = call i32 (...) %156()
  br label %158

158:                                              ; preds = %10, %151, %146
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirectInputDevice8_GetDeviceState(i64, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @IDirectInputDevice8_Acquire(i64) #1

declare dso_local i32 @unset_doubleclick_on_titlebar(...) #1

declare dso_local i64 @doubleclick_on_titlebar_pressed(...) #1

declare dso_local i32 @GetCursorPos(%struct.TYPE_9__*) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @video_driver_window_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
