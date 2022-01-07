; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cd_cart.c_cart_prot_write_byte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cd_hw/extr_cd_cart.c_cart_prot_write_byte.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @cart_prot_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cart_prot_write_byte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %69

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %9
  store i32 96, i32* %5, align 4
  br label %14

14:                                               ; preds = %36, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 112
  br i1 %16, label %17, label %39

17:                                               ; preds = %14
  %18 = load i8*, i8** @cart_ram_write_byte, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i8* %18, i8** %23, align 8
  %24 = load i32, i32* @cart_ram_write_word, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 8
  %30 = load i8*, i8** @cart_ram_write_byte, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  br label %36

36:                                               ; preds = %17
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %14

39:                                               ; preds = %14
  br label %67

40:                                               ; preds = %9
  store i32 96, i32* %5, align 4
  br label %41

41:                                               ; preds = %63, %40
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 112
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** @m68k_unused_8_w, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i8* %45, i8** %50, align 8
  %51 = load i32, i32* @m68k_unused_16_w, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @m68k, i32 0, i32 0), align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %51, i32* %56, align 8
  %57 = load i8*, i8** @zbank_unused_w, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @zbank_memory_map, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i8* %57, i8** %62, align 8
  br label %63

63:                                               ; preds = %44
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %41

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @scd, i32 0, i32 0, i32 0), align 4
  br label %69

69:                                               ; preds = %67, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
