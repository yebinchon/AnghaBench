; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32 }

@.str = private unnamed_addr constant [40 x i8] c"kauth_cred_update(cache hit): %p -> %p\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@NOCRED = common dso_local global %struct.TYPE_19__* null, align 8
@M_CRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"kauth_cred_update(cache miss): %p -> %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_19__*, %struct.TYPE_19__*, i64)* @kauth_cred_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @kauth_cred_update(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = call i32 @bcopy(i32* %16, i32* %18, i32 4)
  br label %20

20:                                               ; preds = %14, %3
  br label %21

21:                                               ; preds = %70, %20
  %22 = call i32 (...) @KAUTH_CRED_HASH_LOCK()
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = call %struct.TYPE_19__* @kauth_cred_find(%struct.TYPE_19__* %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %8, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %27 = icmp eq %struct.TYPE_19__* %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %4, align 8
  br label %82

31:                                               ; preds = %21
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %37 = call i32 @DEBUG_CRED_CHANGE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %35, %struct.TYPE_19__* %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = call i32 @kauth_cred_ref(%struct.TYPE_19__* %38)
  %40 = call i64 @kauth_cred_unref_hashlocked(%struct.TYPE_19__** %5)
  store i64 %40, i64* %11, align 8
  %41 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @TRUE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %34
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** @NOCRED, align 8
  %48 = icmp ne %struct.TYPE_19__* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = call i32 @AUDIT_SESSION_UNREF(%struct.TYPE_19__* %51)
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = load i32, i32* @M_CRED, align 4
  %57 = call i32 @FREE_ZONE(%struct.TYPE_19__* %55, i32 16, i32 %56)
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** @NOCRED, align 8
  store %struct.TYPE_19__* %58, %struct.TYPE_19__** %5, align 8
  br label %59

59:                                               ; preds = %45, %34
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %4, align 8
  br label %82

61:                                               ; preds = %31
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %63 = call %struct.TYPE_19__* @kauth_cred_dup(%struct.TYPE_19__* %62)
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %9, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %65 = call i32 @kauth_cred_add(%struct.TYPE_19__* %64)
  store i32 %65, i32* %10, align 4
  %66 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %76

70:                                               ; preds = %61
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %72 = call i32 @AUDIT_SESSION_UNREF(%struct.TYPE_19__* %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %74 = load i32, i32* @M_CRED, align 4
  %75 = call i32 @FREE_ZONE(%struct.TYPE_19__* %73, i32 16, i32 %74)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  br label %21

76:                                               ; preds = %69
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = call i32 @DEBUG_CRED_CHANGE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %77, %struct.TYPE_19__* %78)
  %80 = call i32 @kauth_cred_unref(%struct.TYPE_19__** %5)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %4, align 8
  br label %82

82:                                               ; preds = %76, %59, %28
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %83
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @KAUTH_CRED_HASH_LOCK(...) #1

declare dso_local %struct.TYPE_19__* @kauth_cred_find(%struct.TYPE_19__*) #1

declare dso_local i32 @KAUTH_CRED_HASH_UNLOCK(...) #1

declare dso_local i32 @DEBUG_CRED_CHANGE(i8*, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @kauth_cred_ref(%struct.TYPE_19__*) #1

declare dso_local i64 @kauth_cred_unref_hashlocked(%struct.TYPE_19__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @AUDIT_SESSION_UNREF(%struct.TYPE_19__*) #1

declare dso_local i32 @FREE_ZONE(%struct.TYPE_19__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @kauth_cred_dup(%struct.TYPE_19__*) #1

declare dso_local i32 @kauth_cred_add(%struct.TYPE_19__*) #1

declare dso_local i32 @kauth_cred_unref(%struct.TYPE_19__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
