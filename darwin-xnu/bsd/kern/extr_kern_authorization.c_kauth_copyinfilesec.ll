; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_copyinfilesec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_copyinfilesec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KAUTH_FILESEC_MAGIC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KAUTH_FILESEC_NOACL = common dso_local global i32 0, align 4
@KAUTH_ACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@opaque = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kauth_copyinfilesec(i32 %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PAGE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @KAUTH_FILESEC_SIZE(i32 0)
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @mach_vm_round_page(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 32
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 32, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %2
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.TYPE_6__* @kauth_filesec_alloc(i32 %29)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %6, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %5, align 4
  br label %81

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @KAUTH_FILESEC_SIZE(i32 %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = ptrtoint %struct.TYPE_6__* %39 to i32
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @copyin(i32 %38, i32 %40, i64 %41)
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %81

45:                                               ; preds = %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @KAUTH_FILESEC_MAGIC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %5, align 4
  br label %81

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @KAUTH_FILESEC_NOACL, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @KAUTH_ACL_MAX_ENTRIES, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %65
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %7, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = call i32 @kauth_filesec_free(%struct.TYPE_6__* %78)
  br label %28

80:                                               ; preds = %59, %53
  br label %81

81:                                               ; preds = %80, %72, %51, %44, %32
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = icmp ne %struct.TYPE_6__* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = call i32 @kauth_filesec_free(%struct.TYPE_6__* %88)
  br label %90

90:                                               ; preds = %87, %84
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %93, align 8
  %94 = load i32, i32* @opaque, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @AUDIT_ARG(i32 %94, %struct.TYPE_6__* %95, i64 %96)
  br label %98

98:                                               ; preds = %91, %90
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @KAUTH_FILESEC_SIZE(i32) #1

declare dso_local i32 @mach_vm_round_page(i32) #1

declare dso_local %struct.TYPE_6__* @kauth_filesec_alloc(i32) #1

declare dso_local i32 @copyin(i32, i32, i64) #1

declare dso_local i32 @kauth_filesec_free(%struct.TYPE_6__*) #1

declare dso_local i32 @AUDIT_ARG(i32, %struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
