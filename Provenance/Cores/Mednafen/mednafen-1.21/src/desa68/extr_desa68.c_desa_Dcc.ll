; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_desa_Dcc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/desa68/extr_desa68.c_desa_Dcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64* }

@dbcc_ascii = common dso_local global i8* null, align 8
@d = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MODE_ABSW = common dso_local global i64 0, align 8
@MODE_dPC = common dso_local global i64 0, align 8
@DESA68_INST = common dso_local global i32 0, align 4
@DESA68_BRA = common dso_local global i32 0, align 4
@DESA68_BSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @desa_Dcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desa_Dcc() #0 {
  %1 = load i8*, i8** @dbcc_ascii, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 0), align 8
  %3 = ashr i32 %2, 8
  %4 = and i32 %3, 15
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8, i8* %1, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = add nsw i32 1145176064, %8
  %10 = trunc i32 %9 to i8
  %11 = call i32 @desa_ascii(i8 signext %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 1), align 4
  %13 = shl i32 %12, 8
  %14 = add nsw i32 541339692, %13
  %15 = trunc i32 %14 to i8
  %16 = call i32 @desa_ascii(i8 signext %15)
  %17 = load i64, i64* @MODE_ABSW, align 8
  %18 = load i64, i64* @MODE_dPC, align 8
  %19 = load i64, i64* @MODE_ABSW, align 8
  %20 = sub nsw i64 %18, %19
  %21 = call i32 @get_ea_2(i64 %17, i64 %20, i32 0)
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 5), align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 -4
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 3), align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 4), align 8
  %25 = load i32, i32* @DESA68_INST, align 4
  %26 = load i32, i32* @DESA68_BRA, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DESA68_BSR, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @d, i32 0, i32 2), align 8
  ret void
}

declare dso_local i32 @desa_ascii(i8 signext) #1

declare dso_local i32 @get_ea_2(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
