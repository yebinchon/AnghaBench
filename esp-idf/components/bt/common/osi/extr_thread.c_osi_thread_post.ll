; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_thread.c_osi_thread_post.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_thread.c_osi_thread_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_6__ = type { i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @osi_thread_post(%struct.TYPE_7__* %0, i32* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

27:                                               ; preds = %5
  %28 = call i64 @osi_malloc(i32 16)
  %29 = inttoptr i64 %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %12, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %58

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @fixed_queue_enqueue(i32 %46, %struct.TYPE_6__* %47, i32 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %33
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %53 = call i32 @osi_free(%struct.TYPE_6__* %52)
  store i32 0, i32* %6, align 4
  br label %58

54:                                               ; preds = %33
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = call i32 @osi_sem_give(i32* %56)
  store i32 1, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %51, %32, %26
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @fixed_queue_enqueue(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_6__*) #1

declare dso_local i32 @osi_sem_give(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
