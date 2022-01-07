; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_unref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@NOCRED = common dso_local global %struct.TYPE_8__* null, align 8
@M_CRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kauth_cred_unref(%struct.TYPE_8__** %0) #0 {
  %2 = alloca %struct.TYPE_8__**, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %2, align 8
  %4 = call i32 (...) @KAUTH_CRED_HASH_LOCK()
  %5 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %6 = call i64 @kauth_cred_unref_hashlocked(%struct.TYPE_8__** %5)
  store i64 %6, i64* %3, align 8
  %7 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @TRUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NOCRED, align 8
  %15 = icmp ne %struct.TYPE_8__* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 @AUDIT_SESSION_UNREF(%struct.TYPE_8__* %19)
  %21 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* @M_CRED, align 4
  %27 = call i32 @FREE_ZONE(%struct.TYPE_8__* %25, i32 8, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @NOCRED, align 8
  %29 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %2, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %29, align 8
  br label %30

30:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @KAUTH_CRED_HASH_LOCK(...) #1

declare dso_local i64 @kauth_cred_unref_hashlocked(%struct.TYPE_8__**) #1

declare dso_local i32 @KAUTH_CRED_HASH_UNLOCK(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @AUDIT_SESSION_UNREF(%struct.TYPE_8__*) #1

declare dso_local i32 @FREE_ZONE(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
