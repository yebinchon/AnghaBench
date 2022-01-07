; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_anon_property.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_anon_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@cpu_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"dof-data-%d\00", align 1
@dtrace_err_verbose = common dso_local global i32 0, align 4
@dtrace_anon = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to create anonymous state\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@CE_NOTE = common dso_local global i32 0, align 4
@KDI_DTSET_DTRACE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dtrace_anon_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_anon_property() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %7)
  %9 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %10 = call i32 @LCK_MTX_ASSERT(i32* @cpu_lock, i32 %9)
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %66, %0
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @snprintf(i8* %12, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 1, i32* @dtrace_err_verbose, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = call i32* @dtrace_dof_property(i8* %15)
  store i32* %16, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* @dtrace_err_verbose, align 4
  br label %69

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 1), align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %3, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = call i32 @dtrace_state_create(i32* null, i32* null, %struct.TYPE_6__** %3)
  store i32 %23, i32* %2, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 1), align 8
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %22
  %31 = load i32, i32* @CE_WARN, align 4
  %32 = call i32 @cmn_err(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @dtrace_dof_destroy(i32* %33)
  br label %69

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %19
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 (...) @CRED()
  %41 = load i32, i32* @B_TRUE, align 4
  %42 = call i32 @dtrace_dof_slurp(i32* %37, i32* %39, i32 %40, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), i32 0, i32 %41)
  store i32 %42, i32* %2, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call i32 @dtrace_dof_options(i32* %46, %struct.TYPE_6__* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %36
  store i32 0, i32* @dtrace_err_verbose, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @dtrace_dof_destroy(i32* %50)
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %56 = icmp eq i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = call i32 @dtrace_state_destroy(%struct.TYPE_6__* %59)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 1), align 8
  br label %69

61:                                               ; preds = %49
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %11

69:                                               ; preds = %54, %30, %18
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %74 = call i32 @dtrace_enabling_retain(i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dtrace_anon, i32 0, i32 0), align 8
  %80 = call i32 @dtrace_enabling_dump(i32* %79)
  br label %81

81:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @dtrace_dof_property(i8*) #1

declare dso_local i32 @dtrace_state_create(i32*, i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

declare dso_local i32 @dtrace_dof_destroy(i32*) #1

declare dso_local i32 @dtrace_dof_slurp(i32*, i32*, i32, i32**, i32, i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dtrace_dof_options(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_state_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @dtrace_enabling_retain(i32*) #1

declare dso_local i32 @dtrace_enabling_dump(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
