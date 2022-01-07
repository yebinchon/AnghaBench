; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_PutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cassette.c_CASSETTE_PutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESC_enable_sio_patch = common dso_local global i32 0, align 4
@cassette_writable = common dso_local global i64 0, align 8
@CASSETTE_record = common dso_local global i64 0, align 8
@cassette_file = common dso_local global i32 0, align 4
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_CHAN3 = common dso_local global i64 0, align 8
@POKEY_CHAN4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CASSETTE_PutByte(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ESC_enable_sio_patch, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load i64, i64* @cassette_writable, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load i64, i64* @CASSETTE_record, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, i32* @cassette_file, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32*, i32** @POKEY_AUDF, align 8
  %15 = load i64, i64* @POKEY_CHAN3, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @POKEY_AUDF, align 8
  %19 = load i64, i64* @POKEY_CHAN4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 256
  %23 = add nsw i32 %17, %22
  %24 = call i32 @IMG_TAPE_WriteByte(i32 %12, i32 %13, i32 %23)
  br label %25

25:                                               ; preds = %11, %8, %5, %1
  ret void
}

declare dso_local i32 @IMG_TAPE_WriteByte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
