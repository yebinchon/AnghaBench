; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_hash_init_if_needed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_hash_init_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, %struct.kqlist* }
%struct.kqlist = type { i32 }

@CONFIG_KQ_HASHSIZE = common dso_local global i32 0, align 4
@M_KQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @kqueue_hash_init_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_hash_init_if_needed(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.filedesc*, align 8
  %4 = alloca %struct.kqlist*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  store %struct.filedesc* %8, %struct.filedesc** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i32 @kqhash_lock_held(%struct.TYPE_6__* %9)
  %11 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %12 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %11, i32 0, i32 1
  %13 = load %struct.kqlist*, %struct.kqlist** %12, align 8
  %14 = icmp eq %struct.kqlist* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @__improbable(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = call i32 @kqhash_unlock(%struct.TYPE_6__* %19)
  %21 = load i32, i32* @CONFIG_KQ_HASHSIZE, align 4
  %22 = load i32, i32* @M_KQUEUE, align 4
  %23 = call %struct.kqlist* @hashinit(i32 %21, i32 %22, i32* %5)
  store %struct.kqlist* %23, %struct.kqlist** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = call i32 @kqhash_lock(%struct.TYPE_6__* %24)
  %26 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.kqlist*, %struct.kqlist** %4, align 8
  %32 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %33 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %32, i32 0, i32 1
  store %struct.kqlist* %31, %struct.kqlist** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.filedesc*, %struct.filedesc** %3, align 8
  %36 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = call i32 @kqhash_unlock(%struct.TYPE_6__* %38)
  %40 = load %struct.kqlist*, %struct.kqlist** %4, align 8
  %41 = load i32, i32* @M_KQUEUE, align 4
  %42 = call i32 @FREE(%struct.kqlist* %40, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = call i32 @kqhash_lock(%struct.TYPE_6__* %43)
  br label %45

45:                                               ; preds = %37, %30
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @kqhash_lock_held(%struct.TYPE_6__*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @kqhash_unlock(%struct.TYPE_6__*) #1

declare dso_local %struct.kqlist* @hashinit(i32, i32, i32*) #1

declare dso_local i32 @kqhash_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @FREE(%struct.kqlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
