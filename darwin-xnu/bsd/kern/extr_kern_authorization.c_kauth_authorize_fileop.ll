; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_authorize_fileop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_authorization.c_kauth_authorize_fileop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@kauth_scope_fileop = common dso_local global %struct.TYPE_3__* null, align 8
@KS_F_HAS_LISTENERS = common dso_local global i32 0, align 4
@KAUTH_FILEOP_OPEN = common dso_local global i64 0, align 8
@KAUTH_FILEOP_CLOSE = common dso_local global i64 0, align 8
@KAUTH_FILEOP_EXEC = common dso_local global i64 0, align 8
@KAUTH_FILEOP_WILL_RENAME = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kauth_authorize_fileop(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kauth_scope_fileop, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KS_F_HAS_LISTENERS, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @KAUTH_FILEOP_OPEN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @KAUTH_FILEOP_CLOSE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @KAUTH_FILEOP_EXEC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @KAUTH_FILEOP_WILL_RENAME, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32, %28, %24, %20
  %37 = call i8* (...) @get_pathbuff()
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* @MAXPATHLEN, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @vn_getpath(i32 %40, i8* %41, i32* %11)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @release_pathbuff(i8* %45)
  store i32 0, i32* %5, align 4
  br label %74

47:                                               ; preds = %36
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @KAUTH_FILEOP_CLOSE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @KAUTH_FILEOP_WILL_RENAME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8*, i8** %10, align 8
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %57, %32
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kauth_scope_fileop, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @kauth_authorize_action(%struct.TYPE_3__* %61, i32 %62, i64 %63, i64 %64, i64 %65, i64 %66, i32 0)
  %68 = load i8*, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @release_pathbuff(i8* %71)
  br label %73

73:                                               ; preds = %70, %60
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %44, %19
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i8* @get_pathbuff(...) #1

declare dso_local i64 @vn_getpath(i32, i8*, i32*) #1

declare dso_local i32 @release_pathbuff(i8*) #1

declare dso_local i32 @kauth_authorize_action(%struct.TYPE_3__*, i32, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
