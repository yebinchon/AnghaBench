; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c___AICallbackStackSwitch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_audio.c___AICallbackStackSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__AICallbackStackSwitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__AICallbackStackSwitch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void asm sideeffect "mflr\09%r0\0A\09\09\09\09\09\09\09  stw\09%r0,4(%r1)\0A\09\09\09\09\09\09\09  stwu  %r1,-24(%r1)\0A\09\09\09\09\09\09\09  stw\09%r31,20(%r1)\0A\09\09\09\09\09\09\09  mr\09%r31,%r3\0A\09\09\09\09\09\09\09  lis\09%r5,__OldStack@ha\0A\09\09\09\09\09\09\09  addi\09%r5,%r5,__OldStack@l\0A\09\09\09\09\09\09\09  stw\09%r1,0(%r5)\0A\09\09\09\09\09\09\09  lis\09%r5,__CallbackStack@ha\0A\09\09\09\09\09\09\09  addi\09%r5,%r5,__CallbackStack@l\0A\09\09\09\09\09\09\09  lwz\09%r1,0(%r5)\0A\09\09\09\09\09\09\09  subi\09%r1,%r1,8\0A\09\09\09\09\09\09\09  mtlr\09%r31\0A\09\09\09\09\09\09\09  blrl\0A\09\09\09\09\09\09\09  lis\09%r5,__OldStack@ha\0A\09\09\09\09\09\09\09  addi\09%r5,%r5,__OldStack@l\0A\09\09\09\09\09\09\09  lwz\09%r1,0(%r5)\0A\09\09\09\09\09\09\09  lwz\09%r0,28(%r1)\0A\09\09\09\09\09\09\09  lwz\09%r31,20(%r1)\0A\09\09\09\09\09\09\09  addi\09%r1,%r1,24\0A\09\09\09\09\09\09\09  mtlr\09%r0\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 271, i32 282, i32 308, i32 338, i32 366, i32 389, i32 422, i32 459, i32 485, i32 523, i32 565, i32 591, i32 617, i32 638, i32 654, i32 687, i32 724, i32 750, i32 777, i32 805, i32 832}
