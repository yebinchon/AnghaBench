; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_setresuid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_setresuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i32 }

@KAUTH_UID_NONE = common dso_local global i64 0, align 8
@CRF_NOMEMBERD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucred* @kauth_cred_setresuid(%struct.ucred* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ucred, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store %struct.ucred* %0, %struct.ucred** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %12)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %13, align 8
  %16 = load %struct.ucred*, %struct.ucred** %7, align 8
  %17 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %14, align 8
  %18 = load %struct.ucred*, %struct.ucred** %7, align 8
  %19 = call i32 @NULLCRED_CHECK(%struct.ucred* %18)
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @KAUTH_UID_NONE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %23, %5
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @KAUTH_UID_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33, %29
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @KAUTH_UID_NONE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43, %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load %struct.ucred*, %struct.ucred** %7, align 8
  store %struct.ucred* %56, %struct.ucred** %6, align 8
  br label %99

57:                                               ; preds = %49, %43, %33, %23
  %58 = load %struct.ucred*, %struct.ucred** %7, align 8
  %59 = call i32 @bcopy(%struct.ucred* %58, %struct.ucred* %12, i32 4)
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @KAUTH_UID_NONE, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @KAUTH_UID_NONE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @KAUTH_UID_NONE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @KAUTH_UID_NONE, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load i32, i32* @CRF_NOMEMBERD, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %83
  %96 = load %struct.ucred*, %struct.ucred** %7, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = call %struct.ucred* @kauth_cred_update(%struct.ucred* %96, %struct.ucred* %12, i32 %97)
  store %struct.ucred* %98, %struct.ucred** %6, align 8
  br label %99

99:                                               ; preds = %95, %55
  %100 = load %struct.ucred*, %struct.ucred** %6, align 8
  ret %struct.ucred* %100
}

declare dso_local %struct.TYPE_3__* @posix_cred_get(%struct.ucred*) #1

declare dso_local i32 @NULLCRED_CHECK(%struct.ucred*) #1

declare dso_local i32 @bcopy(%struct.ucred*, %struct.ucred*, i32) #1

declare dso_local %struct.ucred* @kauth_cred_update(%struct.ucred*, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
