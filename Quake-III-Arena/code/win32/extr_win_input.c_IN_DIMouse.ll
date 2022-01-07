; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_DIMouse.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_input.c_IN_DIMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IN_DIMouse.oldSysTime = internal global float 0.000000e+00, align 4
@g_pMouse = common dso_local global i32 0, align 4
@DIERR_INPUTLOST = common dso_local global i64 0, align 8
@DIERR_NOTACQUIRED = common dso_local global i64 0, align 8
@SE_KEY = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@K_MOUSE4 = common dso_local global i32 0, align 4
@K_MWHEELDOWN = common dso_local global i32 0, align 4
@K_MWHEELUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_DIMouse(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @g_pMouse, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %173

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %156, %13
  store i32 1, i32* %7, align 4
  %15 = load i32, i32* @g_pMouse, align 4
  %16 = call i64 @IDirectInputDevice_GetDeviceData(i32 %15, i32 12, %struct.TYPE_6__* %5, i32* %7, i32 0)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @DIERR_INPUTLOST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @DIERR_NOTACQUIRED, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %14
  %25 = load i32, i32* @g_pMouse, align 4
  %26 = call i32 @IDirectInputDevice_Acquire(i32 %25)
  br label %173

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = call i64 @FAILED(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %157

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %157

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %156 [
    i32 132, label %39
    i32 131, label %59
    i32 130, label %79
    i32 129, label %99
    i32 128, label %119
  ]

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SE_KEY, align 4
  %48 = load i32, i32* @K_MOUSE1, align 4
  %49 = load i32, i32* @qtrue, align 4
  %50 = call i32 @Sys_QueEvent(i32 %46, i32 %47, i32 %48, i32 %49, i32 0, i32* null)
  br label %58

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SE_KEY, align 4
  %55 = load i32, i32* @K_MOUSE1, align 4
  %56 = load i32, i32* @qfalse, align 4
  %57 = call i32 @Sys_QueEvent(i32 %53, i32 %54, i32 %55, i32 %56, i32 0, i32* null)
  br label %58

58:                                               ; preds = %51, %44
  br label %156

59:                                               ; preds = %36
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 128
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SE_KEY, align 4
  %68 = load i32, i32* @K_MOUSE2, align 4
  %69 = load i32, i32* @qtrue, align 4
  %70 = call i32 @Sys_QueEvent(i32 %66, i32 %67, i32 %68, i32 %69, i32 0, i32* null)
  br label %78

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SE_KEY, align 4
  %75 = load i32, i32* @K_MOUSE2, align 4
  %76 = load i32, i32* @qfalse, align 4
  %77 = call i32 @Sys_QueEvent(i32 %73, i32 %74, i32 %75, i32 %76, i32 0, i32* null)
  br label %78

78:                                               ; preds = %71, %64
  br label %156

79:                                               ; preds = %36
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 128
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SE_KEY, align 4
  %88 = load i32, i32* @K_MOUSE3, align 4
  %89 = load i32, i32* @qtrue, align 4
  %90 = call i32 @Sys_QueEvent(i32 %86, i32 %87, i32 %88, i32 %89, i32 0, i32* null)
  br label %98

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SE_KEY, align 4
  %95 = load i32, i32* @K_MOUSE3, align 4
  %96 = load i32, i32* @qfalse, align 4
  %97 = call i32 @Sys_QueEvent(i32 %93, i32 %94, i32 %95, i32 %96, i32 0, i32* null)
  br label %98

98:                                               ; preds = %91, %84
  br label %156

99:                                               ; preds = %36
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 128
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SE_KEY, align 4
  %108 = load i32, i32* @K_MOUSE4, align 4
  %109 = load i32, i32* @qtrue, align 4
  %110 = call i32 @Sys_QueEvent(i32 %106, i32 %107, i32 %108, i32 %109, i32 0, i32* null)
  br label %118

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SE_KEY, align 4
  %115 = load i32, i32* @K_MOUSE4, align 4
  %116 = load i32, i32* @qfalse, align 4
  %117 = call i32 @Sys_QueEvent(i32 %113, i32 %114, i32 %115, i32 %116, i32 0, i32* null)
  br label %118

118:                                              ; preds = %111, %104
  br label %156

119:                                              ; preds = %36
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %155

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SE_KEY, align 4
  %132 = load i32, i32* @K_MWHEELDOWN, align 4
  %133 = load i32, i32* @qtrue, align 4
  %134 = call i32 @Sys_QueEvent(i32 %130, i32 %131, i32 %132, i32 %133, i32 0, i32* null)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SE_KEY, align 4
  %138 = load i32, i32* @K_MWHEELDOWN, align 4
  %139 = load i32, i32* @qfalse, align 4
  %140 = call i32 @Sys_QueEvent(i32 %136, i32 %137, i32 %138, i32 %139, i32 0, i32* null)
  br label %154

141:                                              ; preds = %125
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SE_KEY, align 4
  %145 = load i32, i32* @K_MWHEELUP, align 4
  %146 = load i32, i32* @qtrue, align 4
  %147 = call i32 @Sys_QueEvent(i32 %143, i32 %144, i32 %145, i32 %146, i32 0, i32* null)
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SE_KEY, align 4
  %151 = load i32, i32* @K_MWHEELUP, align 4
  %152 = load i32, i32* @qfalse, align 4
  %153 = call i32 @Sys_QueEvent(i32 %149, i32 %150, i32 %151, i32 %152, i32 0, i32* null)
  br label %154

154:                                              ; preds = %141, %128
  br label %155

155:                                              ; preds = %154, %124
  br label %156

156:                                              ; preds = %36, %155, %118, %98, %78, %58
  br label %14

157:                                              ; preds = %35, %31
  %158 = load i32, i32* @g_pMouse, align 4
  %159 = call i64 @IDirectInputDevice_GetDeviceState(i32 %158, i32 12, %struct.TYPE_5__* %6)
  store i64 %159, i64* %8, align 8
  %160 = load i64, i64* %8, align 8
  %161 = call i64 @FAILED(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32*, i32** %4, align 8
  store i32 0, i32* %164, align 4
  %165 = load i32*, i32** %3, align 8
  store i32 0, i32* %165, align 4
  br label %173

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %3, align 8
  store i32 %168, i32* %169, align 4
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %4, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %166, %163, %24, %12
  ret void
}

declare dso_local i64 @IDirectInputDevice_GetDeviceData(i32, i32, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @IDirectInputDevice_Acquire(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @Sys_QueEvent(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @IDirectInputDevice_GetDeviceState(i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
