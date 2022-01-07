; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_do_pal_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/psp/extr_emu.c_do_pal_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }

@localPal = common dso_local global i32* null, align 8
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@currentConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@need_pal_upload = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@PDRAW_SPR_LO_ON_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_pal_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pal_update(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** @localPal, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** @localPal, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 1), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  %15 = call i32 @do_pal_convert(i32* %11, i32 %12, i32 %13, i32 %14)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* @need_pal_upload, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %101

18:                                               ; preds = %2
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 12
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %101

24:                                               ; preds = %18
  store i32 31, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = lshr i32 %33, 1
  %35 = and i32 %34, 2077195215
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = or i32 96, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = or i32 32, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %35, i32* %45, align 4
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  br label %25

49:                                               ; preds = %25
  store i32 63, i32* %6, align 4
  br label %50

50:                                               ; preds = %93, %49
  %51 = load i32, i32* %6, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %96

53:                                               ; preds = %50
  %54 = load i32*, i32** @localPal, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 63390
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 16904
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, 30
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %65, %53
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 2048
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, 1920
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 65536
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, 61440
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 63390
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = trunc i32 %85 to i16
  %87 = zext i16 %86 to i32
  %88 = load i32*, i32** @localPal, align 8
  %89 = load i32, i32* %6, align 4
  %90 = or i32 128, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  br label %50

96:                                               ; preds = %50
  %97 = load i32*, i32** @localPal, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 224
  store i32 0, i32* %98, align 4
  %99 = load i32*, i32** @localPal, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 240
  store i32 31, i32* %100, align 4
  br label %116

101:                                              ; preds = %18, %2
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* @rendstatus, align 4
  %106 = load i32, i32* @PDRAW_SPR_LO_ON_HI, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 64
  %112 = load i32*, i32** @localPal, align 8
  %113 = bitcast i32* %112 to i8*
  %114 = call i32 @memcpy32(i32* %111, i8* %113, i32 32)
  br label %115

115:                                              ; preds = %109, %104, %101
  br label %116

116:                                              ; preds = %115, %96
  ret void
}

declare dso_local i32 @do_pal_convert(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy32(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
