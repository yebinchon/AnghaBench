; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_display.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/nes/ntsc/extr_demo.c_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@burst_phase = common dso_local global i32 0, align 4
@setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ntsc = common dso_local global i32 0, align 4
@nes_pixels = common dso_local global i32 0, align 4
@nes_width = common dso_local global i32 0, align 4
@nes_height = common dso_local global i32 0, align 4
@sdl_pixels = common dso_local global i8* null, align 8
@sdl_pitch = common dso_local global i32 0, align 4
@out_height = common dso_local global i32 0, align 4
@out_width = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @sdl_lock_pixels()
  %8 = load i32, i32* @burst_phase, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* @burst_phase, align 4
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @setup, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 0, i32* @burst_phase, align 4
  br label %13

13:                                               ; preds = %12, %0
  %14 = load i32, i32* @ntsc, align 4
  %15 = load i32, i32* @nes_pixels, align 4
  %16 = load i32, i32* @nes_width, align 4
  %17 = load i32, i32* @burst_phase, align 4
  %18 = load i32, i32* @nes_width, align 4
  %19 = load i32, i32* @nes_height, align 4
  %20 = load i8*, i8** @sdl_pixels, align 8
  %21 = load i32, i32* @sdl_pitch, align 4
  %22 = mul nsw i32 %21, 2
  %23 = call i32 @nes_ntsc_blit(i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i8* %20, i32 %22)
  store i32 1, i32* %1, align 4
  br label %24

24:                                               ; preds = %79, %13
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @out_height, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %24
  %30 = load i8*, i8** @sdl_pixels, align 8
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @sdl_pitch, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %30, i64 %34
  store i8* %35, i8** %2, align 8
  %36 = load i32, i32* @out_width, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %75, %29
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* @sdl_pitch, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = bitcast i8* %45 to i16*
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  store i32 %48, i32* %4, align 4
  %49 = load i8*, i8** %2, align 8
  %50 = load i32, i32* @sdl_pitch, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = bitcast i8* %52 to i16*
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = xor i32 %59, %60
  %62 = and i32 %61, 2081
  %63 = add i32 %58, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = lshr i32 %64, 1
  %66 = load i32, i32* %6, align 4
  %67 = lshr i32 %66, 4
  %68 = and i32 %67, 6371
  %69 = sub i32 %65, %68
  %70 = trunc i32 %69 to i16
  %71 = load i8*, i8** %2, align 8
  %72 = bitcast i8* %71 to i16*
  store i16 %70, i16* %72, align 2
  %73 = load i8*, i8** %2, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %2, align 8
  br label %75

75:                                               ; preds = %40
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %3, align 4
  br label %37

78:                                               ; preds = %37
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %1, align 4
  br label %24

82:                                               ; preds = %24
  %83 = call i32 (...) @sdl_display()
  ret void
}

declare dso_local i32 @sdl_lock_pixels(...) #1

declare dso_local i32 @nes_ntsc_blit(i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sdl_display(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
