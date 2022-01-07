; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_posix_cred_access.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_posix_cred_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_cred_access(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @S_IRWXU, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @S_IRWXG, align 4
  %21 = and i32 %19, %20
  %22 = shl i32 %21, 3
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @S_IRWXO, align 4
  %25 = and i32 %23, %24
  %26 = shl i32 %25, 6
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @kauth_cred_getuid(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %90

38:                                               ; preds = %31, %5
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %14, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %90

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @kauth_cred_ismember_gid(i32 %54, i64 %55, i32* %12)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @EACCES, align 4
  store i32 %62, i32* %6, align 4
  br label %90

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @EACCES, align 4
  store i32 %70, i32* %6, align 4
  br label %90

71:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %90

72:                                               ; preds = %47
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @kauth_cred_ismember_gid(i32 %73, i64 %74, i32* %12)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %90

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %15, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @EACCES, align 4
  store i32 %88, i32* %6, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %87, %80, %71, %69, %61, %46, %37
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @kauth_cred_ismember_gid(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
