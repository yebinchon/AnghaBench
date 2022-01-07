; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_blit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }

@currentConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@PicoOpt = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@localPal = common dso_local global i32* null, align 8
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_SVP = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i64 0, align 8
@giz_screen = common dso_local global i64 0, align 8
@OSD_FPS_X = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @PicoOpt, align 4
  %11 = and i32 %10, 16
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  store i32 224, i32* %6, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 0), align 8
  %17 = load i32*, i32** @localPal, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %19 = call i32 @vidConvCpyRGB565(i32* %17, i32 %18, i32 64)
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* @PicoAHW, align 4
  %22 = load i32, i32* @PAHW_SVP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i64, i64* @PicoDraw2FB, align 8
  %27 = add nsw i64 %26, 2624
  %28 = add nsw i64 %27, 73144
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @memset32(i32* %29, i32 -522133280, i32 328)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 12
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 65536
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  %42 = and i32 %41, 16384
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 262144
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i64, i64* @giz_screen, align 8
  %49 = inttoptr i64 %48 to i16*
  %50 = getelementptr inbounds i16, i16* %49, i64 2568
  %51 = load i64, i64* @PicoDraw2FB, align 8
  %52 = add nsw i64 %51, 2624
  %53 = load i32*, i32** @localPal, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @vidCpy8to16(i16* %50, i64 %52, i32* %53, i32 %54)
  br label %122

56:                                               ; preds = %2
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %121, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 0), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2, i32 0), align 8
  %64 = load i32*, i32** @localPal, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  %66 = call i32 @vidConvCpyRGB565(i32* %64, i32 %65, i32 64)
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 12
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load i32*, i32** @localPal, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 192
  %75 = bitcast i32* %74 to i8*
  %76 = load i32*, i32** @localPal, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 64
  %78 = bitcast i32* %77 to i8*
  %79 = call i32 @memcpy32(i8* %75, i8* %78, i32 32)
  %80 = load i32*, i32** @localPal, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 192
  store i32 1536, i32* %81, align 4
  %82 = load i32*, i32** @localPal, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 208
  store i32 49152, i32* %83, align 4
  %84 = load i32*, i32** @localPal, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 224
  store i32 0, i32* %85, align 4
  %86 = load i32*, i32** @localPal, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 240
  store i32 65535, i32* %87, align 4
  br label %88

88:                                               ; preds = %72, %63
  br label %89

89:                                               ; preds = %88, %60
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 8
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 240, i32 224
  store i32 %96, i32* %7, align 4
  %97 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 12
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, 65536
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %102, %89
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  %107 = and i32 %106, 16384
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, 262144
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i64, i64* @giz_screen, align 8
  %114 = inttoptr i64 %113 to i16*
  %115 = getelementptr inbounds i16, i16* %114, i64 2568
  %116 = load i64, i64* @PicoDraw2FB, align 8
  %117 = add nsw i64 %116, 2624
  %118 = load i32*, i32** @localPal, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @vidCpy8to16(i16* %115, i64 %117, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %112, %56
  br label %122

122:                                              ; preds = %121, %47
  %123 = load i8*, i8** %4, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 2
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %125, %122
  store i32 232, i32* %8, align 4
  %130 = load i8*, i8** %4, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = call i32 @osd_text(i32 4, i32 %133, i8* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i32, i32* @OSD_FPS_X, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @osd_text(i32 %141, i32 %142, i8* %143)
  br label %145

145:                                              ; preds = %140, %136
  br label %146

146:                                              ; preds = %145, %125
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, 1024
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32, i32* @PicoAHW, align 4
  %152 = load i32, i32* @PAHW_MCD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 (...) @cd_leds()
  br label %157

157:                                              ; preds = %155, %150, %146
  ret void
}

declare dso_local i32 @vidConvCpyRGB565(i32*, i32, i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @vidCpy8to16(i16*, i64, i32*, i32) #1

declare dso_local i32 @memcpy32(i8*, i8*, i32) #1

declare dso_local i32 @osd_text(i32, i32, i8*) #1

declare dso_local i32 @cd_leds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
