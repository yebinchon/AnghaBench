; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_nchinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_nchinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@desiredvnodes = common dso_local global i32 0, align 4
@desiredNegNodes = common dso_local global i32 0, align 4
@desiredNodes = common dso_local global i32 0, align 4
@nchead = common dso_local global i32 0, align 4
@neghead = common dso_local global i32 0, align 4
@CONFIG_NC_HASH = common dso_local global i32 0, align 4
@M_CACHE = common dso_local global i32 0, align 4
@nchash = common dso_local global i32 0, align 4
@nchashtbl = common dso_local global i32 0, align 4
@nchashmask = common dso_local global i32 0, align 4
@namecache_lck_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Name Cache\00", align 1
@namecache_lck_grp = common dso_local global i32 0, align 4
@namecache_lck_attr = common dso_local global i32 0, align 4
@namecache_rw_lock = common dso_local global i8* null, align 8
@strcache_lck_grp_attr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"String Cache\00", align 1
@strcache_lck_grp = common dso_local global i32 0, align 4
@strcache_lck_attr = common dso_local global i32 0, align 4
@strtable_rw_lock = common dso_local global i8* null, align 8
@NUM_STRCACHE_LOCKS = common dso_local global i32 0, align 4
@strcache_mtx_locks = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nchinit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @desiredvnodes, align 4
  %3 = sdiv i32 %2, 10
  store i32 %3, i32* @desiredNegNodes, align 4
  %4 = load i32, i32* @desiredvnodes, align 4
  %5 = load i32, i32* @desiredNegNodes, align 4
  %6 = add nsw i32 %4, %5
  store i32 %6, i32* @desiredNodes, align 4
  %7 = call i32 @TAILQ_INIT(i32* @nchead)
  %8 = call i32 @TAILQ_INIT(i32* @neghead)
  %9 = call i32 (...) @init_crc32()
  %10 = load i32, i32* @CONFIG_NC_HASH, align 4
  %11 = load i32, i32* @desiredNodes, align 4
  %12 = mul nsw i32 2, %11
  %13 = call i32 @MAX(i32 %10, i32 %12)
  %14 = load i32, i32* @M_CACHE, align 4
  %15 = call i32 @hashinit(i32 %13, i32 %14, i32* @nchash)
  store i32 %15, i32* @nchashtbl, align 4
  %16 = load i32, i32* @nchash, align 4
  store i32 %16, i32* @nchashmask, align 4
  %17 = load i32, i32* @nchash, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @nchash, align 4
  %19 = call i32 (...) @init_string_table()
  %20 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %20, i32* @namecache_lck_grp_attr, align 4
  %21 = load i32, i32* @namecache_lck_grp_attr, align 4
  %22 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* @namecache_lck_grp, align 4
  %23 = call i32 (...) @lck_attr_alloc_init()
  store i32 %23, i32* @namecache_lck_attr, align 4
  %24 = load i32, i32* @namecache_lck_grp, align 4
  %25 = load i32, i32* @namecache_lck_attr, align 4
  %26 = call i8* @lck_rw_alloc_init(i32 %24, i32 %25)
  store i8* %26, i8** @namecache_rw_lock, align 8
  %27 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %27, i32* @strcache_lck_grp_attr, align 4
  %28 = load i32, i32* @strcache_lck_grp_attr, align 4
  %29 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* @strcache_lck_grp, align 4
  %30 = call i32 (...) @lck_attr_alloc_init()
  store i32 %30, i32* @strcache_lck_attr, align 4
  %31 = load i32, i32* @strcache_lck_grp, align 4
  %32 = load i32, i32* @strcache_lck_attr, align 4
  %33 = call i8* @lck_rw_alloc_init(i32 %31, i32 %32)
  store i8* %33, i8** @strtable_rw_lock, align 8
  store i32 0, i32* %1, align 4
  br label %34

34:                                               ; preds = %46, %0
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @NUM_STRCACHE_LOCKS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32*, i32** @strcache_mtx_locks, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @strcache_lck_grp, align 4
  %44 = load i32, i32* @strcache_lck_attr, align 4
  %45 = call i32 @lck_mtx_init(i32* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %34

49:                                               ; preds = %34
  ret void
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @init_crc32(...) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @init_string_table(...) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i8* @lck_rw_alloc_init(i32, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
