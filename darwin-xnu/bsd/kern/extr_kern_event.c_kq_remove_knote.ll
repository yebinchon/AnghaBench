; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kq_remove_knote.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kq_remove_knote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqueue = type { i32 }
%struct.knote = type { i64 }
%struct.proc = type { %struct.filedesc* }
%struct.filedesc = type { i32, %struct.klist*, %struct.klist*, i64 }
%struct.klist = type { i32 }
%struct.knote_lock_ctx = type { i32 }
%struct.TYPE_2__ = type { i32 }

@knote = common dso_local global i32 0, align 4
@kn_link = common dso_local global i32 0, align 4
@KNOTE_KQ_UNLOCK = common dso_local global i32 0, align 4
@KQ_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kqueue*, %struct.knote*, %struct.proc*, %struct.knote_lock_ctx*)* @kq_remove_knote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kq_remove_knote(%struct.kqueue* %0, %struct.knote* %1, %struct.proc* %2, %struct.knote_lock_ctx* %3) #0 {
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca %struct.knote*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.knote_lock_ctx*, align 8
  %9 = alloca %struct.filedesc*, align 8
  %10 = alloca %struct.klist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kqueue* %0, %struct.kqueue** %5, align 8
  store %struct.knote* %1, %struct.knote** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  store %struct.knote_lock_ctx* %3, %struct.knote_lock_ctx** %8, align 8
  %13 = load %struct.proc*, %struct.proc** %7, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 0
  %15 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  store %struct.filedesc* %15, %struct.filedesc** %9, align 8
  store %struct.klist* null, %struct.klist** %10, align 8
  %16 = load %struct.knote*, %struct.knote** %6, align 8
  %17 = call %struct.TYPE_2__* @knote_fops(%struct.knote* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load %struct.proc*, %struct.proc** %7, align 8
  %24 = call i32 @proc_fdlock(%struct.proc* %23)
  br label %28

25:                                               ; preds = %4
  %26 = load %struct.proc*, %struct.proc** %7, align 8
  %27 = call i32 @knhash_lock(%struct.proc* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %33 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.knote*, %struct.knote** %6, align 8
  %36 = getelementptr inbounds %struct.knote, %struct.knote* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %42 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %41, i32 0, i32 2
  %43 = load %struct.klist*, %struct.klist** %42, align 8
  %44 = load %struct.knote*, %struct.knote** %6, align 8
  %45 = getelementptr inbounds %struct.knote, %struct.knote* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.klist, %struct.klist* %43, i64 %46
  store %struct.klist* %47, %struct.klist** %10, align 8
  br label %60

48:                                               ; preds = %28
  %49 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %50 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %49, i32 0, i32 1
  %51 = load %struct.klist*, %struct.klist** %50, align 8
  %52 = load %struct.knote*, %struct.knote** %6, align 8
  %53 = getelementptr inbounds %struct.knote, %struct.knote* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %56 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @KN_HASH(i64 %54, i32 %57)
  %59 = getelementptr inbounds %struct.klist, %struct.klist* %51, i64 %58
  store %struct.klist* %59, %struct.klist** %10, align 8
  br label %60

60:                                               ; preds = %48, %31
  %61 = load %struct.klist*, %struct.klist** %10, align 8
  %62 = load %struct.knote*, %struct.knote** %6, align 8
  %63 = load i32, i32* @knote, align 4
  %64 = load i32, i32* @kn_link, align 4
  %65 = call i32 @SLIST_REMOVE(%struct.klist* %61, %struct.knote* %62, i32 %63, i32 %64)
  %66 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %67 = call i32 @kqlock(%struct.kqueue* %66)
  %68 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %69 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load %struct.knote_lock_ctx*, %struct.knote_lock_ctx** %8, align 8
  %72 = icmp ne %struct.knote_lock_ctx* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %75 = load %struct.knote*, %struct.knote** %6, align 8
  %76 = load %struct.knote_lock_ctx*, %struct.knote_lock_ctx** %8, align 8
  %77 = load i32, i32* @KNOTE_KQ_UNLOCK, align 4
  %78 = call i32 @knote_unlock_cancel(%struct.kqueue* %74, %struct.knote* %75, %struct.knote_lock_ctx* %76, i32 %77)
  br label %82

79:                                               ; preds = %60
  %80 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %81 = call i32 @kqunlock(%struct.kqueue* %80)
  br label %82

82:                                               ; preds = %79, %73
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.proc*, %struct.proc** %7, align 8
  %87 = call i32 @proc_fdunlock(%struct.proc* %86)
  br label %91

88:                                               ; preds = %82
  %89 = load %struct.proc*, %struct.proc** %7, align 8
  %90 = call i32 @knhash_unlock(%struct.proc* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @KQ_DYNAMIC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.proc*, %struct.proc** %7, align 8
  %98 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %99 = call i32 @kqueue_release_last(%struct.proc* %97, %struct.kqueue* %98)
  br label %100

100:                                              ; preds = %96, %91
  ret void
}

declare dso_local %struct.TYPE_2__* @knote_fops(%struct.knote*) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @knhash_lock(%struct.proc*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @KN_HASH(i64, i32) #1

declare dso_local i32 @SLIST_REMOVE(%struct.klist*, %struct.knote*, i32, i32) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @knote_unlock_cancel(%struct.kqueue*, %struct.knote*, %struct.knote_lock_ctx*, i32) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @knhash_unlock(%struct.proc*) #1

declare dso_local i32 @kqueue_release_last(%struct.proc*, %struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
