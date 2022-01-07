; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc_Tagfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc_Tagfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@OSMT_VALID = common dso_local global i32 0, align 4
@OSMT_RELEASED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"OSMalloc_Tagfree():'%s' has bad state 0x%08X \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OSMalloc_Tagfree(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @OSMT_VALID, align 4
  %4 = load i32, i32* @OSMT_VALID, align 4
  %5 = load i32, i32* @OSMT_RELEASED, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call i32 @hw_compare_and_store(i32 %3, i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %11, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i64 @hw_atomic_sub(i32* %21, i32 1)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = call i32 (...) @OSMalloc_tag_spin_lock()
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = ptrtoint %struct.TYPE_3__* %26 to i32
  %28 = call i32 @remque(i32 %27)
  %29 = call i32 (...) @OSMalloc_tag_unlock()
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = bitcast %struct.TYPE_3__* %30 to i8*
  %32 = call i32 @kfree(i8* %31, i32 12)
  br label %33

33:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @hw_compare_and_store(i32, i32, i32*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i64 @hw_atomic_sub(i32*, i32) #1

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
