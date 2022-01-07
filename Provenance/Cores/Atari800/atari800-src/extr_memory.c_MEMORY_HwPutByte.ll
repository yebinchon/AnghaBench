; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_HwPutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_MEMORY_HwPutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_machine_type = common dso_local global i32 0, align 4
@Atari800_MACHINE_5200 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MEMORY_HwPutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65280
  switch i32 %6, label %62 [
    i32 20224, label %7
    i32 36608, label %7
    i32 24320, label %10
    i32 40704, label %10
    i32 53248, label %13
    i32 49152, label %13
    i32 49408, label %13
    i32 49664, label %13
    i32 49920, label %13
    i32 50176, label %13
    i32 50432, label %13
    i32 50688, label %13
    i32 50944, label %13
    i32 51200, label %13
    i32 51456, label %13
    i32 51712, label %13
    i32 51968, label %13
    i32 52224, label %13
    i32 52480, label %13
    i32 52736, label %13
    i32 53760, label %17
    i32 59392, label %17
    i32 59648, label %17
    i32 59904, label %17
    i32 60160, label %17
    i32 60416, label %17
    i32 60672, label %17
    i32 60928, label %17
    i32 61184, label %17
    i32 54016, label %21
    i32 54272, label %25
    i32 54528, label %29
    i32 65280, label %33
    i32 52992, label %37
    i32 3840, label %37
    i32 53504, label %50
    i32 54784, label %54
    i32 55040, label %58
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @CARTRIDGE_BountyBob1(i32 %8)
  br label %63

10:                                               ; preds = %2, %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @CARTRIDGE_BountyBob2(i32 %11)
  br label %63

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @GTIA_PutByte(i32 %14, i32 %15)
  br label %63

17:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @POKEY_PutByte(i32 %18, i32 %19)
  br label %63

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PIA_PutByte(i32 %22, i32 %23)
  br label %63

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ANTIC_PutByte(i32 %26, i32 %27)
  br label %63

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CARTRIDGE_PutByte(i32 %30, i32 %31)
  br label %63

33:                                               ; preds = %2
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @MosaicPutByte(i32 %34, i32 %35)
  br label %63

37:                                               ; preds = %2, %2
  %38 = load i32, i32* @Atari800_machine_type, align 4
  %39 = load i32, i32* @Atari800_MACHINE_5200, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @GTIA_PutByte(i32 %42, i32 %43)
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @AxlonPutByte(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  br label %63

50:                                               ; preds = %2
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @PBI_D1PutByte(i32 %51, i32 %52)
  br label %63

54:                                               ; preds = %2
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @PBI_D6PutByte(i32 %55, i32 %56)
  br label %63

58:                                               ; preds = %2
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @PBI_D7PutByte(i32 %59, i32 %60)
  br label %63

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %62, %58, %54, %50, %49, %33, %29, %25, %21, %17, %13, %10, %7
  ret void
}

declare dso_local i32 @CARTRIDGE_BountyBob1(i32) #1

declare dso_local i32 @CARTRIDGE_BountyBob2(i32) #1

declare dso_local i32 @GTIA_PutByte(i32, i32) #1

declare dso_local i32 @POKEY_PutByte(i32, i32) #1

declare dso_local i32 @PIA_PutByte(i32, i32) #1

declare dso_local i32 @ANTIC_PutByte(i32, i32) #1

declare dso_local i32 @CARTRIDGE_PutByte(i32, i32) #1

declare dso_local i32 @MosaicPutByte(i32, i32) #1

declare dso_local i32 @AxlonPutByte(i32, i32) #1

declare dso_local i32 @PBI_D1PutByte(i32, i32) #1

declare dso_local i32 @PBI_D6PutByte(i32, i32) #1

declare dso_local i32 @PBI_D7PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
