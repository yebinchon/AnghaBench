; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_memory_alloc_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_cdata.c_kcdata_memory_alloc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8* }

@KCFLAG_USE_COPYOUT = common dso_local global i32 0, align 4
@KCFLAG_USE_MEMCOPY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @kcdata_memory_alloc_init(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = call %struct.TYPE_7__* @kalloc(i32 4)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %10, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %50

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %18 = call i32 @bzero(%struct.TYPE_7__* %17, i32 4)
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @KCFLAG_USE_COPYOUT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i32, i32* @KCFLAG_USE_COPYOUT, align 4
  br label %33

31:                                               ; preds = %16
  %32 = load i32, i32* @KCFLAG_USE_MEMCOPY, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @kcdata_get_memory_addr(%struct.TYPE_7__* %41, i32 %42, i32 0, i8** %11)
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = call i32 @kcdata_memory_destroy(%struct.TYPE_7__* %46)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %50

48:                                               ; preds = %33
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %5, align 8
  br label %50

50:                                               ; preds = %48, %45, %15
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %51
}

declare dso_local %struct.TYPE_7__* @kalloc(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @kcdata_get_memory_addr(%struct.TYPE_7__*, i32, i32, i8**) #1

declare dso_local i32 @kcdata_memory_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
