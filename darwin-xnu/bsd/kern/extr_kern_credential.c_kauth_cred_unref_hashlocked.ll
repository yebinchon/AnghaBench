; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_unref_hashlocked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_unref_hashlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@NOCRED = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__**)* @kauth_cred_unref_hashlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kauth_cred_unref_hashlocked(%struct.TYPE_9__** %0) #0 {
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %2, align 8
  %5 = load i64, i64* @FALSE, align 8
  store i64 %5, i64* %4, align 8
  %6 = call i32 (...) @KAUTH_CRED_HASH_LOCK_ASSERT()
  %7 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = call i32 @NULLCRED_CHECK(%struct.TYPE_9__* %8)
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to i64*
  %14 = call i32 @OSAddAtomicLong(i32 -1, i64* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = call i64 @kauth_cred_remove(%struct.TYPE_9__* %19)
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @FALSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NOCRED, align 8
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %27, align 8
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i64, i64* %4, align 8
  ret i64 %29
}

declare dso_local i32 @KAUTH_CRED_HASH_LOCK_ASSERT(...) #1

declare dso_local i32 @NULLCRED_CHECK(%struct.TYPE_9__*) #1

declare dso_local i32 @OSAddAtomicLong(i32, i64*) #1

declare dso_local i64 @kauth_cred_remove(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
