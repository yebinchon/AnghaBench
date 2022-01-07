; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_store_opmask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_store_opmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @store_opmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_opmask(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  call void asm sideeffect "kmovq %k0, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %4) #1, !srcloc !2
  %5 = load i32*, i32** %2, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  call void asm sideeffect "kmovq %k1, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %6) #1, !srcloc !3
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 2
  call void asm sideeffect "kmovq %k2, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %8) #1, !srcloc !4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 3
  call void asm sideeffect "kmovq %k3, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %10) #1, !srcloc !5
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  call void asm sideeffect "kmovq %k4, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %12) #1, !srcloc !6
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 5
  call void asm sideeffect "kmovq %k5, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %14) #1, !srcloc !7
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 6
  call void asm sideeffect "kmovq %k6, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %16) #1, !srcloc !8
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 7
  call void asm sideeffect "kmovq %k7, $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i32* %18) #1, !srcloc !9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 249}
!3 = !{i32 299}
!4 = !{i32 349}
!5 = !{i32 399}
!6 = !{i32 449}
!7 = !{i32 499}
!8 = !{i32 549}
!9 = !{i32 599}
