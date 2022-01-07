; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_membnk.c_zbank_write_ctrl_io.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_membnk.c_zbank_write_ctrl_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.TYPE_6__ = type { i32 }

@Z80 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@cart = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zbank_write_ctrl_io(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 8
  %7 = and i32 %6, 255
  switch i32 %7, label %73 [
    i32 0, label %8
    i32 17, label %22
    i32 18, label %35
    i32 48, label %48
    i32 65, label %53
    i32 16, label %69
    i32 32, label %69
    i32 64, label %69
    i32 68, label %69
    i32 80, label %69
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 225
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = lshr i32 %13, 1
  %15 = and i32 %14, 15
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @io_68k_write(i32 %15, i32 %16)
  br label %77

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @zbank_unused_w(i32 %19, i32 %20)
  br label %77

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 1
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Z80, i32 0, i32 0), align 4
  %30 = call i32 @gen_zbusreq_w(i32 %28, i32 %29)
  br label %77

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @zbank_unused_w(i32 %32, i32 %33)
  br label %77

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 1
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Z80, i32 0, i32 0), align 4
  %43 = call i32 @gen_zreset_w(i32 %41, i32 %42)
  br label %77

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @zbank_unused_w(i32 %45, i32 %46)
  br label %77

48:                                               ; preds = %2
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cart, i32 0, i32 0, i32 0), align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 %49(i32 %50, i32 %51)
  br label %77

53:                                               ; preds = %2
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 1
  %64 = call i32 @gen_bankswitch_w(i32 %63)
  br label %77

65:                                               ; preds = %57, %53
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @zbank_unused_w(i32 %66, i32 %67)
  br label %77

69:                                               ; preds = %2, %2, %2, %2, %2
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @zbank_unused_w(i32 %70, i32 %71)
  br label %77

73:                                               ; preds = %2
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @zbank_lockup_w(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %69, %65, %61, %48, %44, %39, %31, %26, %18, %12
  ret void
}

declare dso_local i32 @io_68k_write(i32, i32) #1

declare dso_local i32 @zbank_unused_w(i32, i32) #1

declare dso_local i32 @gen_zbusreq_w(i32, i32) #1

declare dso_local i32 @gen_zreset_w(i32, i32) #1

declare dso_local i32 @gen_bankswitch_w(i32) #1

declare dso_local i32 @zbank_lockup_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
