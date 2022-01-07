; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_membnk.c_zbank_read_ctrl_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_membnk.c_zbank_read_ctrl_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32)* }

@cart = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zbank_read_ctrl_io(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 255
  switch i32 %7, label %60 [
    i32 0, label %8
    i32 17, label %20
    i32 48, label %28
    i32 65, label %47
    i32 16, label %57
    i32 18, label %57
    i32 32, label %57
    i32 64, label %57
    i32 68, label %57
    i32 80, label %57
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 224
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 15
  %16 = call i32 @io_68k_read(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @zbank_unused_r(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @zbank_unused_r(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %20
  store i32 255, i32* %2, align 4
  br label %63

28:                                               ; preds = %1
  %29 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cart, i32 0, i32 0, i32 0), align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 %32(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 255
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = lshr i32 %42, 8
  store i32 %43, i32* %2, align 4
  br label %63

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @zbank_unused_r(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %63

47:                                               ; preds = %1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 (...) @gen_bankswitch_r()
  %53 = or i32 %52, 254
  store i32 %53, i32* %2, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @zbank_unused_r(i32 %55)
  store i32 %56, i32* %2, align 4
  br label %63

57:                                               ; preds = %1, %1, %1, %1, %1, %1
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @zbank_unused_r(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %1
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @zbank_lockup_r(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %57, %54, %51, %44, %41, %38, %27, %24, %17, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @io_68k_read(i32) #1

declare dso_local i32 @zbank_unused_r(i32) #1

declare dso_local i32 @gen_bankswitch_r(...) #1

declare dso_local i32 @zbank_lockup_r(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
