; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_usleep.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_main.c_usleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usleep_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usleep(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %7, %1
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* %2, align 4
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = load i32, i32* @usleep_num, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @usleep_num, align 4
  %10 = load i32, i32* @usleep_num, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @usleep_num, align 4
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !6
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !7
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !8
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !9
  call void asm sideeffect "NOP", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !10
  br label %3

12:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 296}
!3 = !{i32 316}
!4 = !{i32 336}
!5 = !{i32 356}
!6 = !{i32 376}
!7 = !{i32 396}
!8 = !{i32 416}
!9 = !{i32 436}
!10 = !{i32 456}
