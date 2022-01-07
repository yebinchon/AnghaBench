; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_get_full_description.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_hb.c_hb_get_full_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hb_get_full_description.desc = internal global i8* null, align 8
@.str = private unnamed_addr constant [173 x i8] c"%s\0A\09Website:     %s\0A\09Forum:       %s\0A\09IRC:         %s\0A\09Build Type:  %s\0A\09Repository:  %s\0A\09Release Tag: %s\0A\09Revision:    %d\0A\09Commit Hash: %s\0A\09Branch:      %s\0A\09Remote:      %s\00", align 1
@hb_title = common dso_local global i32 0, align 4
@hb_website = common dso_local global i32 0, align 4
@hb_community = common dso_local global i32 0, align 4
@hb_irc = common dso_local global i32 0, align 4
@hb_repo_type = common dso_local global i32 0, align 4
@hb_repo_url = common dso_local global i32 0, align 4
@hb_repo_tag = common dso_local global i32 0, align 4
@hb_repo_rev = common dso_local global i32 0, align 4
@hb_repo_hash = common dso_local global i32 0, align 4
@hb_repo_branch = common dso_local global i32 0, align 4
@hb_repo_remote = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hb_get_full_description() #0 {
  %1 = load i8*, i8** @hb_get_full_description.desc, align 8
  %2 = icmp eq i8* %1, null
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i32, i32* @hb_title, align 4
  %5 = load i32, i32* @hb_website, align 4
  %6 = load i32, i32* @hb_community, align 4
  %7 = load i32, i32* @hb_irc, align 4
  %8 = load i32, i32* @hb_repo_type, align 4
  %9 = load i32, i32* @hb_repo_url, align 4
  %10 = load i32, i32* @hb_repo_tag, align 4
  %11 = load i32, i32* @hb_repo_rev, align 4
  %12 = load i32, i32* @hb_repo_hash, align 4
  %13 = load i32, i32* @hb_repo_branch, align 4
  %14 = load i32, i32* @hb_repo_remote, align 4
  %15 = call i8* @hb_strdup_printf(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14)
  store i8* %15, i8** @hb_get_full_description.desc, align 8
  br label %16

16:                                               ; preds = %3, %0
  %17 = load i8*, i8** @hb_get_full_description.desc, align 8
  ret i8* %17
}

declare dso_local i8* @hb_strdup_printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
