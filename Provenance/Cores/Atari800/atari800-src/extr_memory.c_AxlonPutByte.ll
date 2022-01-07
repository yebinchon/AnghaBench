; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_AxlonPutByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_memory.c_AxlonPutByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMORY_mem = common dso_local global i32* null, align 8
@axlon_current_bankmask = common dso_local global i32 0, align 4
@axlon_curbank = common dso_local global i32 0, align 4
@axlon_ram = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @AxlonPutByte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AxlonPutByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65280
  %8 = icmp eq i32 %7, 3840
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** @MEMORY_mem, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 %10, i32* %14, align 4
  br label %15

15:                                               ; preds = %9, %2
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = icmp slt i32 %17, 192
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %46

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @axlon_current_bankmask, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @axlon_curbank, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %46

28:                                               ; preds = %20
  %29 = load i32*, i32** @axlon_ram, align 8
  %30 = load i32, i32* @axlon_curbank, align 4
  %31 = mul nsw i32 %30, 16384
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32*, i32** @MEMORY_mem, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16384
  %36 = call i32 @memcpy(i32* %33, i32* %35, i32 16384)
  %37 = load i32*, i32** @MEMORY_mem, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16384
  %39 = load i32*, i32** @axlon_ram, align 8
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 16384
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i32 @memcpy(i32* %38, i32* %43, i32 16384)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* @axlon_curbank, align 4
  br label %46

46:                                               ; preds = %28, %27, %19
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
