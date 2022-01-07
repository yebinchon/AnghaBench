; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaGet.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/cyclone/Disa/extr_Disa.c_DisaGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Comment = common dso_local global i64* null, align 8
@DisaText = common dso_local global i64* null, align 8
@DisaPc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DisaGet() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64*, i64** @Comment, align 8
  %3 = getelementptr inbounds i64, i64* %2, i64 0
  store i64 0, i64* %3, align 8
  %4 = load i64*, i64** @DisaText, align 8
  %5 = getelementptr inbounds i64, i64* %4, i64 0
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @DisaPc, align 4
  %7 = call i32 @DisaWord(i32 %6)
  %8 = and i32 %7, 65535
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @DisaPc, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* @DisaPc, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @TryOp(i32 %11)
  %13 = load i64*, i64** @DisaText, align 8
  %14 = load i64*, i64** @Comment, align 8
  %15 = call i32 @strcat(i64* %13, i64* %14)
  ret i32 0
}

declare dso_local i32 @DisaWord(i32) #1

declare dso_local i32 @TryOp(i32) #1

declare dso_local i32 @strcat(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
