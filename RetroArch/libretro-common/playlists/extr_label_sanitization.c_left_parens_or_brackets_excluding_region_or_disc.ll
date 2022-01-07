; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/playlists/extr_label_sanitization.c_left_parens_or_brackets_excluding_region_or_disc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/playlists/extr_label_sanitization.c_left_parens_or_brackets_excluding_region_or_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@region_strings = common dso_local global i32 0, align 4
@region_strings_length = common dso_local global i32 0, align 4
@disc_strings = common dso_local global i32 0, align 4
@disc_strings_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @left_parens_or_brackets_excluding_region_or_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @left_parens_or_brackets_excluding_region_or_disc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @left_parens_or_brackets(i8* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i32, i32* @region_strings, align 4
  %9 = load i32, i32* @region_strings_length, align 4
  %10 = call i32 @left_exclusion(i8* %7, i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* @disc_strings, align 4
  %15 = load i32, i32* @disc_strings_length, align 4
  %16 = call i32 @left_exclusion(i8* %13, i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %12, %6, %1
  %20 = phi i1 [ false, %6 ], [ false, %1 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @left_parens_or_brackets(i8*) #1

declare dso_local i32 @left_exclusion(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
