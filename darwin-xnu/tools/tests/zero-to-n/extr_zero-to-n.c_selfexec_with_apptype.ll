; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_selfexec_with_apptype.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/zero-to-n/extr_zero-to-n.c_selfexec_with_apptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"_NSGetExecutablePath\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"--switched_apptype\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"posix_spawnattr_init\00", align 1
@POSIX_SPAWN_SETEXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"posix_spawnattr_setflags\00", align 1
@POSIX_SPAWN_PROC_TYPE_APP_DEFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"posix_spawnattr_setprocesstype_np\00", align 1
@environ = external dso_local global i8**, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"posix_spawn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @selfexec_with_apptype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @selfexec_with_apptype(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8*, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i32, i32* @PATH_MAX, align 4
  store i32 %21, i32* %11, align 4
  %22 = call i32 @_NSGetExecutablePath(i8* %20, i32* %11)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EX_OSERR, align 4
  %27 = call i32 @err(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %2
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load i8**, i8*** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %17, i64 %40
  store i8* %38, i8** %41, align 8
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %17, i64 %47
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %17, i64 %51
  store i8* null, i8** %52, align 8
  %53 = call i32 @posix_spawnattr_init(i32* %6)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @EX_OSERR, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @errc(i32 %57, i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %45
  %61 = load i32, i32* @POSIX_SPAWN_SETEXEC, align 4
  %62 = call i32 @posix_spawnattr_setflags(i32* %6, i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @EX_OSERR, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @errc(i32 %66, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* @POSIX_SPAWN_PROC_TYPE_APP_DEFAULT, align 4
  %71 = call i32 @posix_spawnattr_setprocesstype_np(i32* %6, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @EX_OSERR, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @errc(i32 %75, i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i8**, i8*** @environ, align 8
  %80 = call i32 @posix_spawn(i32* null, i8* %20, i32* null, i32* %6, i8** %17, i8** %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @EX_OSERR, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @errc(i32 %84, i32 %85, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_NSGetExecutablePath(i8*, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @posix_spawnattr_init(i32*) #2

declare dso_local i32 @errc(i32, i32, i8*) #2

declare dso_local i32 @posix_spawnattr_setflags(i32*, i32) #2

declare dso_local i32 @posix_spawnattr_setprocesstype_np(i32*, i32) #2

declare dso_local i32 @posix_spawn(i32*, i8*, i32*, i32*, i8**, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
