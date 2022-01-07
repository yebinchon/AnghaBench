; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_font.c_readFloat.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_font.c_readFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float, i8** }

@fdFile = common dso_local global i8** null, align 8
@fdOffset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @readFloat() #0 {
  %1 = alloca %struct.TYPE_2__, align 8
  %2 = load i8**, i8*** @fdFile, align 8
  %3 = load i32, i32* @fdOffset, align 4
  %4 = add nsw i32 %3, 0
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i8*, i8** %2, i64 %5
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %9 = load i8**, i8*** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  store i8* %7, i8** %10, align 8
  %11 = load i8**, i8*** @fdFile, align 8
  %12 = load i32, i32* @fdOffset, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %11, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  store i8* %16, i8** %19, align 8
  %20 = load i8**, i8*** @fdFile, align 8
  %21 = load i32, i32* @fdOffset, align 4
  %22 = add nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  store i8* %25, i8** %28, align 8
  %29 = load i8**, i8*** @fdFile, align 8
  %30 = load i32, i32* @fdOffset, align 4
  %31 = add nsw i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  store i8* %34, i8** %37, align 8
  %38 = load i32, i32* @fdOffset, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* @fdOffset, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %41 = load float, float* %40, align 8
  ret float %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
