; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_normalize_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pf_frent_pl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pffrent\00", align 1
@pf_frag_pl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pffrag\00", align 1
@pf_cache_pl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"pffrcache\00", align 1
@pf_cent_pl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pffrcent\00", align 1
@pf_state_scrub_pl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"pfstscr\00", align 1
@PFFRAG_FRAG_HIWAT = common dso_local global i32 0, align 4
@PFFRAG_FRENT_HIWAT = common dso_local global i32 0, align 4
@PFFRAG_FRCACHE_HIWAT = common dso_local global i32 0, align 4
@PFFRAG_FRCENT_HIWAT = common dso_local global i32 0, align 4
@pf_fragqueue = common dso_local global i32 0, align 4
@pf_cachequeue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_normalize_init() #0 {
  %1 = call i32 @pool_init(i32* @pf_frent_pl, i32 4, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %2 = call i32 @pool_init(i32* @pf_frag_pl, i32 4, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %3 = call i32 @pool_init(i32* @pf_cache_pl, i32 4, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %4 = call i32 @pool_init(i32* @pf_cent_pl, i32 4, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %5 = call i32 @pool_init(i32* @pf_state_scrub_pl, i32 4, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %6 = load i32, i32* @PFFRAG_FRAG_HIWAT, align 4
  %7 = call i32 @pool_sethiwat(i32* @pf_frag_pl, i32 %6)
  %8 = load i32, i32* @PFFRAG_FRENT_HIWAT, align 4
  %9 = call i32 @pool_sethardlimit(i32* @pf_frent_pl, i32 %8, i32* null, i32 0)
  %10 = load i32, i32* @PFFRAG_FRCACHE_HIWAT, align 4
  %11 = call i32 @pool_sethardlimit(i32* @pf_cache_pl, i32 %10, i32* null, i32 0)
  %12 = load i32, i32* @PFFRAG_FRCENT_HIWAT, align 4
  %13 = call i32 @pool_sethardlimit(i32* @pf_cent_pl, i32 %12, i32* null, i32 0)
  %14 = call i32 @TAILQ_INIT(i32* @pf_fragqueue)
  %15 = call i32 @TAILQ_INIT(i32* @pf_cachequeue)
  ret void
}

declare dso_local i32 @pool_init(i32*, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @pool_sethiwat(i32*, i32) #1

declare dso_local i32 @pool_sethardlimit(i32*, i32, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
