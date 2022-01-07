; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_populate_opmask.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_avx.c_populate_opmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@karray0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @populate_opmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_opmask() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 8
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = call i64 (...) @getpid()
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 32
  %10 = load i32, i32* %2, align 4
  %11 = mul nsw i32 286331153, %10
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 %14
  store i32 %12, i32* %15, align 4
  br label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %3

19:                                               ; preds = %3
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 0
  call void asm sideeffect "kmovq $0, %k0", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %20) #2, !srcloc !2
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 1
  call void asm sideeffect "kmovq $0, %k1", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %21) #2, !srcloc !3
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 2
  call void asm sideeffect "kmovq $0, %k2", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %22) #2, !srcloc !4
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 3
  call void asm sideeffect "kmovq $0, %k3", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %23) #2, !srcloc !5
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 4
  call void asm sideeffect "kmovq $0, %k4", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %24) #2, !srcloc !6
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 5
  call void asm sideeffect "kmovq $0, %k5", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %25) #2, !srcloc !7
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 6
  call void asm sideeffect "kmovq $0, %k6", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %26) #2, !srcloc !8
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %1, i64 0, i64 7
  call void asm sideeffect "kmovq $0, %k7", "*m,~{dirflag},~{fpsr},~{flags}"(i32* %27) #2, !srcloc !9
  %28 = load i32, i32* @karray0, align 4
  %29 = call i32 @store_opmask(i32 %28)
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @store_opmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 425}
!3 = !{i32 476}
!4 = !{i32 527}
!5 = !{i32 578}
!6 = !{i32 629}
!7 = !{i32 680}
!8 = !{i32 731}
!9 = !{i32 782}
