; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_entry_find.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_config.c_entry_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i8*, i8*)* @entry_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @entry_find(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.TYPE_6__* @section_find(i32* %11, i8* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @list_begin(i32 %20)
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %41, %17
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @list_end(i32 %26)
  %28 = icmp ne i32* %23, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.TYPE_7__* @list_node(i32* %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @strcmp(i32 %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %4, align 8
  br label %45

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %9, align 8
  %43 = call i32* @list_next(i32* %42)
  store i32* %43, i32** %9, align 8
  br label %22

44:                                               ; preds = %22
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %45

45:                                               ; preds = %44, %38, %16
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %46
}

declare dso_local %struct.TYPE_6__* @section_find(i32*, i8*) #1

declare dso_local i32* @list_begin(i32) #1

declare dso_local i32* @list_end(i32) #1

declare dso_local %struct.TYPE_7__* @list_node(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32* @list_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
