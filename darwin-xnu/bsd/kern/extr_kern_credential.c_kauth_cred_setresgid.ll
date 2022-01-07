; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_setresgid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_setresgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.TYPE_3__ = type { i64*, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"kauth_cred_setresgid %p %d %d %d\0A\00", align 1
@KAUTH_GID_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"displaced!\0A\00", align 1
@CRF_NOMEMBERD = common dso_local global i32 0, align 4
@KAUTH_UID_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"not displaced\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucred* @kauth_cred_setresgid(%struct.ucred* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ucred, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %10)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %11, align 8
  %14 = load %struct.ucred*, %struct.ucred** %6, align 8
  %15 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %12, align 8
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  %17 = call i32 @NULLCRED_CHECK(%struct.ucred* %16)
  %18 = load %struct.ucred*, %struct.ucred** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @DEBUG_CRED_ENTER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.ucred* %18, i64 %19, i64 %20, i64 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load %struct.ucred*, %struct.ucred** %6, align 8
  store %struct.ucred* %43, %struct.ucred** %5, align 8
  br label %87

44:                                               ; preds = %36, %30, %4
  %45 = load %struct.ucred*, %struct.ucred** %6, align 8
  %46 = call i32 @bcopy(%struct.ucred* %45, %struct.ucred* %10, i32 4)
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @KAUTH_GID_NONE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @kauth_cred_change_egid(%struct.ucred* %10, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = call i32 @DEBUG_CRED_CHANGE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @CRF_NOMEMBERD, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @KAUTH_UID_NONE, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  br label %66

64:                                               ; preds = %50
  %65 = call i32 @DEBUG_CRED_CHANGE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %54
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @KAUTH_GID_NONE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @KAUTH_GID_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.ucred*, %struct.ucred** %6, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call %struct.ucred* @kauth_cred_update(%struct.ucred* %84, %struct.ucred* %10, i32 %85)
  store %struct.ucred* %86, %struct.ucred** %5, align 8
  br label %87

87:                                               ; preds = %83, %42
  %88 = load %struct.ucred*, %struct.ucred** %5, align 8
  ret %struct.ucred* %88
}

declare dso_local %struct.TYPE_3__* @posix_cred_get(%struct.ucred*) #1

declare dso_local i32 @NULLCRED_CHECK(%struct.ucred*) #1

declare dso_local i32 @DEBUG_CRED_ENTER(i8*, %struct.ucred*, i64, i64, i64) #1

declare dso_local i32 @bcopy(%struct.ucred*, %struct.ucred*, i32) #1

declare dso_local i64 @kauth_cred_change_egid(%struct.ucred*, i64) #1

declare dso_local i32 @DEBUG_CRED_CHANGE(i8*) #1

declare dso_local %struct.ucred* @kauth_cred_update(%struct.ucred*, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
