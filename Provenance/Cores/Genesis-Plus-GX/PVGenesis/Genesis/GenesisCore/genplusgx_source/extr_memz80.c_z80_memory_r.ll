; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_memory_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/extr_memz80.c_z80_memory_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i8 (i32)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@zram = common dso_local global i8* null, align 8
@Z80 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_6__* null, align 8
@zbank = common dso_local global i32 0, align 4
@m68k = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @z80_memory_r(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = lshr i32 %4, 13
  %6 = and i32 %5, 7
  switch i32 %6, label %33 [
    i32 0, label %7
    i32 1, label %7
    i32 2, label %14
    i32 3, label %19
  ]

7:                                                ; preds = %1, %1
  %8 = load i8*, i8** @zram, align 8
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 8191
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %2, align 1
  br label %67

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Z80, i32 0, i32 0), align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 3
  %18 = call zeroext i8 @fm_read(i32 %15, i32 %17)
  store i8 %18, i8* %2, align 1
  br label %67

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = lshr i32 %20, 8
  %22 = icmp eq i32 %21, 127
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 192
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8 (i32)*, i8 (i32)** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call zeroext i8 %27(i32 %28)
  store i8 %29, i8* %2, align 1
  br label %67

30:                                               ; preds = %19
  %31 = load i32, i32* %3, align 4
  %32 = call zeroext i8 @z80_unused_r(i32 %31)
  store i8 %32, i8* %2, align 1
  br label %67

33:                                               ; preds = %1
  %34 = load i32, i32* @zbank, align 4
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, 32767
  %37 = or i32 %34, %36
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %39 = load i32, i32* %3, align 4
  %40 = lshr i32 %39, 16
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i8 (i32)*, i8 (i32)** %43, align 8
  %45 = icmp ne i8 (i32)* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zbank_memory_map, align 8
  %48 = load i32, i32* %3, align 4
  %49 = lshr i32 %48, 16
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i8 (i32)*, i8 (i32)** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call zeroext i8 %53(i32 %54)
  store i8 %55, i8* %2, align 1
  br label %67

56:                                               ; preds = %33
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @m68k, i32 0, i32 0), align 8
  %58 = load i32, i32* %3, align 4
  %59 = lshr i32 %58, 16
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 65535
  %66 = call zeroext i8 @READ_BYTE(i32 %63, i32 %65)
  store i8 %66, i8* %2, align 1
  br label %67

67:                                               ; preds = %56, %46, %30, %23, %14, %7
  %68 = load i8, i8* %2, align 1
  ret i8 %68
}

declare dso_local zeroext i8 @fm_read(i32, i32) #1

declare dso_local zeroext i8 @z80_unused_r(i32) #1

declare dso_local zeroext i8 @READ_BYTE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
