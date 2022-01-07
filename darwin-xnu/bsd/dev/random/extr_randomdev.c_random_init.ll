; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/random/extr_randomdev.c_random_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/random/extr_randomdev.c_random_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANDOM_MAJOR = common dso_local global i32 0, align 4
@random_cdevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"random_init: failed to allocate a major number!\00", align 1
@RANDOM_MINOR = common dso_local global i32 0, align 4
@DEVFS_CHAR = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@URANDOM_MINOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"urandom\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @random_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @RANDOM_MAJOR, align 4
  %3 = call i32 @cdevsw_add(i32 %2, i32* @random_cdevsw)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @RANDOM_MINOR, align 4
  %11 = call i32 @makedev(i32 %9, i32 %10)
  %12 = load i32, i32* @DEVFS_CHAR, align 4
  %13 = load i32, i32* @UID_ROOT, align 4
  %14 = load i32, i32* @GID_WHEEL, align 4
  %15 = call i32 @devfs_make_node(i32 %11, i32 %12, i32 %13, i32 %14, i32 438, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @URANDOM_MINOR, align 4
  %18 = call i32 @makedev(i32 %16, i32 %17)
  %19 = load i32, i32* @DEVFS_CHAR, align 4
  %20 = load i32, i32* @UID_ROOT, align 4
  %21 = load i32, i32* @GID_WHEEL, align 4
  %22 = call i32 @devfs_make_node(i32 %18, i32 %19, i32 %20, i32 %21, i32 438, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  ret void
}

declare dso_local i32 @cdevsw_add(i32, i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @devfs_make_node(i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @makedev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
