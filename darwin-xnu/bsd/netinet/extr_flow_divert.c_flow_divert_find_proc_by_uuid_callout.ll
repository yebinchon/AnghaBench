; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_find_proc_by_uuid_callout.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_find_proc_by_uuid_callout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uuid_search_info = type { i32, i32*, i32, i32 }

@PROC_RETURNED_DONE = common dso_local global i32 0, align 4
@PROC_CLAIMED_DONE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Found multiple processes with UUID %s with different signing identifiers\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to find a process with UUID %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @flow_divert_find_proc_by_uuid_callout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_find_proc_by_uuid_callout(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uuid_search_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uuid_search_info*
  store %struct.uuid_search_info* %10, %struct.uuid_search_info** %5, align 8
  %11 = load i32, i32* @PROC_RETURNED_DONE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %13 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %18 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %24 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @PROC_CLAIMED_DONE, align 4
  store i32 %25, i32* %6, align 4
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %28 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @uuid_unparse(i32 %29, i32 %30)
  %32 = load i32, i32* @LOG_WARNING, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @FDLOG(i32 %32, i32* @nil_pcb, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %26, %21
  %36 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %37 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @M_TEMP, align 4
  %40 = call i32 @FREE(i32* %38, i32 %39)
  %41 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %42 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %35, %2
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PROC_RETURNED_DONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.uuid_search_info*, %struct.uuid_search_info** %5, align 8
  %49 = getelementptr inbounds %struct.uuid_search_info, %struct.uuid_search_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @uuid_unparse(i32 %50, i32 %51)
  %53 = load i32, i32* @LOG_WARNING, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @FDLOG(i32 %53, i32* @nil_pcb, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %47, %43
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @uuid_unparse(i32, i32) #1

declare dso_local i32 @FDLOG(i32, i32*, i8*, i32) #1

declare dso_local i32 @FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
