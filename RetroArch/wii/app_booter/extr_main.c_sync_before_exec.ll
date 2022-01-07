; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/app_booter/extr_main.c_sync_before_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/app_booter/extr_main.c_sync_before_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sync_before_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_before_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = and i32 %8, -32
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  %14 = add nsw i32 %13, 31
  %15 = and i32 %14, -32
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %22, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  call void asm sideeffect "dcbst 0,$0 ; sync ; icbi 0,$0", "{bx},~{dirflag},~{fpsr},~{flags}"(i32 %21) #1, !srcloc !2
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 32
  store i32 %24, i32* %5, align 4
  br label %16

25:                                               ; preds = %16
  call void asm sideeffect "sync ; isync", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 374}
!3 = !{i32 427}
