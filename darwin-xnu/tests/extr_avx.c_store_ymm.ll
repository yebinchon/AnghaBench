; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_store_ymm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_store_ymm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @store_ymm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_ymm(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, i32* %4, i64 %6
  call void asm sideeffect "vmovaps  %ymm0, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %7) #1, !srcloc !2
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  call void asm sideeffect "vmovaps  %ymm1, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %13) #1, !srcloc !3
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  call void asm sideeffect "vmovaps  %ymm2, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %19) #1, !srcloc !4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  call void asm sideeffect "vmovaps  %ymm3, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %25) #1, !srcloc !5
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  call void asm sideeffect "vmovaps  %ymm4, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %31) #1, !srcloc !6
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  call void asm sideeffect "vmovaps  %ymm5, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %37) #1, !srcloc !7
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  call void asm sideeffect "vmovaps  %ymm6, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %43) #1, !srcloc !8
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  call void asm sideeffect "vmovaps  %ymm7, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %49) #1, !srcloc !9
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  call void asm sideeffect "vmovaps  %ymm8, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %55) #1, !srcloc !10
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  call void asm sideeffect "vmovaps  %ymm9, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %61) #1, !srcloc !11
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  call void asm sideeffect "vmovaps  %ymm10, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %67) #1, !srcloc !12
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  call void asm sideeffect "vmovaps  %ymm11, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %73) #1, !srcloc !13
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  call void asm sideeffect "vmovaps  %ymm12, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %79) #1, !srcloc !14
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  %82 = load i32*, i32** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  call void asm sideeffect "vmovaps  %ymm13, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %85) #1, !srcloc !15
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  call void asm sideeffect "vmovaps  %ymm14, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %91) #1, !srcloc !16
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  %94 = load i32*, i32** %2, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  call void asm sideeffect "vmovaps  %ymm15, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %97) #1, !srcloc !17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 277}
!3 = !{i32 346}
!4 = !{i32 415}
!5 = !{i32 484}
!6 = !{i32 553}
!7 = !{i32 622}
!8 = !{i32 691}
!9 = !{i32 760}
!10 = !{i32 830}
!11 = !{i32 899}
!12 = !{i32 968}
!13 = !{i32 1038}
!14 = !{i32 1108}
!15 = !{i32 1178}
!16 = !{i32 1248}
!17 = !{i32 1318}
