; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_Process.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votraxsnd.c_VOTRAXSND_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@votrax_written = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@votrax_written_byte = common dso_local global i32 0, align 4
@num_pokeys = common dso_local global i32 0, align 4
@VTRX_BLOCK_SIZE = common dso_local global i32 0, align 4
@votrax_buffer = common dso_local global i32 0, align 4
@temp_votrax_buffer = common dso_local global i32 0, align 4
@bit16 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VOTRAXSND_Process(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @votraxsnd_enabled()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %69

9:                                                ; preds = %2
  %10 = load i64, i64* @votrax_written, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* @votrax_written, align 8
  %14 = load i32, i32* @votrax_written_byte, align 4
  %15 = call i32 @Votrax_PutByte(i32 %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i32, i32* @num_pokeys, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %51, %16
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @VTRX_BLOCK_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @VTRX_BLOCK_SIZE, align 4
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @votrax_buffer, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @temp_votrax_buffer, align 4
  %36 = call i32 @votrax_process(i32 %33, i32 %34, i32 %35)
  %37 = load i64, i64* @bit16, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i8*, i8** %3, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* @votrax_buffer, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @mix(i32* %41, i32 %42, i32 %43, i32 32)
  br label %51

45:                                               ; preds = %31
  %46 = load i8*, i8** %3, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* @votrax_buffer, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @mix8(i32* %47, i32 %48, i32 %49, i32 32)
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %3, align 8
  %53 = load i32, i32* @VTRX_BLOCK_SIZE, align 4
  %54 = load i64, i64* @bit16, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 1
  %58 = mul nsw i32 %53, %57
  %59 = load i32, i32* @num_pokeys, align 4
  %60 = icmp eq i32 %59, 2
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 2, i32 1
  %63 = mul nsw i32 %58, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %52, i64 %64
  store i8* %65, i8** %3, align 8
  %66 = load i32, i32* @VTRX_BLOCK_SIZE, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %20

69:                                               ; preds = %8, %20
  ret void
}

declare dso_local i32 @votraxsnd_enabled(...) #1

declare dso_local i32 @Votrax_PutByte(i32) #1

declare dso_local i32 @votrax_process(i32, i32, i32) #1

declare dso_local i32 @mix(i32*, i32, i32, i32) #1

declare dso_local i32 @mix8(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
