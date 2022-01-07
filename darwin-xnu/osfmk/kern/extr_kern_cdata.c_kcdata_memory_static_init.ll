; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_memory_static_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_memory_static_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8* }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KCFLAG_USE_COPYOUT = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kcdata_memory_static_init(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %6, align 4
  br label %44

17:                                               ; preds = %5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = call i32 @bzero(%struct.TYPE_5__* %18, i32 4)
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @KCFLAG_USE_COPYOUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @KCFLAG_USE_COPYOUT, align 4
  br label %34

32:                                               ; preds = %17
  %33 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @kcdata_get_memory_addr(%struct.TYPE_5__* %41, i32 %42, i32 0, i8** %12)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %34, %15
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @kcdata_get_memory_addr(%struct.TYPE_5__*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
