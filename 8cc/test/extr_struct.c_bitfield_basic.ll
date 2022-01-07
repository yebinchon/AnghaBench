; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_bitfield_basic.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_bitfield_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%struct.anon = type { i16, [2 x i8] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bitfield_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfield_basic() #0 {
  %1 = alloca %union.anon, align 4
  %2 = bitcast %union.anon* %1 to i32*
  store i32 0, i32* %2, align 4
  %3 = bitcast %union.anon* %1 to %struct.anon*
  %4 = bitcast %struct.anon* %3 to i16*
  %5 = load i16, i16* %4, align 4
  %6 = and i16 %5, -32
  %7 = or i16 %6, 10
  store i16 %7, i16* %4, align 4
  %8 = bitcast %union.anon* %1 to %struct.anon*
  %9 = bitcast %struct.anon* %8 to i16*
  %10 = load i16, i16* %9, align 4
  %11 = and i16 %10, -993
  %12 = or i16 %11, 352
  store i16 %12, i16* %9, align 4
  %13 = bitcast %union.anon* %1 to %struct.anon*
  %14 = bitcast %struct.anon* %13 to i16*
  %15 = load i16, i16* %14, align 4
  %16 = shl i16 %15, 11
  %17 = ashr i16 %16, 11
  %18 = sext i16 %17 to i32
  %19 = call i32 @expect(i32 10, i32 %18)
  %20 = bitcast %union.anon* %1 to %struct.anon*
  %21 = bitcast %struct.anon* %20 to i16*
  %22 = load i16, i16* %21, align 4
  %23 = shl i16 %22, 6
  %24 = ashr i16 %23, 11
  %25 = sext i16 %24 to i32
  %26 = call i32 @expect(i32 11, i32 %25)
  %27 = bitcast %union.anon* %1 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @expect(i32 362, i32 %28)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
