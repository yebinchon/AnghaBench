; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc_Tagrele.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc_Tagrele.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@OSMT_VALID_MASK = common dso_local global i32 0, align 4
@OSMT_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"OSMalloc_Tagref():'%s' has bad state 0x%08X\0A\00", align 1
@OSMT_RELEASED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"OSMalloc_Tagrele():'%s' has refcnt 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OSMalloc_Tagrele(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @OSMT_VALID_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @OSMT_VALID, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = call i64 @hw_atomic_sub(i32* %20, i32 1)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load i32, i32* @OSMT_VALID, align 4
  %25 = load i32, i32* @OSMT_RELEASED, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @OSMT_VALID, align 4
  %28 = load i32, i32* @OSMT_RELEASED, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i64 @hw_compare_and_store(i32 %26, i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = call i32 (...) @OSMalloc_tag_spin_lock()
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = ptrtoint %struct.TYPE_3__* %36 to i32
  %38 = call i32 @remque(i32 %37)
  %39 = call i32 (...) @OSMalloc_tag_unlock()
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = bitcast %struct.TYPE_3__* %40 to i8*
  %42 = call i32 @kfree(i8* %41, i32 12)
  br label %48

43:                                               ; preds = %23
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @panic(i8*, i32, ...) #1

declare dso_local i64 @hw_atomic_sub(i32*, i32) #1

declare dso_local i64 @hw_compare_and_store(i32, i32, i32*) #1

declare dso_local i32 @OSMalloc_tag_spin_lock(...) #1

declare dso_local i32 @remque(i32) #1

declare dso_local i32 @OSMalloc_tag_unlock(...) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
