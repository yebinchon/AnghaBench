; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_write_mapper_korea_8k.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_sms_cart.c_write_mapper_korea_8k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@z80_writemap = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8)* @write_mapper_korea_8k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mapper_korea_8k(i32 %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 %1, i8* %4, align 1
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 16384
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = call i32 @mapper_8k_w(i32 2, i32 %9)
  br label %75

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 24576
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8, i8* %4, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 @mapper_8k_w(i32 3, i32 %16)
  br label %75

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 32768
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = call i32 @mapper_8k_w(i32 0, i32 %23)
  br label %75

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 40960
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = call i32 @mapper_8k_w(i32 1, i32 %30)
  br label %75

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 65534
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 1
  %39 = and i32 %38, 255
  %40 = call i32 @mapper_8k_w(i32 2, i32 %39)
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 1
  %44 = add nsw i32 1, %43
  %45 = and i32 %44, 255
  %46 = call i32 @mapper_8k_w(i32 3, i32 %45)
  br label %63

47:                                               ; preds = %32
  %48 = load i32, i32* %3, align 4
  %49 = icmp eq i32 %48, 65535
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 1
  %54 = and i32 %53, 255
  %55 = call i32 @mapper_8k_w(i32 0, i32 %54)
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 1
  %59 = add nsw i32 1, %58
  %60 = and i32 %59, 255
  %61 = call i32 @mapper_8k_w(i32 1, i32 %60)
  br label %62

62:                                               ; preds = %50, %47
  br label %63

63:                                               ; preds = %62, %35
  %64 = load i8, i8* %4, align 1
  %65 = load i8**, i8*** @z80_writemap, align 8
  %66 = load i32, i32* %3, align 4
  %67 = lshr i32 %66, 10
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = and i32 %71, 1023
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  store i8 %64, i8* %74, align 1
  br label %75

75:                                               ; preds = %63, %28, %21, %14, %7
  ret void
}

declare dso_local i32 @mapper_8k_w(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
