; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_bitfield_union.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_bitfield_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i16, [2 x i8] }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bitfield_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitfield_union() #0 {
  %1 = alloca %union.anon, align 4
  %2 = bitcast %union.anon* %1 to i16*
  %3 = load i16, i16* %2, align 4
  %4 = and i16 %3, -1024
  %5 = or i16 %4, 2
  store i16 %5, i16* %2, align 4
  %6 = bitcast %union.anon* %1 to i16*
  %7 = load i16, i16* %6, align 4
  %8 = shl i16 %7, 6
  %9 = ashr i16 %8, 6
  %10 = sext i16 %9 to i32
  %11 = call i32 @expect(i32 2, i32 %10)
  %12 = bitcast %union.anon* %1 to i8*
  %13 = load i8, i8* %12, align 4
  %14 = shl i8 %13, 3
  %15 = ashr i8 %14, 3
  %16 = sext i8 %15 to i32
  %17 = call i32 @expect(i32 2, i32 %16)
  %18 = bitcast %union.anon* %1 to i8*
  %19 = load i8, i8* %18, align 4
  %20 = shl i8 %19, 3
  %21 = ashr i8 %20, 3
  %22 = sext i8 %21 to i32
  %23 = call i32 @expect(i32 2, i32 %22)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
