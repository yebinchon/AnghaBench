; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_is_current_row_empty.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_is_current_row_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.eia608_screen = type { i8** }

@CC608_SCREEN_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_write*)* @is_current_row_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_current_row_empty(%struct.s_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s_write*, align 8
  %4 = alloca %struct.eia608_screen*, align 8
  %5 = alloca i32, align 4
  store %struct.s_write* %0, %struct.s_write** %3, align 8
  %6 = load %struct.s_write*, %struct.s_write** %3, align 8
  %7 = call %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write* %6)
  store %struct.eia608_screen* %7, %struct.eia608_screen** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CC608_SCREEN_WIDTH, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.eia608_screen*, %struct.eia608_screen** %4, align 8
  %14 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load %struct.s_write*, %struct.s_write** %3, align 8
  %17 = getelementptr inbounds %struct.s_write, %struct.s_write* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i8*, i8** %15, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %8

34:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.eia608_screen* @get_current_visible_buffer(%struct.s_write*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
