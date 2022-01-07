; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseDeInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_yabause.c_YabauseDeInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BiosRom = common dso_local global i32* null, align 8
@HighWram = common dso_local global i32* null, align 8
@LowWram = common dso_local global i32* null, align 8
@BupRam = common dso_local global i32* null, align 8
@bupfilename = common dso_local global i64 0, align 8
@YAB_ERR_FILEWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @YabauseDeInit() #0 {
  %1 = call i32 (...) @SH2DeInit()
  %2 = load i32*, i32** @BiosRom, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @BiosRom, align 8
  %6 = call i32 @T2MemoryDeInit(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  store i32* null, i32** @BiosRom, align 8
  %8 = load i32*, i32** @HighWram, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32*, i32** @HighWram, align 8
  %12 = call i32 @T2MemoryDeInit(i32* %11)
  br label %13

13:                                               ; preds = %10, %7
  store i32* null, i32** @HighWram, align 8
  %14 = load i32*, i32** @LowWram, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** @LowWram, align 8
  %18 = call i32 @T2MemoryDeInit(i32* %17)
  br label %19

19:                                               ; preds = %16, %13
  store i32* null, i32** @LowWram, align 8
  %20 = load i32*, i32** @BupRam, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32*, i32** @BupRam, align 8
  %24 = load i64, i64* @bupfilename, align 8
  %25 = call i64 @T123Save(i32* %23, i32 65536, i32 1, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @YAB_ERR_FILEWRITE, align 4
  %29 = load i64, i64* @bupfilename, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @YabSetError(i32 %28, i8* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32*, i32** @BupRam, align 8
  %34 = call i32 @T1MemoryDeInit(i32* %33)
  br label %35

35:                                               ; preds = %32, %19
  store i32* null, i32** @BupRam, align 8
  %36 = call i32 (...) @CartDeInit()
  %37 = call i32 (...) @Cs2DeInit()
  %38 = call i32 (...) @ScuDeInit()
  %39 = call i32 (...) @ScspDeInit()
  %40 = call i32 (...) @Vdp1DeInit()
  %41 = call i32 (...) @Vdp2DeInit()
  %42 = call i32 (...) @SmpcDeInit()
  %43 = call i32 (...) @PerDeInit()
  %44 = call i32 (...) @VideoDeInit()
  %45 = call i32 (...) @CheatDeInit()
  ret void
}

declare dso_local i32 @SH2DeInit(...) #1

declare dso_local i32 @T2MemoryDeInit(i32*) #1

declare dso_local i64 @T123Save(i32*, i32, i32, i64) #1

declare dso_local i32 @YabSetError(i32, i8*) #1

declare dso_local i32 @T1MemoryDeInit(i32*) #1

declare dso_local i32 @CartDeInit(...) #1

declare dso_local i32 @Cs2DeInit(...) #1

declare dso_local i32 @ScuDeInit(...) #1

declare dso_local i32 @ScspDeInit(...) #1

declare dso_local i32 @Vdp1DeInit(...) #1

declare dso_local i32 @Vdp2DeInit(...) #1

declare dso_local i32 @SmpcDeInit(...) #1

declare dso_local i32 @PerDeInit(...) #1

declare dso_local i32 @VideoDeInit(...) #1

declare dso_local i32 @CheatDeInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
