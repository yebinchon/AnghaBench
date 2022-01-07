; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_usage.h_ShowUsage.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_usage.h_ShowUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"\0AUsage is as follows:\0A%s <options> filename\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Options:\00", align 1
@DriverUsage = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [1510 x i8] c"-cpalette x     Load a custom global palette from file x.\0A-ntsccol x      Emulate an NTSC's TV's colors.\0A                 0 = Disabled.\0A                 1 = Enabled.\0A-pal x          Emulate a PAL NES if x is 1.\0A-sound x        Sound.\0A                 0 = Disabled.\0A                 Otherwise, x = playback rate.\0A-soundvol x\09Sound volume. x is an integral percentage value.\0A-soundq x\09Sets sound quality.\0A\09\09 0 = Low quality.\0A\09\09 1 = High quality.\0A-inputx str\09Select device mapped to virtual input port x(1-2).\0A\09\09 str may be: none, gamepad, zapper, powerpada, powerpadb,\0A\09\09\09     arkanoid\0A-fcexp str\09Select Famicom expansion port device.\0A\09\09 str may be: none, shadow, arkanoid, 4player, fkb\0A-inputcfg s\09Configure virtual input device \22s\22.\0A-nofs x\09\09Disables Four-Score emulation if x is 1.\0A-gg x           Enable Game Genie emulation if x is 1.\0A-no8lim x       Disables the 8 sprites per scanline limitation.\0A                 0 = Limitation enabled.\0A                 1 = Limitation disabled.\0A-snapname x\09Selects what type of file name snapshots will have.\0A\09\09 0 = Numeric(0.png)\0A\09\09 1 = File base and numeric(mario-0.png)\0A-nothrottle x\09Disable artificial speed throttling if x is non-zero.\0A-clipsides x\09Clip leftmost and rightmost 8 columns of pixels of video output.\0A                 0 = No clipping.\0A                 1 = Clipping.\0A-slstart x\09Set the first drawn emulated scanline.  Valid values for x are\0A\09        0 through 239.\0A-slend x\09Set the last drawn emulated scanline.  Valid values for x are\0A\09\090 through 239.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ShowUsage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i8*, i8** @DriverUsage, align 8
  %7 = call i32 @puts(i8* %6)
  %8 = call i32 @puts(i8* getelementptr inbounds ([1510 x i8], [1510 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
