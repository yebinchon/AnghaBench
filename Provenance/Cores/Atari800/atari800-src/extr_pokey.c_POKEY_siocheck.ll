; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_siocheck.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pokey.c_POKEY_siocheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_CHAN3 = common dso_local global i64 0, align 8
@POKEY_CHAN4 = common dso_local global i64 0, align 8
@POKEY_SKCTL = common dso_local global i32 0, align 4
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @POKEY_siocheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @POKEY_siocheck() #0 {
  %1 = load i32*, i32** @POKEY_AUDF, align 8
  %2 = load i64, i64* @POKEY_CHAN3, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 40
  br i1 %5, label %24, label %6

6:                                                ; preds = %0
  %7 = load i32*, i32** @POKEY_AUDF, align 8
  %8 = load i64, i64* @POKEY_CHAN3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 16
  br i1 %11, label %24, label %12

12:                                               ; preds = %6
  %13 = load i32*, i32** @POKEY_AUDF, align 8
  %14 = load i64, i64* @POKEY_CHAN3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 8
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32*, i32** @POKEY_AUDF, align 8
  %20 = load i64, i64* @POKEY_CHAN3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %12, %6, %0
  %25 = load i32*, i32** @POKEY_AUDF, align 8
  %26 = load i64, i64* @POKEY_CHAN4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @POKEY_SKCTL, align 4
  %32 = and i32 %31, 120
  %33 = icmp eq i32 %32, 40
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %24
  %35 = load i32*, i32** @POKEY_AUDCTL, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 40
  %39 = icmp eq i32 %38, 40
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
