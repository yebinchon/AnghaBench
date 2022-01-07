; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_PicoLineMode4.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_mode4.c_PicoLineMode4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@skip_next_line = common dso_local global i64 0, align 8
@screen_offset = common dso_local global i64 0, align 8
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DrawLineDest = common dso_local global i8* null, align 8
@DrawLineDestIncrement = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoLineMode4(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @skip_next_line, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @skip_next_line, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* @skip_next_line, align 8
  br label %39

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @screen_offset, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i64 @PicoScanBegin(i64 %12)
  store i64 %13, i64* @skip_next_line, align 8
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 7
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 15
  %18 = call i32 @BackFill(i32 %17, i32 0)
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @DrawDisplayM4(i32 %25)
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @FinalizeLineM4(i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* @screen_offset, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @PicoScanEnd(i64 %33)
  store i64 %34, i64* @skip_next_line, align 8
  %35 = load i8*, i8** @DrawLineDest, align 8
  %36 = load i32, i32* @DrawLineDestIncrement, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** @DrawLineDest, align 8
  br label %39

39:                                               ; preds = %27, %5
  ret void
}

declare dso_local i64 @PicoScanBegin(i64) #1

declare dso_local i32 @BackFill(i32, i32) #1

declare dso_local i32 @DrawDisplayM4(i32) #1

declare dso_local i32 @FinalizeLineM4(i32) #1

declare dso_local i64 @PicoScanEnd(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
