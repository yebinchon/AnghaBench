; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_key_handler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_joycfg.c_key_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@raw_key = common dso_local global i32 0, align 4
@ext = common dso_local global i32 0, align 4
@left = common dso_local global i32 0, align 4
@key = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@hi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_handler() #0 {
  call void asm sideeffect "cli; pusha", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %1 = call i32 @inportb(i32 96)
  store i32 %1, i32* @raw_key, align 4
  %2 = load i32, i32* @ext, align 4
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* @ext, align 4
  br label %51

5:                                                ; preds = %0
  %6 = load i32, i32* @ext, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i32, i32* @raw_key, align 4
  %10 = and i32 %9, 128
  store i32 %10, i32* @left, align 4
  %11 = load i32, i32* @raw_key, align 4
  %12 = and i32 %11, 127
  %13 = add nsw i32 %12, 128
  store i32 %13, i32* @key, align 4
  %14 = load i32, i32* @key, align 4
  %15 = load i32, i32* @left, align 4
  %16 = shl i32 %15, 8
  %17 = add nsw i32 %14, %16
  %18 = load i32*, i32** @buffer, align 8
  %19 = load i32, i32* @hi, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @hi, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 %17, i32* %22, align 4
  %23 = load i32, i32* @hi, align 4
  %24 = icmp eq i32 %23, 100
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i32 0, i32* @hi, align 4
  br label %26

26:                                               ; preds = %25, %8
  store i32 0, i32* @ext, align 4
  br label %50

27:                                               ; preds = %5
  %28 = load i32, i32* @raw_key, align 4
  %29 = and i32 %28, 127
  store i32 %29, i32* @key, align 4
  %30 = load i32, i32* @raw_key, align 4
  %31 = and i32 %30, 128
  store i32 %31, i32* @left, align 4
  %32 = load i32, i32* @raw_key, align 4
  switch i32 %32, label %35 [
    i32 225, label %33
    i32 224, label %34
  ]

33:                                               ; preds = %27
  store i32 2, i32* @ext, align 4
  br label %49

34:                                               ; preds = %27
  store i32 1, i32* @ext, align 4
  br label %49

35:                                               ; preds = %27
  %36 = load i32, i32* @key, align 4
  %37 = load i32, i32* @left, align 4
  %38 = shl i32 %37, 8
  %39 = add nsw i32 %36, %38
  %40 = load i32*, i32** @buffer, align 8
  %41 = load i32, i32* @hi, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @hi, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* @hi, align 4
  %46 = icmp eq i32 %45, 100
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* @hi, align 4
  br label %48

48:                                               ; preds = %47, %35
  br label %49

49:                                               ; preds = %48, %34, %33
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %4
  %52 = call i32 @outportb(i32 32, i32 32)
  call void asm sideeffect "popa; sti", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  ret void
}

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @outportb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 285}
!3 = !{i32 880}
