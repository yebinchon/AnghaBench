; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_lib.c_HUlib_keyInIText.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_hu_lib.c_HUlib_keyInIText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@KEY_BACKSPACE = common dso_local global i8 0, align 1
@KEY_ENTER = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HUlib_keyInIText(%struct.TYPE_4__* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp sge i32 %7, 32
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp sle i32 %11, 95
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8, i8* %5, align 1
  %17 = call i32 @HUlib_addCharToTextLine(i32* %15, i8 signext %16)
  br label %36

18:                                               ; preds = %9, %2
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @KEY_BACKSPACE, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = call i32 @HUlib_delCharFromIText(%struct.TYPE_4__* %25)
  br label %35

27:                                               ; preds = %18
  %28 = load i8, i8* %5, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @KEY_ENTER, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %37

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %13
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @HUlib_addCharToTextLine(i32*, i8 signext) #1

declare dso_local i32 @HUlib_delCharFromIText(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
