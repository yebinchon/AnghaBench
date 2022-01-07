; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_config_remove_key.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_config_remove_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_remove_key(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call %struct.TYPE_3__* @section_find(i32* %22, i8* %23)
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %8, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32* @entry_find(i32* %25, i8* %26, i8* %27)
  store i32* %28, i32** %9, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31, %3
  store i32 0, i32* %4, align 4
  br label %41

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @list_remove(i32 %38, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @section_find(i32*, i8*) #1

declare dso_local i32* @entry_find(i32*, i8*, i8*) #1

declare dso_local i32 @list_remove(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
