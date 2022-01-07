; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_rotate_vnode.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/security/audit/extr_audit_worker.c_audit_rotate_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32* }
%struct.vnode = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"audit_rotate_vnode: cred %p vp %p\00", align 1
@audit_mtx = common dso_local global i32 0, align 4
@audit_enabled = common dso_local global i32 0, align 4
@audit_q_draining = common dso_local global i32 0, align 4
@audit_q_len = common dso_local global i64 0, align 8
@audit_qctrl = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@audit_watermark_cv = common dso_local global i32 0, align 4
@audit_q = common dso_local global i32 0, align 4
@audit_drain_kar = common dso_local global i32 0, align 4
@k_q = common dso_local global i32 0, align 4
@audit_worker_cv = common dso_local global i32 0, align 4
@audit_drain_cv = common dso_local global i32 0, align 4
@audit_ctx = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@audit_vp = common dso_local global %struct.vnode* null, align 8
@audit_file_rotate_wait = common dso_local global i64 0, align 8
@AUDIT_CLOSE_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"audit_rotate_vnode: Couldn't close audit file.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_rotate_vnode(i32* %0, %struct.vnode* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = icmp ne %struct.vnode* %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9, %2
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = icmp eq %struct.vnode* %16, null
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi i1 [ true, %9 ], [ %19, %18 ]
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = bitcast %struct.vnode* %24 to i8*
  %26 = call i32 @KASSERT(i32 %22, i8* %25)
  %27 = call i32 @mtx_lock(i32* @audit_mtx)
  %28 = load i32, i32* @audit_enabled, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %20
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = icmp eq %struct.vnode* null, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  store i32 0, i32* @audit_enabled, align 4
  store i32 1, i32* @audit_q_draining, align 4
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i64, i64* @audit_q_len, align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @audit_qctrl, i32 0, i32 0), align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @cv_wait(i32* @audit_watermark_cv, i32* @audit_mtx)
  br label %34

40:                                               ; preds = %34
  %41 = load i32, i32* @k_q, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* @audit_q, i32* @audit_drain_kar, i32 %41)
  %43 = load i64, i64* @audit_q_len, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @audit_q_len, align 8
  %45 = call i32 @cv_signal(i32* @audit_worker_cv)
  br label %46

46:                                               ; preds = %40, %30, %20
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* @audit_q_draining, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 @cv_wait(i32* @audit_drain_cv, i32* @audit_mtx)
  br label %47

52:                                               ; preds = %47
  %53 = call i32 @mtx_unlock(i32* @audit_mtx)
  %54 = call i32 (...) @AUDIT_WORKER_SX_XLOCK()
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_ctx, i32 0, i32 0), align 8
  store i32* %55, i32** %5, align 8
  %56 = load %struct.vnode*, %struct.vnode** @audit_vp, align 8
  store %struct.vnode* %56, %struct.vnode** %6, align 8
  %57 = load i32*, i32** %3, align 8
  store i32* %57, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @audit_ctx, i32 0, i32 0), align 8
  %58 = load %struct.vnode*, %struct.vnode** %4, align 8
  store %struct.vnode* %58, %struct.vnode** @audit_vp, align 8
  store i64 0, i64* @audit_file_rotate_wait, align 8
  %59 = load %struct.vnode*, %struct.vnode** @audit_vp, align 8
  %60 = icmp ne %struct.vnode* %59, null
  %61 = zext i1 %60 to i32
  store i32 %61, i32* @audit_enabled, align 4
  %62 = call i32 (...) @AUDIT_WORKER_SX_XUNLOCK()
  %63 = load %struct.vnode*, %struct.vnode** %6, align 8
  %64 = icmp ne %struct.vnode* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %52
  %66 = load %struct.vnode*, %struct.vnode** %6, align 8
  %67 = call i64 @vnode_get(%struct.vnode* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load %struct.vnode*, %struct.vnode** %6, align 8
  %71 = load i32, i32* @AUDIT_CLOSE_FLAGS, align 4
  %72 = call i32 (...) @vfs_context_kernel()
  %73 = call i32 @vn_close(%struct.vnode* %70, i32 %71, i32 %72)
  %74 = load %struct.vnode*, %struct.vnode** %6, align 8
  %75 = call i32 @vnode_put(%struct.vnode* %74)
  br label %78

76:                                               ; preds = %65
  %77 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %69
  %79 = call i32 @kauth_cred_unref(i32** %5)
  br label %80

80:                                               ; preds = %78, %52
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @cv_signal(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @AUDIT_WORKER_SX_XLOCK(...) #1

declare dso_local i32 @AUDIT_WORKER_SX_XUNLOCK(...) #1

declare dso_local i64 @vnode_get(%struct.vnode*) #1

declare dso_local i32 @vn_close(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @kauth_cred_unref(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
