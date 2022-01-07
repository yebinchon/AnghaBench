; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/tests/extr_test_misc2_gen.c_write_op.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/tests/extr_test_misc2_gen.c_write_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16)* @write_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_op(i16 zeroext %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %9 = load i16, i16* %5, align 2
  %10 = call i32 @bswap16(i16 zeroext %9)
  %11 = load i16, i16* %6, align 2
  %12 = call i32 @bswap16(i16 zeroext %11)
  %13 = load i16, i16* %7, align 2
  %14 = call i32 @bswap16(i16 zeroext %13)
  %15 = load i16, i16* %8, align 2
  %16 = call i32 @bswap16(i16 zeroext %15)
  %17 = load i32, i32* @f, align 4
  %18 = call i32 @fwrite(i16* %5, i32 1, i32 2, i32 %17)
  %19 = load i32, i32* @f, align 4
  %20 = call i32 @fwrite(i16* %6, i32 1, i32 2, i32 %19)
  %21 = load i32, i32* @f, align 4
  %22 = call i32 @fwrite(i16* %7, i32 1, i32 2, i32 %21)
  %23 = load i32, i32* @f, align 4
  %24 = call i32 @fwrite(i16* %8, i32 1, i32 2, i32 %23)
  ret void
}

declare dso_local i32 @bswap16(i16 zeroext) #1

declare dso_local i32 @fwrite(i16*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
