; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_attach_unit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_attach_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.content_filter = type { i64, i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { %struct.cfil_entry* }
%struct.cfil_entry = type { i32, i64, %struct.content_filter* }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfil_lck_rw = common dso_local global i32 0, align 4
@content_filters = common dso_local global %struct.content_filter** null, align 8
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@cfe_link = common dso_local global i32 0, align 4
@CFEF_CFIL_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_info_attach_unit(%struct.socket* %0, i64 %1, %struct.cfil_info* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.content_filter*, align 8
  %10 = alloca %struct.cfil_entry*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cfil_info* %2, %struct.cfil_info** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @LOG_INFO, align 4
  %12 = call i32 @CFIL_LOG(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.socket*, %struct.socket** %4, align 8
  %14 = call i32 @socket_lock_assert_owned(%struct.socket* %13)
  %15 = call i32 @cfil_rw_lock_exclusive(i32* @cfil_lck_rw)
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %72, %3
  %17 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %18 = icmp ne %struct.content_filter** %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %22 = icmp sle i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %75

25:                                               ; preds = %23
  %26 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.content_filter*, %struct.content_filter** %26, i64 %29
  %31 = load %struct.content_filter*, %struct.content_filter** %30, align 8
  store %struct.content_filter* %31, %struct.content_filter** %9, align 8
  %32 = load %struct.content_filter*, %struct.content_filter** %9, align 8
  %33 = icmp eq %struct.content_filter* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %72

35:                                               ; preds = %25
  %36 = load %struct.content_filter*, %struct.content_filter** %9, align 8
  %37 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %72

42:                                               ; preds = %35
  %43 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %44 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %43, i32 0, i32 0
  %45 = load %struct.cfil_entry*, %struct.cfil_entry** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %45, i64 %48
  store %struct.cfil_entry* %49, %struct.cfil_entry** %10, align 8
  %50 = load %struct.content_filter*, %struct.content_filter** %9, align 8
  %51 = load %struct.cfil_entry*, %struct.cfil_entry** %10, align 8
  %52 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %51, i32 0, i32 2
  store %struct.content_filter* %50, %struct.content_filter** %52, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.cfil_entry*, %struct.cfil_entry** %10, align 8
  %55 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.content_filter*, %struct.content_filter** %9, align 8
  %57 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %56, i32 0, i32 2
  %58 = load %struct.cfil_entry*, %struct.cfil_entry** %10, align 8
  %59 = load i32, i32* @cfe_link, align 4
  %60 = call i32 @TAILQ_INSERT_TAIL(i32* %57, %struct.cfil_entry* %58, i32 %59)
  %61 = load %struct.content_filter*, %struct.content_filter** %9, align 8
  %62 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.content_filter*, %struct.content_filter** %9, align 8
  %66 = call i32 @verify_content_filter(%struct.content_filter* %65)
  store i32 1, i32* %8, align 4
  %67 = load i32, i32* @CFEF_CFIL_ATTACHED, align 4
  %68 = load %struct.cfil_entry*, %struct.cfil_entry** %10, align 8
  %69 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %75

72:                                               ; preds = %41, %34
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %16

75:                                               ; preds = %42, %23
  %76 = call i32 @cfil_rw_unlock_exclusive(i32* @cfil_lck_rw)
  %77 = load i32, i32* %8, align 4
  ret i32 %77
}

declare dso_local i32 @CFIL_LOG(i32, i8*) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_rw_lock_exclusive(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cfil_entry*, i32) #1

declare dso_local i32 @verify_content_filter(%struct.content_filter*) #1

declare dso_local i32 @cfil_rw_unlock_exclusive(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
