; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_Configure.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c_VIDEO_Configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct._timing*, i64, i32 }
%struct._timing = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32, i32 }

@HorVer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@changeMode = common dso_local global i32 0, align 4
@VI_NON_INTERLACE = common dso_local global i32 0, align 4
@VI_PROGRESSIVE = common dso_local global i32 0, align 4
@VI_XFBMODE_SF = common dso_local global i64 0, align 8
@regs = common dso_local global i32* null, align 8
@VI_EURGB60 = common dso_local global i32 0, align 4
@changed = common dso_local global i32 0, align 4
@fbSet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIDEO_Configure(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._timing*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 3
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  store i32 1, i32* @changeMode, align 4
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @_SHIFTR(i32 %22, i32 2, i32 3)
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 1), align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 26), align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 2), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %31 = load i32, i32* @VI_NON_INTERLACE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 2), align 8
  %35 = shl i32 %34, 1
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 2), align 8
  br label %36

36:                                               ; preds = %33, %19
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 22), align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 21), align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 3), align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 4), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 21), align 8
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 19), align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 3), align 4
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 20), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 25), align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %52 = load i32, i32* @VI_PROGRESSIVE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %60, label %54

54:                                               ; preds = %36
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %56 = load i32, i32* @VI_NON_INTERLACE, align 4
  %57 = load i32, i32* @VI_PROGRESSIVE, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54, %36
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 5), align 8
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 6), align 4
  br label %72

62:                                               ; preds = %54
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 4), align 8
  %64 = load i64, i64* @VI_XFBMODE_SF, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 5), align 8
  %68 = shl i32 %67, 1
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 6), align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 5), align 8
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 6), align 4
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %74 = load i32, i32* @VI_NON_INTERLACE, align 4
  %75 = load i32, i32* @VI_PROGRESSIVE, align 4
  %76 = or i32 %74, %75
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 7), align 8
  br label %80

79:                                               ; preds = %72
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 7), align 8
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 1), align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %83 = call i32 @VI_TVMODE(i32 %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call %struct._timing* @__gettiming(i32 %84)
  store %struct._timing* %85, %struct._timing** %7, align 8
  %86 = load %struct._timing*, %struct._timing** %7, align 8
  store %struct._timing* %86, %struct._timing** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 24), align 8
  %87 = load %struct._timing*, %struct._timing** %7, align 8
  %88 = getelementptr inbounds %struct._timing, %struct._timing* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__adjustPosition(i32 %89)
  %91 = load %struct._timing*, %struct._timing** %7, align 8
  %92 = call i32 @__setInterruptRegs(%struct._timing* %91)
  %93 = load i32*, i32** @regs, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -781
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 7), align 8
  %98 = call i32 @_SHIFTL(i32 %97, i32 3, i32 1)
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %102 = load i32, i32* @VI_PROGRESSIVE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %80
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %106 = load i32, i32* @VI_NON_INTERLACE, align 4
  %107 = load i32, i32* @VI_PROGRESSIVE, align 4
  %108 = or i32 %106, %107
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %80
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, 4
  store i32 %112, i32* %3, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %115 = call i32 @_SHIFTL(i32 %114, i32 2, i32 1)
  %116 = load i32, i32* %3, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 1), align 4
  %120 = load i32, i32* @VI_EURGB60, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 1), align 4
  %124 = call i32 @_SHIFTL(i32 %123, i32 8, i32 2)
  %125 = load i32, i32* %3, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i32, i32* %3, align 4
  %129 = load i32*, i32** @regs, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %128, i32* %130, align 4
  %131 = call i32 @VI_REGCHANGE(i32 1)
  %132 = load i32, i32* @changed, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* @changed, align 4
  %134 = load i32*, i32** @regs, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 54
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, -2
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %139 = load i32, i32* @VI_PROGRESSIVE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %127
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 0), align 8
  %143 = load i32, i32* @VI_NON_INTERLACE, align 4
  %144 = load i32, i32* @VI_PROGRESSIVE, align 4
  %145 = or i32 %143, %144
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %141, %127
  %148 = load i32*, i32** @regs, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 54
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %141
  %153 = call i32 @VI_REGCHANGE(i32 54)
  %154 = load i32, i32* @changed, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* @changed, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 19), align 8
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 22), align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 7), align 8
  %159 = call i32 @__setScalingRegs(i32 %156, i32 %157, i32 %158)
  %160 = load %struct._timing*, %struct._timing** %7, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 23), align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 22), align 4
  %163 = call i32 @__setHorizontalRegs(%struct._timing* %160, i32 %161, i32 %162)
  %164 = load %struct._timing*, %struct._timing** %7, align 8
  %165 = call i32 @__setBBIntervalRegs(%struct._timing* %164)
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 21), align 8
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 4), align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 20), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 19), align 8
  %170 = call i32 @__setPicConfig(i32 %166, i64 %167, i64 %168, i32 %169, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 18), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 17), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 16), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 15))
  %171 = load i64, i64* @fbSet, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %152
  %174 = call i32 @__setFbbRegs(%struct.TYPE_6__* @HorVer, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 14), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 13), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 12), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 11))
  br label %175

175:                                              ; preds = %173, %152
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 10), align 4
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 9), align 8
  %178 = load %struct._timing*, %struct._timing** %7, align 8
  %179 = getelementptr inbounds %struct._timing, %struct._timing* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct._timing*, %struct._timing** %7, align 8
  %182 = getelementptr inbounds %struct._timing, %struct._timing* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load %struct._timing*, %struct._timing** %7, align 8
  %185 = getelementptr inbounds %struct._timing, %struct._timing* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct._timing*, %struct._timing** %7, align 8
  %188 = getelementptr inbounds %struct._timing, %struct._timing* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct._timing*, %struct._timing** %7, align 8
  %191 = getelementptr inbounds %struct._timing, %struct._timing* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct._timing*, %struct._timing** %7, align 8
  %194 = getelementptr inbounds %struct._timing, %struct._timing* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @HorVer, i32 0, i32 8), align 4
  %197 = call i32 @__setVerticalRegs(i32 %176, i32 %177, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i32 %195, i32 %196)
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @_CPU_ISR_Restore(i32 %198)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @VI_TVMODE(i32, i32) #1

declare dso_local %struct._timing* @__gettiming(i32) #1

declare dso_local i32 @__adjustPosition(i32) #1

declare dso_local i32 @__setInterruptRegs(%struct._timing*) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @VI_REGCHANGE(i32) #1

declare dso_local i32 @__setScalingRegs(i32, i32, i32) #1

declare dso_local i32 @__setHorizontalRegs(%struct._timing*, i32, i32) #1

declare dso_local i32 @__setBBIntervalRegs(%struct._timing*) #1

declare dso_local i32 @__setPicConfig(i32, i64, i64, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__setFbbRegs(%struct.TYPE_6__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__setVerticalRegs(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
