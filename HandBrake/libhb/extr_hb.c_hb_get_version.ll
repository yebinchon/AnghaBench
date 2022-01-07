; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_get_version.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hb_title = common dso_local global i64 0, align 8
@hb_name = common dso_local global i64 0, align 8
@hb_website = common dso_local global i64 0, align 8
@hb_community = common dso_local global i64 0, align 8
@hb_irc = common dso_local global i64 0, align 8
@hb_version = common dso_local global i8* null, align 8
@hb_repo_url = common dso_local global i64 0, align 8
@hb_repo_tag = common dso_local global i64 0, align 8
@hb_repo_rev = common dso_local global i64 0, align 8
@hb_repo_hash = common dso_local global i64 0, align 8
@hb_repo_branch = common dso_local global i64 0, align 8
@hb_repo_remote = common dso_local global i64 0, align 8
@hb_repo_type = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_get_version(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @hb_title, align 8
  %4 = load i64, i64* @hb_name, align 8
  %5 = load i64, i64* @hb_website, align 8
  %6 = load i64, i64* @hb_community, align 8
  %7 = load i64, i64* @hb_irc, align 8
  %8 = load i8*, i8** @hb_version, align 8
  %9 = load i64, i64* @hb_repo_url, align 8
  %10 = load i64, i64* @hb_repo_tag, align 8
  %11 = load i64, i64* @hb_repo_rev, align 8
  %12 = load i64, i64* @hb_repo_hash, align 8
  %13 = load i64, i64* @hb_repo_branch, align 8
  %14 = load i64, i64* @hb_repo_remote, align 8
  %15 = load i64, i64* @hb_repo_type, align 8
  %16 = load i8*, i8** @hb_version, align 8
  ret i8* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
