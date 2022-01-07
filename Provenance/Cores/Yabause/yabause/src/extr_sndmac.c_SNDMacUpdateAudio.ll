; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_SNDMacUpdateAudio.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sndmac.c_SNDMacUpdateAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mutex = common dso_local global i32 0, align 4
@BUFFER_LEN = common dso_local global i32 0, align 4
@write_pos = common dso_local global i32 0, align 4
@buffer = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @SNDMacUpdateAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SNDMacUpdateAudio(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @pthread_mutex_lock(i32* @mutex)
  %10 = load i32, i32* @BUFFER_LEN, align 4
  %11 = load i32, i32* @write_pos, align 4
  %12 = sub nsw i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 %13, 2
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32, i32* @BUFFER_LEN, align 4
  %18 = load i32, i32* @write_pos, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 2
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 2
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i64, i64* @buffer, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* @write_pos, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %35, 2
  %37 = call i32 @macConvert32uto16s(i32* %28, i32* %29, i32* %34, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = ashr i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i64, i64* @buffer, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %53, 2
  %55 = call i32 @macConvert32uto16s(i32* %45, i32* %50, i32* %52, i32 %54)
  br label %56

56:                                               ; preds = %40, %27
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* @write_pos, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* @write_pos, align 4
  %62 = load i32, i32* @BUFFER_LEN, align 4
  %63 = load i32, i32* @write_pos, align 4
  %64 = srem i32 %63, %62
  store i32 %64, i32* @write_pos, align 4
  %65 = call i32 @pthread_mutex_unlock(i32* @mutex)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @macConvert32uto16s(i32*, i32*, i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
