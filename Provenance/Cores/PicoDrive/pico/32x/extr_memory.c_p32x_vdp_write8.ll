; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_vdp_write8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_p32x_vdp_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@P32XV_PRI = common dso_local global i32 0, align 4
@P32XV_nPAL = common dso_local global i32 0, align 4
@P32XV_VBLK = common dso_local global i32 0, align 4
@P32XV_Mx = common dso_local global i32 0, align 4
@P32XV_FS = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"VDP FS: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @p32x_vdp_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p32x_vdp_write8(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  store i32* %6, i32** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 15
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %84 [
    i32 1, label %10
    i32 3, label %31
    i32 5, label %36
    i32 11, label %41
  ]

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = xor i32 %13, %14
  %16 = load i32, i32* @P32XV_PRI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 1), align 8
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @P32XV_nPAL, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = or i32 %25, %27
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  br label %84

31:                                               ; preds = %2
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 1
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  br label %84

36:                                               ; preds = %2
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 255
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %38, i32* %40, align 4
  br label %84

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 2), align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @P32XV_VBLK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %41
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @P32XV_Mx, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %51, %41
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = xor i32 %61, %62
  %64 = load i32, i32* @P32XV_FS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %58
  %68 = load i32, i32* @P32XV_FS, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %4, align 4
  %74 = xor i32 %73, 1
  %75 = call i32 @Pico32xSwapDRAM(i32 %74)
  %76 = load i32, i32* @EL_32X, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @P32XV_FS, align 4
  %81 = and i32 %79, %80
  %82 = call i32 @elprintf(i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %67, %58, %51
  br label %84

84:                                               ; preds = %2, %83, %36, %31, %20
  ret void
}

declare dso_local i32 @Pico32xSwapDRAM(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
