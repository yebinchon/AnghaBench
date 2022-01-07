; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_BLhelper_dup.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/controller/src/extr_main.c_BLhelper_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8** }

@ledpackets = common dso_local global %struct.TYPE_4__* null, align 8
@PANEL_NW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @BLhelper_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BLhelper_dup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %61, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 48
  br i1 %5, label %6, label %64

6:                                                ; preds = %3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %8 = load i64, i64* @PANEL_NW, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %19 = load i64, i64* @PANEL_NW, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 48
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %23, i64 %26
  store i8* %17, i8** %27, align 8
  %28 = load i8*, i8** %2, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %30 = load i64, i64* @PANEL_NW, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 96
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %34, i64 %37
  store i8* %28, i8** %38, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %41 = load i64, i64* @PANEL_NW, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 144
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  store i8* %39, i8** %49, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ledpackets, align 8
  %52 = load i64, i64* @PANEL_NW, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %1, align 4
  %58 = add nsw i32 %57, 192
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %50, i8** %60, align 8
  br label %61

61:                                               ; preds = %6
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %3

64:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
