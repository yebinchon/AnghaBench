; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-keyboard.c_ihandler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-keyboard.c_ihandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lastsc = common dso_local global i32 0, align 4
@SCAN_LEFTALT = common dso_local global i8 0, align 1
@SCAN_LEFTCONTROL = common dso_local global i8 0, align 1
@keybuf = common dso_local global i8* null, align 8
@newk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ihandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ihandler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = call zeroext i8 @inp(i32 96)
  store i8 %5, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ne i32 %7, 224
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @lastsc, align 4
  %11 = icmp eq i32 %10, 224
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 127
  %16 = load i8, i8* @SCAN_LEFTALT, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 127
  %23 = load i8, i8* @SCAN_LEFTCONTROL, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %12
  store i32 128, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %19
  br label %28

28:                                               ; preds = %27, %9
  %29 = load i8, i8* %3, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 128
  %32 = xor i32 %31, 128
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** @keybuf, align 8
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 127
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %34, i64 %40
  store i8 %33, i8* %41, align 1
  %42 = load i32, i32* @newk, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @newk, align 4
  br label %44

44:                                               ; preds = %28, %1
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* @lastsc, align 4
  %47 = call i32 @outp(i32 32, i32 32)
  ret void
}

declare dso_local zeroext i8 @inp(i32) #1

declare dso_local i32 @outp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
