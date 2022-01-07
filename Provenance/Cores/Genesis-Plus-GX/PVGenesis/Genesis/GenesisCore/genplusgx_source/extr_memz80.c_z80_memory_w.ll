; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_memory_w.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_memory_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, i8)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@zram = common dso_local global i8* null, align 8
@Z80 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_6__* null, align 8
@zbank = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @z80_memory_w(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = lshr i32 %5, 13
  %7 = and i32 %6, 7
  switch i32 %7, label %42 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %15
    i32 3, label %21
  ]

8:                                                ; preds = %2, %2
  %9 = load i8, i8* %4, align 1
  %10 = load i8*, i8** @zram, align 8
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 8191
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8 %9, i8* %14, align 1
  br label %78

15:                                               ; preds = %2
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Z80, i32 0, i32 0), align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 3
  %19 = load i8, i8* %4, align 1
  %20 = call i32 @fm_write(i32 %16, i32 %18, i8 zeroext %19)
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = lshr i32 %22, 8
  switch i32 %23, label %38 [
    i32 96, label %24
    i32 127, label %30
  ]

24:                                               ; preds = %21
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 1
  %28 = trunc i32 %27 to i8
  %29 = call i32 @gen_zbank_w(i8 zeroext %28)
  br label %78

30:                                               ; preds = %21
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 192
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (i32, i8)*, i32 (i32, i8)** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load i8, i8* %4, align 1
  %37 = call i32 %34(i32 %35, i8 zeroext %36)
  br label %78

38:                                               ; preds = %21
  %39 = load i32, i32* %3, align 4
  %40 = load i8, i8* %4, align 1
  %41 = call i32 @z80_unused_w(i32 %39, i8 zeroext %40)
  br label %78

42:                                               ; preds = %2
  %43 = load i32, i32* @zbank, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 32767
  %46 = or i32 %43, %45
  store i32 %46, i32* %3, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %48 = load i32, i32* %3, align 4
  %49 = lshr i32 %48, 16
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (i32, i8)*, i32 (i32, i8)** %52, align 8
  %54 = icmp ne i32 (i32, i8)* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %42
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %57 = load i32, i32* %3, align 4
  %58 = lshr i32 %57, 16
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (i32, i8)*, i32 (i32, i8)** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i8, i8* %4, align 1
  %65 = call i32 %62(i32 %63, i8 zeroext %64)
  br label %78

66:                                               ; preds = %42
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %68 = load i32, i32* %3, align 4
  %69 = lshr i32 %68, 16
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %3, align 4
  %75 = and i32 %74, 65535
  %76 = load i8, i8* %4, align 1
  %77 = call i32 @WRITE_BYTE(i32 %73, i32 %75, i8 zeroext %76)
  br label %78

78:                                               ; preds = %66, %55, %38, %30, %24, %15, %8
  ret void
}

declare dso_local i32 @fm_write(i32, i32, i8 zeroext) #1

declare dso_local i32 @gen_zbank_w(i8 zeroext) #1

declare dso_local i32 @z80_unused_w(i32, i8 zeroext) #1

declare dso_local i32 @WRITE_BYTE(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
