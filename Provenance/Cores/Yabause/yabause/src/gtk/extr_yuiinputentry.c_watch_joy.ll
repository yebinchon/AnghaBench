; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_watch_joy.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_yuiinputentry.c_watch_joy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (i32)*, i32 (i64, i8*, i32)*, i32, i32 }

@is_watching = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PERCore = common dso_local global %struct.TYPE_2__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@PERSF_KEY = common dso_local global i32 0, align 4
@PERSF_BUTTON = common dso_local global i32 0, align 4
@PERSF_HAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Pad.%s.1\00", align 1
@keyfile = common dso_local global i32 0, align 4
@entry_hack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @watch_joy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @watch_joy(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [100 x i8], align 16
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @is_watching, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* @TRUE, align 8
  store i64 %9, i64* %2, align 8
  br label %55

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* @is_watching, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %2, align 8
  br label %55

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (i32)*, i64 (i32)** %20, align 8
  %22 = load i32, i32* @PERSF_KEY, align 4
  %23 = load i32, i32* @PERSF_BUTTON, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PERSF_HAT, align 4
  %26 = or i32 %24, %25
  %27 = call i64 %21(i32 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %2, align 8
  br label %55

32:                                               ; preds = %18
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %34 = load i64, i64* %3, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @keyfile, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @g_key_file_set_integer(i32 %37, i32 %40, i8* %41, i64 %42)
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PERCore, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %49 = call i32 %46(i64 %47, i8* %48, i32 100)
  %50 = load i32, i32* @entry_hack, align 4
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %52 = call i32 @gtk_entry_set_text(i32 %50, i8* %51)
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* @is_watching, align 8
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %32, %30, %15, %8
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @g_key_file_set_integer(i32, i32, i8*, i64) #1

declare dso_local i32 @gtk_entry_set_text(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
