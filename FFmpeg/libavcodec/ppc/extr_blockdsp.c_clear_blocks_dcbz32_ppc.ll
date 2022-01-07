; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/ppc/extr_blockdsp.c_clear_blocks_dcbz32_ppc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/ppc/extr_blockdsp.c_clear_blocks_dcbz32_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @clear_blocks_dcbz32_ppc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_blocks_dcbz32_ppc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = ptrtoint i32* %5 to i64
  %7 = and i64 %6, 16
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32* %12 to i64*
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = bitcast i32* %15 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  store i64 0, i64* %17, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = bitcast i32* %18 to i64*
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = bitcast i32* %21 to i64*
  %23 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 16
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %11, %1
  br label %27

27:                                               ; preds = %34, %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %29, 1505
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %4, align 4
  call void asm sideeffect "dcbz $0,$1", "{bx},r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %32, i32 %33) #1, !srcloc !2
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 32
  store i32 %36, i32* %4, align 4
  br label %27

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i32*, i32** %2, align 8
  %42 = bitcast i32* %41 to i64*
  %43 = getelementptr inbounds i64, i64* %42, i64 188
  store i64 0, i64* %43, align 8
  %44 = load i32*, i32** %2, align 8
  %45 = bitcast i32* %44 to i64*
  %46 = getelementptr inbounds i64, i64* %45, i64 189
  store i64 0, i64* %46, align 8
  %47 = load i32*, i32** %2, align 8
  %48 = bitcast i32* %47 to i64*
  %49 = getelementptr inbounds i64, i64* %48, i64 190
  store i64 0, i64* %49, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = bitcast i32* %50 to i64*
  %52 = getelementptr inbounds i64, i64* %51, i64 191
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 16
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %40, %37
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 608}
