; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_nfs_gss_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_gss.c_nfs_gss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@SVC_CTX_HASHSZ = common dso_local global i32 0, align 4
@nfs_gss_clnt_grp = common dso_local global i8* null, align 8
@nfs_gss_svc_ctx_hash = common dso_local global i32 0, align 4
@nfs_gss_svc_ctx_hashtbl = common dso_local global i32 0, align 4
@nfs_gss_svc_ctx_mutex = common dso_local global i32 0, align 4
@nfs_gss_svc_ctx_timer = common dso_local global i32 0, align 4
@nfs_gss_svc_ctx_timer_call = common dso_local global i32 0, align 4
@nfs_gss_svc_grp = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_gss_init() #0 {
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
