; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_FilenamesAdd.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_FilenamesAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_filenames = common dso_local global i32 0, align 4
@FILENAMES_INITIAL_SIZE = common dso_local global i32 0, align 4
@filenames = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FilenamesAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FilenamesAdd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @n_filenames, align 4
  %4 = load i32, i32* @FILENAMES_INITIAL_SIZE, align 4
  %5 = icmp sge i32 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i32, i32* @n_filenames, align 4
  %8 = load i32, i32* @n_filenames, align 4
  %9 = sub nsw i32 %8, 1
  %10 = and i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load i8**, i8*** @filenames, align 8
  %14 = bitcast i8** %13 to i8*
  %15 = load i32, i32* @n_filenames, align 4
  %16 = mul nsw i32 2, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @Util_realloc(i8* %14, i32 %19)
  %21 = inttoptr i64 %20 to i8**
  store i8** %21, i8*** @filenames, align 8
  br label %22

22:                                               ; preds = %12, %6, %1
  %23 = load i8*, i8** %2, align 8
  %24 = load i8**, i8*** @filenames, align 8
  %25 = load i32, i32* @n_filenames, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @n_filenames, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  store i8* %23, i8** %28, align 8
  ret void
}

declare dso_local i64 @Util_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
