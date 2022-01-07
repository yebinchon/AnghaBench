; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_text_data.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_appcast.c_text_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%union.anon = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64, i32**)* @text_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @text_data(i32* %0, i32* %1, i32 %2, i64 %3, i32** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca %union.anon, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32** %4, i32*** %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %11, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @g_queue_peek_head(i32 %17)
  %19 = bitcast %union.anon* %12 to i64*
  store i64 %18, i64* %19, align 8
  %20 = bitcast %union.anon* %12 to i32*
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %34 [
    i32 128, label %22
  ]

22:                                               ; preds = %5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @g_string_append(i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %49

34:                                               ; preds = %5
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @g_free(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @g_strdup(i32* %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %33
  ret void
}

declare dso_local i64 @g_queue_peek_head(i32) #1

declare dso_local i32 @g_string_append(i32, i32*) #1

declare dso_local i32 @g_free(i32) #1

declare dso_local i32 @g_strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
