; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_modctl_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_modctl_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { %struct.modctl*, %struct.modctl*, i32, i64 }

@mod_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_modctl_list = common dso_local global %struct.modctl* null, align 8
@KMOD_MAX_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.modctl*)* @dtrace_modctl_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_modctl_add(%struct.modctl* %0) #0 {
  %2 = alloca %struct.modctl*, align 8
  %3 = alloca %struct.modctl*, align 8
  %4 = alloca %struct.modctl*, align 8
  store %struct.modctl* %0, %struct.modctl** %2, align 8
  %5 = load %struct.modctl*, %struct.modctl** %2, align 8
  %6 = icmp ne %struct.modctl* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32* @mod_lock, i32 %9)
  %11 = load %struct.modctl*, %struct.modctl** @dtrace_modctl_list, align 8
  %12 = load %struct.modctl*, %struct.modctl** %2, align 8
  %13 = getelementptr inbounds %struct.modctl, %struct.modctl* %12, i32 0, i32 0
  store %struct.modctl* %11, %struct.modctl** %13, align 8
  %14 = load %struct.modctl*, %struct.modctl** %2, align 8
  store %struct.modctl* %14, %struct.modctl** @dtrace_modctl_list, align 8
  %15 = load %struct.modctl*, %struct.modctl** %2, align 8
  store %struct.modctl* %15, %struct.modctl** %4, align 8
  %16 = load %struct.modctl*, %struct.modctl** %2, align 8
  %17 = getelementptr inbounds %struct.modctl, %struct.modctl* %16, i32 0, i32 0
  %18 = load %struct.modctl*, %struct.modctl** %17, align 8
  store %struct.modctl* %18, %struct.modctl** %3, align 8
  br label %19

19:                                               ; preds = %42, %27, %1
  %20 = load %struct.modctl*, %struct.modctl** %3, align 8
  %21 = icmp ne %struct.modctl* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  %23 = load %struct.modctl*, %struct.modctl** %3, align 8
  %24 = getelementptr inbounds %struct.modctl, %struct.modctl* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.modctl*, %struct.modctl** %3, align 8
  store %struct.modctl* %28, %struct.modctl** %4, align 8
  %29 = load %struct.modctl*, %struct.modctl** %3, align 8
  %30 = getelementptr inbounds %struct.modctl, %struct.modctl* %29, i32 0, i32 0
  %31 = load %struct.modctl*, %struct.modctl** %30, align 8
  store %struct.modctl* %31, %struct.modctl** %3, align 8
  br label %19

32:                                               ; preds = %22
  %33 = load %struct.modctl*, %struct.modctl** %2, align 8
  %34 = getelementptr inbounds %struct.modctl, %struct.modctl* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.modctl*, %struct.modctl** %3, align 8
  %37 = getelementptr inbounds %struct.modctl, %struct.modctl* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @KMOD_MAX_NAME, align 4
  %40 = call i64 @strncmp(i32 %35, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.modctl*, %struct.modctl** %3, align 8
  store %struct.modctl* %43, %struct.modctl** %4, align 8
  %44 = load %struct.modctl*, %struct.modctl** %3, align 8
  %45 = getelementptr inbounds %struct.modctl, %struct.modctl* %44, i32 0, i32 0
  %46 = load %struct.modctl*, %struct.modctl** %45, align 8
  store %struct.modctl* %46, %struct.modctl** %3, align 8
  br label %19

47:                                               ; preds = %32
  %48 = load %struct.modctl*, %struct.modctl** %3, align 8
  %49 = getelementptr inbounds %struct.modctl, %struct.modctl* %48, i32 0, i32 0
  %50 = load %struct.modctl*, %struct.modctl** %49, align 8
  %51 = load %struct.modctl*, %struct.modctl** %4, align 8
  %52 = getelementptr inbounds %struct.modctl, %struct.modctl* %51, i32 0, i32 0
  store %struct.modctl* %50, %struct.modctl** %52, align 8
  %53 = load %struct.modctl*, %struct.modctl** %3, align 8
  %54 = load %struct.modctl*, %struct.modctl** %2, align 8
  %55 = getelementptr inbounds %struct.modctl, %struct.modctl* %54, i32 0, i32 1
  store %struct.modctl* %53, %struct.modctl** %55, align 8
  %56 = load %struct.modctl*, %struct.modctl** %3, align 8
  %57 = getelementptr inbounds %struct.modctl, %struct.modctl* %56, i32 0, i32 0
  store %struct.modctl* null, %struct.modctl** %57, align 8
  br label %58

58:                                               ; preds = %47, %19
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
