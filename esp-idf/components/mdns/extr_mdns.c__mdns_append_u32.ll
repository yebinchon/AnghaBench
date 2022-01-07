; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_u32.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_append_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MDNS_MAX_PACKET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32)* @_mdns_append_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_append_u32(i32* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64*, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 3
  %11 = load i64, i64* @MDNS_MAX_PACKET_SIZE, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = call i32 @_mdns_append_u8(i32* %15, i64* %16, i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = call i32 @_mdns_append_u8(i32* %21, i64* %22, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = call i32 @_mdns_append_u8(i32* %27, i64* %28, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = call i32 @_mdns_append_u8(i32* %33, i64* %34, i32 %36)
  store i32 4, i32* %4, align 4
  br label %38

38:                                               ; preds = %14, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @_mdns_append_u8(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
