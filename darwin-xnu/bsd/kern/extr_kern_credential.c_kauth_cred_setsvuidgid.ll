; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_setsvuidgid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_cred_setsvuidgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"kauth_cred_setsvuidgid: %p u%d->%d g%d->%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"kauth_cred_setsvuidgid: cred change\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ucred* @kauth_cred_setsvuidgid(%struct.ucred* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ucred, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %8)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load %struct.ucred*, %struct.ucred** %5, align 8
  %13 = call i32 @NULLCRED_CHECK(%struct.ucred* %12)
  %14 = load %struct.ucred*, %struct.ucred** %5, align 8
  %15 = call %struct.TYPE_3__* @posix_cred_get(%struct.ucred* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %10, align 8
  %16 = load %struct.ucred*, %struct.ucred** %5, align 8
  %17 = load %struct.ucred*, %struct.ucred** %5, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ucred*, %struct.ucred** %5, align 8
  %22 = getelementptr inbounds %struct.ucred, %struct.ucred* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @DEBUG_CRED_ENTER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.ucred* %16, i32 %19, i32 %20, i32 %23, i64 %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.ucred*, %struct.ucred** %5, align 8
  store %struct.ucred* %38, %struct.ucred** %4, align 8
  br label %52

39:                                               ; preds = %31, %3
  %40 = call i32 @DEBUG_CRED_CHANGE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.ucred*, %struct.ucred** %5, align 8
  %42 = call i32 @bcopy(%struct.ucred* %41, %struct.ucred* %8, i32 8)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.ucred*, %struct.ucred** %5, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call %struct.ucred* @kauth_cred_update(%struct.ucred* %49, %struct.ucred* %8, i32 %50)
  store %struct.ucred* %51, %struct.ucred** %4, align 8
  br label %52

52:                                               ; preds = %39, %37
  %53 = load %struct.ucred*, %struct.ucred** %4, align 8
  ret %struct.ucred* %53
}

declare dso_local %struct.TYPE_3__* @posix_cred_get(%struct.ucred*) #1

declare dso_local i32 @NULLCRED_CHECK(%struct.ucred*) #1

declare dso_local i32 @DEBUG_CRED_ENTER(i8*, %struct.ucred*, i32, i32, i32, i64) #1

declare dso_local i32 @DEBUG_CRED_CHANGE(i8*) #1

declare dso_local i32 @bcopy(%struct.ucred*, %struct.ucred*, i32) #1

declare dso_local %struct.ucred* @kauth_cred_update(%struct.ucred*, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
