; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_toggle_light.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_toggle_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toggle_light(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @chunked(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @chunked(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_4__* @find_chunk(i32 %16, i32 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %52

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @map_get(i32* %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 15
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @map_set(i32* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @db_insert_light(i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @client_light(i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %51 = call i32 @dirty_chunk(%struct.TYPE_4__* %50)
  br label %52

52:                                               ; preds = %21, %3
  ret void
}

declare dso_local i32 @chunked(i32) #1

declare dso_local %struct.TYPE_4__* @find_chunk(i32, i32) #1

declare dso_local i64 @map_get(i32*, i32, i32, i32) #1

declare dso_local i32 @map_set(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @db_insert_light(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @client_light(i32, i32, i32, i32) #1

declare dso_local i32 @dirty_chunk(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
