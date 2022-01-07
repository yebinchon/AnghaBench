; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__keyboardRead.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libwiikeyboard/extr_keyboard.c__keyboardRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }
%struct._reent = type { i32 }

@_keyBuffer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._reent*, i8*, i8*, i64)* @_keyboardRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_keyboardRead(%struct._reent* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct._reent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct._reent* %0, %struct._reent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %33, %4
  %13 = load i64, i64* %9, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_keyBuffer, i32 0, i32 0), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_keyBuffer, i32 0, i32 1), align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_keyBuffer, i32 0, i32 2), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_keyBuffer, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %10, align 1
  %24 = load i8, i8* %10, align 1
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 %24, i8* %25, align 1
  %27 = load i8, i8* %10, align 1
  %28 = call i32 @_readKey_cb(i8 signext %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_keyBuffer, i32 0, i32 0), align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @_keyBuffer, i32 0, i32 0), align 8
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %19, %15
  br label %12

34:                                               ; preds = %12
  %35 = load i64, i64* %8, align 8
  ret i64 %35
}

declare dso_local i32 @_readKey_cb(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
