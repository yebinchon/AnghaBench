; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_db.c_db_worker_run.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_db.c_db_worker_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@mtx = common dso_local global i32 0, align 4
@ring = common dso_local global i32 0, align 4
@cnd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_worker_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %59, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %5
  %9 = call i32 @mtx_lock(i32* @mtx)
  br label %10

10:                                               ; preds = %14, %8
  %11 = call i32 @ring_get(i32* @ring, %struct.TYPE_3__* %4)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @cnd_wait(i32* @cnd, i32* @mtx)
  br label %10

16:                                               ; preds = %10
  %17 = call i32 @mtx_unlock(i32* @mtx)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %59 [
    i32 132, label %20
    i32 128, label %34
    i32 129, label %48
    i32 131, label %56
    i32 130, label %58
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @_db_insert_block(i32 %22, i32 %24, i32 %26, i32 %28, i32 %30, i32 %32)
  br label %59

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @_db_insert_light(i32 %36, i32 %38, i32 %40, i32 %42, i32 %44, i32 %46)
  br label %59

48:                                               ; preds = %16
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_db_set_key(i32 %50, i32 %52, i32 %54)
  br label %59

56:                                               ; preds = %16
  %57 = call i32 (...) @_db_commit()
  br label %59

58:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %16, %58, %56, %48, %34, %20
  br label %5

60:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ring_get(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @cnd_wait(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @_db_insert_block(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_db_insert_light(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_db_set_key(i32, i32, i32) #1

declare dso_local i32 @_db_commit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
