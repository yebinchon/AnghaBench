; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_hash_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_hash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32, %struct.kqlist* }
%struct.kqlist = type { i32 }
%struct.kqueue = type { i32 }
%struct.kqworkloop = type { i32 }

@KQ_DYNAMIC = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@kqworkloop = common dso_local global i32 0, align 4
@kqwl_hashlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*, %struct.kqueue*)* @kqueue_hash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqueue_hash_remove(%struct.proc* %0, %struct.kqueue* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.kqueue*, align 8
  %5 = alloca %struct.kqworkloop*, align 8
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.kqlist*, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.kqueue* %1, %struct.kqueue** %4, align 8
  %8 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %9 = bitcast %struct.kqueue* %8 to %struct.kqworkloop*
  store %struct.kqworkloop* %9, %struct.kqworkloop** %5, align 8
  %10 = load %struct.proc*, %struct.proc** %3, align 8
  %11 = getelementptr inbounds %struct.proc, %struct.proc* %10, i32 0, i32 0
  %12 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  store %struct.filedesc* %12, %struct.filedesc** %6, align 8
  %13 = load %struct.proc*, %struct.proc** %3, align 8
  %14 = call i32 @kqhash_lock_held(%struct.proc* %13)
  %15 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %16 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KQ_DYNAMIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %23 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KQ_DYNAMIC, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @assert(i32 %26)
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.kqueue*, %struct.kqueue** %4, align 8
  %30 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KQ_WORKLOOP, align 4
  %33 = and i32 %31, %32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %36 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %35, i32 0, i32 1
  %37 = load %struct.kqlist*, %struct.kqlist** %36, align 8
  %38 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %39 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %42 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @KQ_HASH(i32 %40, i32 %43)
  %45 = getelementptr inbounds %struct.kqlist, %struct.kqlist* %37, i64 %44
  store %struct.kqlist* %45, %struct.kqlist** %7, align 8
  %46 = load %struct.kqlist*, %struct.kqlist** %7, align 8
  %47 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %48 = load i32, i32* @kqworkloop, align 4
  %49 = load i32, i32* @kqwl_hashlink, align 4
  %50 = call i32 @SLIST_REMOVE(%struct.kqlist* %46, %struct.kqworkloop* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %28, %21
  ret void
}

declare dso_local i32 @kqhash_lock_held(%struct.proc*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @KQ_HASH(i32, i32) #1

declare dso_local i32 @SLIST_REMOVE(%struct.kqlist*, %struct.kqworkloop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
