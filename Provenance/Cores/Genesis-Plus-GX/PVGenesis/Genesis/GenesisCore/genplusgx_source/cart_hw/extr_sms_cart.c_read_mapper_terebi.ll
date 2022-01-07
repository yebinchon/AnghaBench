; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_read_mapper_terebi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_read_mapper_terebi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@z80_readmap = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @read_mapper_terebi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_mapper_terebi(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 32768
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = call i32 (...) @terebi_oekaki_read()
  %8 = ashr i32 %7, 8
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %2, align 1
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 40960
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = call i32 (...) @terebi_oekaki_read()
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %2, align 1
  br label %29

17:                                               ; preds = %10
  %18 = load i8**, i8*** @z80_readmap, align 8
  %19 = load i32, i32* %3, align 4
  %20 = lshr i32 %19, 10
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1023
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %2, align 1
  br label %29

29:                                               ; preds = %17, %13, %6
  %30 = load i8, i8* %2, align 1
  ret i8 %30
}

declare dso_local i32 @terebi_oekaki_read(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
