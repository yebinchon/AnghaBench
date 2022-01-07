; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_netbsd_utimensat.c_chtmpdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_netbsd_utimensat.c_chtmpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32*, i32 }

@T_SETUPBEGIN = common dso_local global i32 0, align 4
@FILEPATH = common dso_local global i32 0, align 4
@LINK = common dso_local global i32 0, align 4
@DIRPATH = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"apfs\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"utimensat is APFS-only, but working directory is non-APFS\00", align 1
@T_SETUPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @chtmpdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtmpdir() #0 {
  %1 = alloca %struct.statfs, align 8
  %2 = load i32, i32* @T_SETUPBEGIN, align 4
  %3 = call i32 (...) @dt_tmpdir()
  %4 = call i32 @chdir(i32 %3)
  %5 = call i32 @T_ASSERT_POSIX_ZERO(i32 %4, i32* null)
  %6 = load i32, i32* @FILEPATH, align 4
  %7 = call i32 @unlink(i32 %6)
  %8 = load i32, i32* @LINK, align 4
  %9 = call i32 @unlink(i32 %8)
  %10 = load i32, i32* @DIRPATH, align 4
  %11 = call i32 @rmdir(i32 %10)
  %12 = bitcast %struct.statfs* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load i32, i32* @T_QUIET, align 4
  %14 = call i32 @statfs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.statfs* %1)
  %15 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %14, i32* null)
  %16 = getelementptr inbounds %struct.statfs, %struct.statfs* %1, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i64 @memcmp(i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 @T_SKIP(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %0
  %25 = load i32, i32* @T_SETUPEND, align 4
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @chdir(i32) #1

declare dso_local i32 @dt_tmpdir(...) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @rmdir(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i32*) #1

declare dso_local i32 @statfs(i8*, %struct.statfs*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @T_SKIP(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
