; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_write_mapper_terebi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_write_mapper_terebi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@z80_writemap = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @write_mapper_terebi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mapper_terebi(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 24576
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8, i8* %4, align 1
  %9 = call i32 @terebi_oekaki_write(i8 zeroext %8)
  br label %22

10:                                               ; preds = %2
  %11 = load i8, i8* %4, align 1
  %12 = load i8**, i8*** @z80_writemap, align 8
  %13 = load i32, i32* %3, align 4
  %14 = lshr i32 %13, 10
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 1023
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8 %11, i8* %21, align 1
  br label %22

22:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @terebi_oekaki_write(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
