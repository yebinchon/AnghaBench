; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc_Tagalloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kalloc.c_OSMalloc_Tagalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@OSMT_PAGEABLE = common dso_local global i32 0, align 4
@OSMT_ATTR_PAGEABLE = common dso_local global i32 0, align 4
@OSMT_MAX_NAME = common dso_local global i32 0, align 4
@OSMalloc_tag_list = common dso_local global i32 0, align 4
@OSMT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @OSMalloc_Tagalloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @kalloc(i32 16)
  %7 = inttoptr i64 %6 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = bitcast %struct.TYPE_3__* %8 to i8*
  %10 = call i32 @bzero(i8* %9, i32 16)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @OSMT_PAGEABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @OSMT_ATTR_PAGEABLE, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @OSMT_MAX_NAME, align 4
  %27 = call i32 @strlcpy(i32 %24, i8* %25, i32 %26)
  %28 = call i32 (...) @OSMalloc_tag_spin_lock()
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = ptrtoint %struct.TYPE_3__* %29 to i32
  %31 = call i32 @enqueue_tail(i32* @OSMalloc_tag_list, i32 %30)
  %32 = call i32 (...) @OSMalloc_tag_unlock()
  %33 = load i32, i32* @OSMT_VALID, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %36
}

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @OSMalloc_tag_spin_lock(...) #1

declare dso_local i32 @enqueue_tail(i32*, i32) #1

declare dso_local i32 @OSMalloc_tag_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
