; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_elem_get_first_char.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_driver.c_menu_entries_elem_get_first_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @menu_entries_elem_get_first_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @menu_entries_elem_get_first_char(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  br label %38

29:                                               ; preds = %10
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  br label %38

38:                                               ; preds = %29, %20
  %39 = phi i8* [ %28, %20 ], [ %37, %29 ]
  store i8* %39, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 @tolower(i32 %44) #2
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %2
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 97
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 96, i32* %3, align 4
  br label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 122
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 123, i32* %3, align 4
  br label %58

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %54, %50
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
