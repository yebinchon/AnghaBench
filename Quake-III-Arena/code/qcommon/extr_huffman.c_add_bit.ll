; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_huffman.c_add_bit.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_huffman.c_add_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*)* @add_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_bit(i8 signext %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @bloc, align 4
  %6 = and i32 %5, 7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @bloc, align 4
  %11 = ashr i32 %10, 3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8 0, i8* %13, align 1
  br label %14

14:                                               ; preds = %8, %2
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* @bloc, align 4
  %18 = and i32 %17, 7
  %19 = shl i32 %16, %18
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @bloc, align 4
  %22 = ashr i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = or i32 %26, %19
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  %29 = load i32, i32* @bloc, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @bloc, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
