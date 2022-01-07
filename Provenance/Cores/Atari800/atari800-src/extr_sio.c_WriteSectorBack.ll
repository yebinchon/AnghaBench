; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_WriteSectorBack.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_WriteSectorBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CommandFrame = common dso_local global i32* null, align 8
@SIO_MAX_DRIVES = common dso_local global i8 0, align 1
@DataBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @WriteSectorBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @WriteSectorBack() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load i32*, i32** @CommandFrame, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 2
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** @CommandFrame, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = add nsw i32 %6, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32*, i32** @CommandFrame, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 49
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %3, align 1
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @SIO_MAX_DRIVES, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i8 0, i8* %1, align 1
  br label %37

23:                                               ; preds = %0
  %24 = load i32*, i32** @CommandFrame, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %36 [
    i32 79, label %27
    i32 80, label %31
    i32 87, label %31
    i32 208, label %31
    i32 215, label %31
  ]

27:                                               ; preds = %23
  %28 = load i8, i8* %3, align 1
  %29 = load i32, i32* @DataBuffer, align 4
  %30 = call signext i8 @SIO_WriteStatusBlock(i8 signext %28, i32 %29)
  store i8 %30, i8* %1, align 1
  br label %37

31:                                               ; preds = %23, %23, %23, %23
  %32 = load i8, i8* %3, align 1
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @DataBuffer, align 4
  %35 = call signext i8 @SIO_WriteSector(i8 signext %32, i32 %33, i32 %34)
  store i8 %35, i8* %1, align 1
  br label %37

36:                                               ; preds = %23
  store i8 69, i8* %1, align 1
  br label %37

37:                                               ; preds = %36, %31, %27, %22
  %38 = load i8, i8* %1, align 1
  ret i8 %38
}

declare dso_local signext i8 @SIO_WriteStatusBlock(i8 signext, i32) #1

declare dso_local signext i8 @SIO_WriteSector(i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
