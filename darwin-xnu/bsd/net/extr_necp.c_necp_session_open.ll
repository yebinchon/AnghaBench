; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_session_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.necp_session_open_args = type { i32 }
%struct.necp_session = type { i32 }
%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.necp_session*, i32*, i64 }

@PRIV_NET_PRIVILEGED_NECP_POLICIES = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Process does not hold necessary entitlement to open NECP session\00", align 1
@EACCES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@necp_session_fd_ops = common dso_local global i32 0, align 4
@UF_EXCLOSE = common dso_local global i32 0, align 4
@UF_FORKCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @necp_session_open(%struct.proc* %0, %struct.necp_session_open_args* %1, i32* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.necp_session_open_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.necp_session*, align 8
  %9 = alloca %struct.fileproc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.necp_session_open_args* %1, %struct.necp_session_open_args** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.necp_session* null, %struct.necp_session** %8, align 8
  store %struct.fileproc* null, %struct.fileproc** %9, align 8
  store i32 -1, i32* %10, align 4
  %12 = load %struct.proc*, %struct.proc** %4, align 8
  %13 = call i32 @proc_ucred(%struct.proc* %12)
  %14 = call i64 @kauth_cred_getuid(i32 %13)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = call i32 (...) @kauth_cred_get()
  %19 = load i32, i32* @PRIV_NET_PRIVILEGED_NECP_POLICIES, align 4
  %20 = call i64 @priv_check_cred(i32 %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = call i32 @NECPLOG0(i32 %23, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EACCES, align 4
  store i32 %25, i32* %7, align 4
  br label %72

26:                                               ; preds = %17, %3
  %27 = load %struct.proc*, %struct.proc** %4, align 8
  %28 = call i32 (...) @vfs_context_current()
  %29 = call i32 @falloc(%struct.proc* %27, %struct.fileproc** %9, i32* %10, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %72

33:                                               ; preds = %26
  %34 = call %struct.necp_session* (...) @necp_create_session()
  store %struct.necp_session* %34, %struct.necp_session** %8, align 8
  %35 = load %struct.necp_session*, %struct.necp_session** %8, align 8
  %36 = icmp eq %struct.necp_session* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %7, align 4
  br label %72

39:                                               ; preds = %33
  %40 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %45 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32* @necp_session_fd_ops, i32** %47, align 8
  %48 = load %struct.necp_session*, %struct.necp_session** %8, align 8
  %49 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %50 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.necp_session* %48, %struct.necp_session** %52, align 8
  %53 = load %struct.proc*, %struct.proc** %4, align 8
  %54 = call i32 @proc_fdlock(%struct.proc* %53)
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @UF_EXCLOSE, align 4
  %58 = load i32, i32* @UF_FORKCLOSE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @FDFLAGS_SET(%struct.proc* %55, i32 %56, i32 %59)
  %61 = load %struct.proc*, %struct.proc** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @procfdtbl_releasefd(%struct.proc* %61, i32 %62, i32* null)
  %64 = load %struct.proc*, %struct.proc** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %67 = call i32 @fp_drop(%struct.proc* %64, i32 %65, %struct.fileproc* %66, i32 1)
  %68 = load %struct.proc*, %struct.proc** %4, align 8
  %69 = call i32 @proc_fdunlock(%struct.proc* %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %39, %37, %32, %22
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %77 = icmp ne %struct.fileproc* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.proc*, %struct.proc** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %82 = call i32 @fp_free(%struct.proc* %79, i32 %80, %struct.fileproc* %81)
  store %struct.fileproc* null, %struct.fileproc** %9, align 8
  br label %83

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @proc_ucred(%struct.proc*) #1

declare dso_local i64 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @NECPLOG0(i32, i8*) #1

declare dso_local i32 @falloc(%struct.proc*, %struct.fileproc**, i32*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local %struct.necp_session* @necp_create_session(...) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @FDFLAGS_SET(%struct.proc*, i32, i32) #1

declare dso_local i32 @procfdtbl_releasefd(%struct.proc*, i32, i32*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @fp_free(%struct.proc*, i32, %struct.fileproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
