; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_md_port_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_md_port_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@config = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @z80_md_port_r(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = and i32 %4, 193
  switch i32 %5, label %24 [
    i32 64, label %6
    i32 65, label %13
    i32 128, label %19
    i32 129, label %21
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %8 = sub nsw i32 %7, 15
  %9 = call i32 @vdp_hvc_r(i32 %8)
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %2, align 1
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %15 = sub nsw i32 %14, 15
  %16 = call i32 @vdp_hvc_r(i32 %15)
  %17 = and i32 %16, 255
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %2, align 1
  br label %56

19:                                               ; preds = %1
  %20 = call zeroext i8 (...) @vdp_z80_data_r()
  store i8 %20, i8* %2, align 1
  br label %56

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Z80, i32 0, i32 0), align 4
  %23 = call zeroext i8 @vdp_z80_ctrl_r(i32 %22)
  store i8 %23, i8* %2, align 1
  br label %56

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 255
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 193
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 220
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 221
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %32, %29, %24
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 1
  %41 = call zeroext i8 @io_z80_read(i32 %40)
  store i8 %41, i8* %2, align 1
  br label %56

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = icmp uge i32 %43, 240
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @config, i32 0, i32 0), align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 3
  %52 = call zeroext i8 @YM2413Read(i32 %51)
  store i8 %52, i8* %2, align 1
  br label %56

53:                                               ; preds = %45, %42
  %54 = load i32, i32* %3, align 4
  %55 = call zeroext i8 @z80_unused_port_r(i32 %54)
  store i8 %55, i8* %2, align 1
  br label %56

56:                                               ; preds = %53, %49, %38, %21, %19, %13, %6
  %57 = load i8, i8* %2, align 1
  ret i8 %57
}

declare dso_local i32 @vdp_hvc_r(i32) #1

declare dso_local zeroext i8 @vdp_z80_data_r(...) #1

declare dso_local zeroext i8 @vdp_z80_ctrl_r(i32) #1

declare dso_local zeroext i8 @io_z80_read(i32) #1

declare dso_local zeroext i8 @YM2413Read(i32) #1

declare dso_local zeroext i8 @z80_unused_port_r(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
