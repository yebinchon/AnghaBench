; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_nbinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_nbinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"nfs_buf\00", align 1
@LCK_GRP_ATTR_NULL = common dso_local global i32 0, align 4
@nfs_buf_lck_grp = common dso_local global i32 0, align 4
@LCK_ATTR_NULL = common dso_local global i32 0, align 4
@nfs_buf_mutex = common dso_local global i32 0, align 4
@nfsbufdelwricnt = common dso_local global i64 0, align 8
@nfsbuffreemetacnt = common dso_local global i64 0, align 8
@nfsbuffreecnt = common dso_local global i64 0, align 8
@nfsbufmetacnt = common dso_local global i64 0, align 8
@nfsbufcnt = common dso_local global i64 0, align 8
@nfsbufmin = common dso_local global i32 0, align 4
@sane_size = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NFS_RWSIZE = common dso_local global i32 0, align 4
@nfsbufmax = common dso_local global i32 0, align 4
@nfsbufmetamax = common dso_local global i32 0, align 4
@nfsneedbuffer = common dso_local global i64 0, align 8
@nfs_nbdwrite = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@nfsbufhash = common dso_local global i32 0, align 4
@nfsbufhashtbl = common dso_local global i32 0, align 4
@nfsbuffree = common dso_local global i32 0, align 4
@nfsbuffreemeta = common dso_local global i32 0, align 4
@nfsbufdelwri = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_nbinit() #0 {
  %1 = load i32, i32* @LCK_GRP_ATTR_NULL, align 4
  %2 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %1)
  store i32 %2, i32* @nfs_buf_lck_grp, align 4
  %3 = load i32, i32* @nfs_buf_lck_grp, align 4
  %4 = load i32, i32* @LCK_ATTR_NULL, align 4
  %5 = call i32 @lck_mtx_alloc_init(i32 %3, i32 %4)
  store i32 %5, i32* @nfs_buf_mutex, align 4
  store i64 0, i64* @nfsbufdelwricnt, align 8
  store i64 0, i64* @nfsbuffreemetacnt, align 8
  store i64 0, i64* @nfsbuffreecnt, align 8
  store i64 0, i64* @nfsbufmetacnt, align 8
  store i64 0, i64* @nfsbufcnt, align 8
  store i32 128, i32* @nfsbufmin, align 4
  %6 = load i32, i32* @sane_size, align 4
  %7 = load i32, i32* @PAGE_SHIFT, align 4
  %8 = ashr i32 %6, %7
  %9 = load i32, i32* @NFS_RWSIZE, align 4
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = ashr i32 %9, %10
  %12 = mul nsw i32 2, %11
  %13 = sdiv i32 %8, %12
  store i32 %13, i32* @nfsbufmax, align 4
  %14 = load i32, i32* @nfsbufmax, align 4
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* @nfsbufmetamax, align 4
  store i64 0, i64* @nfsneedbuffer, align 8
  store i64 0, i64* @nfs_nbdwrite, align 8
  %16 = load i32, i32* @nfsbufmax, align 4
  %17 = sdiv i32 %16, 4
  %18 = load i32, i32* @M_TEMP, align 4
  %19 = call i32 @hashinit(i32 %17, i32 %18, i32* @nfsbufhash)
  store i32 %19, i32* @nfsbufhashtbl, align 4
  %20 = call i32 @TAILQ_INIT(i32* @nfsbuffree)
  %21 = call i32 @TAILQ_INIT(i32* @nfsbuffreemeta)
  %22 = call i32 @TAILQ_INIT(i32* @nfsbufdelwri)
  ret void
}

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_mtx_alloc_init(i32, i32) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
