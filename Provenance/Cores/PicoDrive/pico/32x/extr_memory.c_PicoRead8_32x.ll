; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoRead8_32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoRead8_32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@str_mars = common dso_local global i32* null, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"m68k unmapped r8  [%06x] @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"m68k 32x r8  [%06x]   %02x @%06x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoRead8_32x(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65472
  %7 = icmp eq i32 %6, 20736
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 63
  %13 = xor i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 65532
  %20 = icmp eq i32 %19, 12524
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** @str_mars, align 8
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  br label %34

28:                                               ; preds = %17
  %29 = load i32, i32* @EL_UIO, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SekPc, align 4
  %32 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %41

34:                                               ; preds = %21, %8
  %35 = load i32, i32* @EL_32X, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SekPc, align 4
  %39 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
