; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_abAppend.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/linenoise/extr_linenoise.c_abAppend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abuf = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abuf*, i8*, i32)* @abAppend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abAppend(%struct.abuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.abuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.abuf* %0, %struct.abuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.abuf*, %struct.abuf** %4, align 8
  %9 = getelementptr inbounds %struct.abuf, %struct.abuf* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.abuf*, %struct.abuf** %4, align 8
  %12 = getelementptr inbounds %struct.abuf, %struct.abuf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i8* @realloc(i8* %10, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %38

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.abuf*, %struct.abuf** %4, align 8
  %23 = getelementptr inbounds %struct.abuf, %struct.abuf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcpy(i8* %26, i8* %27, i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.abuf*, %struct.abuf** %4, align 8
  %32 = getelementptr inbounds %struct.abuf, %struct.abuf* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.abuf*, %struct.abuf** %4, align 8
  %35 = getelementptr inbounds %struct.abuf, %struct.abuf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %20, %19
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
