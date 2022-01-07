; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cd_cart.c_cart_prot_write_word.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cd_cart.c_cart_prot_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@cart_ram_write_byte = common dso_local global i8* null, align 8
@m68k = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@cart_ram_write_word = common dso_local global i32 0, align 4
@zbank_memory_map = common dso_local global %struct.TYPE_8__* null, align 8
@m68k_unused_8_w = common dso_local global i8* null, align 8
@m68k_unused_16_w = common dso_local global i32 0, align 4
@zbank_unused_w = common dso_local global i8* null, align 8
@scd = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cart_prot_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cart_prot_write_word(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  store i32 96, i32* %5, align 4
  br label %10

10:                                               ; preds = %32, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 112
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i8*, i8** @cart_ram_write_byte, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i8* %14, i8** %19, align 8
  %20 = load i32, i32* @cart_ram_write_word, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %20, i32* %25, align 8
  %26 = load i8*, i8** @cart_ram_write_byte, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i8* %26, i8** %31, align 8
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %10

35:                                               ; preds = %10
  br label %63

36:                                               ; preds = %2
  store i32 96, i32* %5, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 112
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i8*, i8** @m68k_unused_8_w, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i8* %41, i8** %46, align 8
  %47 = load i32, i32* @m68k_unused_16_w, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 8
  %53 = load i8*, i8** @zbank_unused_w, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %53, i8** %58, align 8
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %37

62:                                               ; preds = %37
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 255
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
