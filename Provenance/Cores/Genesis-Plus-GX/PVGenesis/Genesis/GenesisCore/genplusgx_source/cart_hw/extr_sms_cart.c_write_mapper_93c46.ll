; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_write_mapper_93c46.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_write_mapper_93c46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }

@eeprom_93c = common dso_local global %struct.TYPE_2__ zeroinitializer, align 1
@z80_writemap = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @write_mapper_93c46 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mapper_93c46(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 32768
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom_93c, i32 0, i32 0), align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i8, i8* %4, align 1
  %13 = call i32 @eeprom_93c_write(i8 zeroext %12)
  br label %49

14:                                               ; preds = %7, %2
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 65532
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load i8, i8* %4, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, 8
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @eeprom_93c, i32 0, i32 0), align 1
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 (...) @eeprom_93c_init()
  br label %28

28:                                               ; preds = %26, %17
  br label %29

29:                                               ; preds = %28, %14
  %30 = load i32, i32* %3, align 4
  %31 = icmp ugt i32 %30, 65532
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 3
  %35 = load i8, i8* %4, align 1
  %36 = call i32 @mapper_16k_w(i32 %34, i8 zeroext %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i8, i8* %4, align 1
  %39 = load i8**, i8*** @z80_writemap, align 8
  %40 = load i32, i32* %3, align 4
  %41 = lshr i32 %40, 10
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 1023
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 %38, i8* %48, align 1
  br label %49

49:                                               ; preds = %37, %11
  ret void
}

declare dso_local i32 @eeprom_93c_write(i8 zeroext) #1

declare dso_local i32 @eeprom_93c_init(...) #1

declare dso_local i32 @mapper_16k_w(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
