; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_texconv.c_MakeTexture565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_texconv.c_MakeTexture565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeTexture565(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call { i32, i32, i32, i32 } asm sideeffect "\09srwi\09\09$6,$6,2\0A\09srwi\09\09$7,$7,2\0A\09subi\09\09$3,$4,4\0A\09subi\09\09$4,$4,8\0A2:\09mtctr\09\09$6\0A\09mr\09\09\09$0,$5\0A1:\09lwz\09\09\09$1,0($5)\0A\09stwu\09\09$1,8($4)\0A\09lwz\09\09\09$2,4($5)\0A\09stwu\09\09$2,8($3)\0A\09lwz\09\09\09$1,1024($5)\0A\09stwu\09\09$1,8($4)\0A\09lwz\09\09\09$2,1028($5)\0A\09stwu\09\09$2,8($3)\0A\09lwz\09\09\09$1,2048($5)\0A\09stwu\09\09$1,8($4)\0A\09lwz\09\09\09$2,2052($5)\0A\09stwu\09\09$2,8($3)\0A\09lwz\09\09\09$1,3072($5)\0A\09stwu\09\09$1,8($4)\0A\09lwz\09\09\09$2,3076($5)\0A\09stwu\09\09$2,8($3)\0A\09addi\09\09$5,$5,8\0A\09bdnz\09\091b\0A\09addi\09\09$5,$0,4096\0A\09subic.\09\09$7,$7,1\0A\09bne\09\09\092b", "=&{bx},=&r,=&r,=&{bx},{bx},{bx},r,r,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %13, i8* %14, i32 %15, i32 %16) #1, !srcloc !2
  %18 = extractvalue { i32, i32, i32, i32 } %17, 0
  %19 = extractvalue { i32, i32, i32, i32 } %17, 1
  %20 = extractvalue { i32, i32, i32, i32 } %17, 2
  %21 = extractvalue { i32, i32, i32, i32 } %17, 3
  store i32 %18, i32* %9, align 4
  store i32 %19, i32* %10, align 4
  store i32 %20, i32* %11, align 4
  store i32 %21, i32* %12, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 318, i32 340, i32 361, i32 382, i32 404, i32 423, i32 442, i32 466, i32 488, i32 510, i32 533, i32 558, i32 580, i32 605, i32 628, i32 653, i32 675, i32 700, i32 723, i32 748, i32 770, i32 795, i32 818, i32 839, i32 856, i32 880, i32 903}
