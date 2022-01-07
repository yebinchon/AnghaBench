; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_vdp_ctl_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_sms.c_vdp_ctl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.PicoVideo }
%struct.PicoVideo = type { i32, i32*, i32, i8 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EL_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"  VDP r%02x=%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @vdp_ctl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdp_ctl_write(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.PicoVideo*, align 8
  store i8 %0, i8* %2, align 1
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), %struct.PicoVideo** %3, align 8
  %4 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %5 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %54

8:                                                ; preds = %1
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = ashr i32 %10, 6
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %35

13:                                               ; preds = %8
  %14 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %15 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %18 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i8, i8* %2, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  store i32 %16, i32* %24, align 4
  %25 = load i32, i32* @EL_IO, align 4
  %26 = load i8, i8* %2, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 15
  %29 = trunc i32 %28 to i8
  %30 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %31 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 255
  %34 = call i32 @elprintf(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8 zeroext %29, i32 %33)
  br label %35

35:                                               ; preds = %13, %8
  %36 = load i8, i8* %2, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 6
  %39 = trunc i32 %38 to i8
  %40 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %41 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %40, i32 0, i32 3
  store i8 %39, i8* %41, align 4
  %42 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %43 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 255
  store i32 %45, i32* %43, align 8
  %46 = load i8, i8* %2, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 63
  %49 = shl i32 %48, 8
  %50 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %51 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %65

54:                                               ; preds = %1
  %55 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %56 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, 16128
  store i32 %58, i32* %56, align 8
  %59 = load i8, i8* %2, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %62 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %54, %35
  %66 = load %struct.PicoVideo*, %struct.PicoVideo** %3, align 8
  %67 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = xor i32 %68, 1
  store i32 %69, i32* %67, align 8
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
