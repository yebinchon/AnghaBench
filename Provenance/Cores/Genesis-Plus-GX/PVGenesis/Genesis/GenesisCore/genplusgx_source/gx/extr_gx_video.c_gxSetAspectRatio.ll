; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxSetAspectRatio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxSetAspectRatio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i32 }

@bitmap = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@vdp_pal = common dso_local global i64 0, align 8
@gc_pal = common dso_local global i64 0, align 8
@VI_MAX_HEIGHT_NTSC = common dso_local global i32 0, align 4
@VI_MAX_HEIGHT_PAL = common dso_local global i32 0, align 4
@reg = common dso_local global i32* null, align 8
@system_clock = common dso_local global i64 0, align 8
@MCLOCK_NTSC = common dso_local global i64 0, align 8
@system_hw = common dso_local global i64 0, align 8
@SYSTEM_GG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @gxSetAspectRatio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxSetAspectRatio(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 1), align 4
  %7 = mul nsw i32 2, %6
  %8 = add nsw i32 %5, %7
  %9 = sdiv i32 %8, 2
  %10 = load i32*, i32** %4, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %101

13:                                               ; preds = %2
  %14 = load i64, i64* @vdp_pal, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i64, i64* @gc_pal, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VI_MAX_HEIGHT_NTSC, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* @VI_MAX_HEIGHT_PAL, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  br label %48

30:                                               ; preds = %19, %13
  %31 = load i64, i64* @vdp_pal, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @gc_pal, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VI_MAX_HEIGHT_PAL, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @VI_MAX_HEIGHT_NTSC, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %36, %33, %30
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 4
  %50 = and i32 %49, 2
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32*, i32** @reg, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 12
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i64, i64* @system_clock, align 8
  %60 = load i64, i64* @MCLOCK_NTSC, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 350, i32 354
  %64 = load i32*, i32** %3, align 8
  store i32 %63, i32* %64, align 4
  br label %72

65:                                               ; preds = %52
  %66 = load i64, i64* @system_clock, align 8
  %67 = load i64, i64* @MCLOCK_NTSC, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 357, i32 361
  %71 = load i32*, i32** %3, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %58
  br label %90

73:                                               ; preds = %48
  %74 = load i64, i64* @system_hw, align 8
  %75 = load i64, i64* @SYSTEM_GG, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 5), align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load i32*, i32** %3, align 8
  store i32 202, i32* %81, align 4
  br label %89

82:                                               ; preds = %77, %73
  %83 = load i64, i64* @system_clock, align 8
  %84 = load i64, i64* @MCLOCK_NTSC, align 8
  %85 = icmp eq i64 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 322, i32 325
  %88 = load i32*, i32** %3, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %80
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 0), align 8
  %92 = and i32 %91, 2
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32*, i32** %3, align 8
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 3
  %98 = sdiv i32 %97, 4
  %99 = load i32*, i32** %3, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %94, %90
  br label %165

101:                                              ; preds = %2
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 2), align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @bitmap, i32 0, i32 0, i32 3), align 4
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 %102, %104
  %106 = load i32*, i32** %3, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** @reg, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 12
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %101
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, 320
  %116 = sdiv i32 %115, 256
  %117 = load i32*, i32** %3, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %101
  %119 = load i64, i64* @system_hw, align 8
  %120 = load i64, i64* @SYSTEM_GG, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 5), align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 4
  %127 = and i32 %126, 1
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = load i32*, i32** %4, align 8
  store i32 112, i32* %130, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 1), align 4
  %133 = and i32 %132, 2
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = load i32*, i32** %3, align 8
  store i32 320, i32* %136, align 4
  br label %137

137:                                              ; preds = %135, %131
  br label %138

138:                                              ; preds = %137, %122, %118
  %139 = load i64, i64* @gc_pal, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 4), align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %141
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @VI_MAX_HEIGHT_PAL, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load i32, i32* @VI_MAX_HEIGHT_NTSC, align 4
  %150 = sdiv i32 %148, %149
  %151 = load i32*, i32** %4, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %144, %141, %138
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 3), align 8
  %154 = load i32*, i32** %3, align 8
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %156, %153
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %154, align 4
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @config, i32 0, i32 2), align 8
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %159
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %160, align 4
  br label %165

165:                                              ; preds = %152, %100
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
