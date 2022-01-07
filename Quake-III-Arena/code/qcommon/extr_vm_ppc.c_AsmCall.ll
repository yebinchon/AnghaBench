; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc.c_AsmCall.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_vm_ppc.c_AsmCall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AsmCall() #0 {
  call void asm sideeffect "    lwz\09\09r12,0(r4)\09\0A    addi\09r4,r4,-4\09\09\0A    cmpwi\09r12,0\09\09\09\0A    bc\09\0912,0, systemTrap\09\0A    slwi\09r12,r12,2\09\09\0A    lwzx\09r12, r8, r12\09\09\0A    mtctr\09r12\09\09\09\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  call void asm sideeffect "\09lwz\09\09r1,0(r1)\09\0A\09lmw\09\09r30,-8(r1)\09\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  call void asm sideeffect "\09    bcctr\0920,0\09\09\0AsystemTrap:\09\09\09\09\0A\09subfic\09r12,r12,-1\09\09\0A    mflr\09r13\09\09\09\0A\09addi\09r1,r1,-92\09\09\0A    stw\09\09r3,56(r1)\09\0A    stw\09\09r4,60(r1)\09\0A    stw\09\09r5,64(r1)\09\0A    stw\09\09r6,68(r1)\09\0A    stw\09\09r7,72(r1)\09\0A    stw\09\09r8,76(r1)\09\0A    stw\09\09r9,80(r1)\09\0A    stw\09\09r10,84(r1)\09\0A    stw\09\09r13,88(r1)\09\0A    addi\09r13,r3,-4\09\09\0A    stw\09\09r13,0(r10)\09\0A    add\09\09r3,r3,r5\09\0A    stwu\09r12,4(r3)\09\09\0A    lwz\09\09r12,4(r10)\09\0A    mtctr\09r12\09\09\09\0A    bcctrl\0920,0\09\09\09\0A    mr\09\09r12,r3\09\09\09\0A   \09lwz\09\09r3,56(r1)\09\0A   \09lwz\09\09r4,60(r1)\09\0A   \09lwz\09\09r5,64(r1)\09\0A   \09lwz\09\09r6,68(r1)\09\0A   \09lwz\09\09r7,72(r1)\09\0A   \09lwz\09\09r8,76(r1)\09\0A   \09lwz\09\09r9,80(r1)\09\0A   \09lwz\09\09r10,84(r1)\09\0A   \09lwz\09\09r13,88(r1)\09\0A    addi\09r1,r1,92\09\09\0A    mtlr\09r13\09\09\09\0A    stwu\09r12,4(r4)\09\09\0A", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 163, i32 188, i32 214, i32 237, i32 269, i32 295, i32 323}
!3 = !{i32 362, i32 383}
!4 = !{i32 415, i32 440, i32 461, i32 488, i32 508, i32 530, i32 554, i32 578, i32 602, i32 626, i32 650, i32 674, i32 698, i32 723, i32 750, i32 775, i32 802, i32 825, i32 853, i32 878, i32 899, i32 922, i32 946, i32 970, i32 994, i32 1018, i32 1042, i32 1066, i32 1090, i32 1114, i32 1139, i32 1164, i32 1190, i32 1212}
