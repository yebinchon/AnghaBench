; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_copy_real.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_copy_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32 }

@CRF_NOMEMBERD = common dso_local global i32 0, align 4
@KAUTH_UID_NONE = common dso_local global i64 0, align 8
@M_CRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucred* @kauth_cred_copy_real(%struct.ucred* %0) #0 {
  %2 = alloca %struct.ucred*, align 8
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.ucred, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.ucred* null, %struct.ucred** %4, align 8
  %10 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %6)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.ucred*, %struct.ucred** %3, align 8
  %12 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.ucred*, %struct.ucred** %3, align 8
  %30 = call i32 @kauth_cred_ref(%struct.ucred* %29)
  %31 = load %struct.ucred*, %struct.ucred** %3, align 8
  store %struct.ucred* %31, %struct.ucred** %2, align 8
  br label %100

32:                                               ; preds = %20, %1
  %33 = load %struct.ucred*, %struct.ucred** %3, align 8
  %34 = call i32 @bcopy(%struct.ucred* %33, %struct.ucred* %6, i32 4)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @kauth_cred_change_egid(%struct.ucred* %6, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load i32, i32* @CRF_NOMEMBERD, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i64, i64* @KAUTH_UID_NONE, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %32
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @KAUTH_UID_NONE, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %92, %66
  %68 = call i32 (...) @KAUTH_CRED_HASH_LOCK()
  %69 = call %struct.ucred* @kauth_cred_find(%struct.ucred* %6)
  store %struct.ucred* %69, %struct.ucred** %5, align 8
  %70 = load %struct.ucred*, %struct.ucred** %5, align 8
  %71 = load %struct.ucred*, %struct.ucred** %3, align 8
  %72 = icmp eq %struct.ucred* %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %75 = load %struct.ucred*, %struct.ucred** %3, align 8
  store %struct.ucred* %75, %struct.ucred** %2, align 8
  br label %100

76:                                               ; preds = %67
  %77 = load %struct.ucred*, %struct.ucred** %5, align 8
  %78 = icmp ne %struct.ucred* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.ucred*, %struct.ucred** %5, align 8
  %81 = call i32 @kauth_cred_ref(%struct.ucred* %80)
  %82 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %83 = load %struct.ucred*, %struct.ucred** %5, align 8
  store %struct.ucred* %83, %struct.ucred** %2, align 8
  br label %100

84:                                               ; preds = %76
  %85 = call %struct.ucred* @kauth_cred_dup(%struct.ucred* %6)
  store %struct.ucred* %85, %struct.ucred** %4, align 8
  %86 = load %struct.ucred*, %struct.ucred** %4, align 8
  %87 = call i32 @kauth_cred_add(%struct.ucred* %86)
  store i32 %87, i32* %9, align 4
  %88 = call i32 (...) @KAUTH_CRED_HASH_UNLOCK()
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %98

92:                                               ; preds = %84
  %93 = load %struct.ucred*, %struct.ucred** %4, align 8
  %94 = call i32 @AUDIT_SESSION_UNREF(%struct.ucred* %93)
  %95 = load %struct.ucred*, %struct.ucred** %4, align 8
  %96 = load i32, i32* @M_CRED, align 4
  %97 = call i32 @FREE_ZONE(%struct.ucred* %95, i32 4, i32 %96)
  store %struct.ucred* null, %struct.ucred** %4, align 8
  br label %67

98:                                               ; preds = %91
  %99 = load %struct.ucred*, %struct.ucred** %4, align 8
  store %struct.ucred* %99, %struct.ucred** %2, align 8
  br label %100

100:                                              ; preds = %98, %79, %73, %28
  %101 = load %struct.ucred*, %struct.ucred** %2, align 8
  ret %struct.ucred* %101
}

declare dso_local %struct.TYPE_3__* @posix_cred_get(%struct.ucred*) #1

declare dso_local i32 @kauth_cred_ref(%struct.ucred*) #1

declare dso_local i32 @bcopy(%struct.ucred*, %struct.ucred*, i32) #1

declare dso_local i64 @kauth_cred_change_egid(%struct.ucred*, i64) #1

declare dso_local i32 @KAUTH_CRED_HASH_LOCK(...) #1

declare dso_local %struct.ucred* @kauth_cred_find(%struct.ucred*) #1

declare dso_local i32 @KAUTH_CRED_HASH_UNLOCK(...) #1

declare dso_local %struct.ucred* @kauth_cred_dup(%struct.ucred*) #1

declare dso_local i32 @kauth_cred_add(%struct.ucred*) #1

declare dso_local i32 @AUDIT_SESSION_UNREF(%struct.ucred*) #1

declare dso_local i32 @FREE_ZONE(%struct.ucred*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
