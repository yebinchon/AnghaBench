; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_fallback_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_fallback_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfs_idmap_ctrl = common dso_local global i32 0, align 4
@NFS_IDMAP_CTRL_FALLBACK_NO_COMMON_IDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i8*, i64)* @nfs4_fallback_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nfs4_fallback_id(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load i32, i32* @nfs_idmap_ctrl, align 4
  %13 = load i32, i32* @NFS_IDMAP_CTRL_FALLBACK_NO_COMMON_IDS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %23, i8** %10, align 8
  br label %29

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -2
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = sub i64 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snprintf(i8* %34, i64 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  br label %53

43:                                               ; preds = %30
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @strlcpy(i8* %44, i8* %45, i64 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i8* null, i8** %5, align 8
  br label %55

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i8*, i8** %8, align 8
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i8*, i8** %5, align 8
  ret i8* %56
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
