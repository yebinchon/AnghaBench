; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_drop_priv.c_drop_priv.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_drop_priv.c_drop_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"mobile\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"getpwnam(\22mobile\22)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Change group to %u\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Change user to %u\00", align 1
@INVOKER_GID = common dso_local global i32 0, align 4
@INVOKER_UID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drop_priv() #0 {
  %1 = alloca %struct.passwd*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.passwd* @getpwnam(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.passwd* %4, %struct.passwd** %1, align 8
  %5 = load i32, i32* @T_QUIET, align 4
  %6 = load i32, i32* @T_WITH_ERRNO, align 4
  %7 = load %struct.passwd*, %struct.passwd** %1, align 8
  %8 = call i32 @T_ASSERT_NOTNULL(%struct.passwd* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.passwd*, %struct.passwd** %1, align 8
  %10 = getelementptr inbounds %struct.passwd, %struct.passwd* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %2, align 4
  %12 = load %struct.passwd*, %struct.passwd** %1, align 8
  %13 = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @setgid(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @setuid(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @T_ASSERT_POSIX_SUCCESS(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  ret void
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @T_ASSERT_NOTNULL(%struct.passwd*, i8*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, i32) #1

declare dso_local i32 @setgid(i32) #1

declare dso_local i32 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
