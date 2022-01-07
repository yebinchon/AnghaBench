; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CheckInstalledVersion.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/utils/extr_metadata_cache.c_CheckInstalledVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EnableVersionChecks = common dso_local global i32 0, align 4
@CITUS_EXTENSIONVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"loaded Citus library version differs from installed extension version\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"Loaded library requires %s, but the installed extension version is %s.\00", align 1
@CITUS_MAJORVERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Run ALTER EXTENSION citus UPDATE and try again.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @CheckInstalledVersion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckInstalledVersion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %5 = call i32 (...) @CitusHasBeenLoaded()
  %6 = call i32 @Assert(i32 %5)
  %7 = load i32, i32* @EnableVersionChecks, align 4
  %8 = call i32 @Assert(i32 %7)
  %9 = call i8* (...) @InstalledExtensionVersion()
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @CITUS_EXTENSIONVERSION, align 4
  %12 = call i32 @MajorVersionsCompatible(i8* %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @errmsg(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @CITUS_MAJORVERSION, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @errdetail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %17, i8* %18)
  %20 = call i32 @errhint(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @ereport(i32 %15, i32 %20)
  store i32 0, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CitusHasBeenLoaded(...) #1

declare dso_local i8* @InstalledExtensionVersion(...) #1

declare dso_local i32 @MajorVersionsCompatible(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i32, i8*) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
