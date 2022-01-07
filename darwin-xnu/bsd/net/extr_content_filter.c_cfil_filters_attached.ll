; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_filters_attached.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_filters_attached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cfil_entry* }
%struct.cfil_entry = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@CFEF_SENT_SOCK_ATTACHED = common dso_local global i32 0, align 4
@CFEF_CFIL_DETACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @cfil_filters_attached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_filters_attached(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.cfil_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call i64 @IS_UDP(%struct.socket* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @cfil_filters_udp_attached(%struct.socket* %11, i32 %12)
  store i32 %13, i32* %2, align 4
  br label %71

14:                                               ; preds = %1
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.socket*, %struct.socket** %3, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %14
  store i32 0, i32* %2, align 4
  br label %71

27:                                               ; preds = %21
  %28 = load %struct.socket*, %struct.socket** %3, align 8
  %29 = call i32 @socket_lock_assert_owned(%struct.socket* %28)
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %66, %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load %struct.socket*, %struct.socket** %3, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.cfil_entry*, %struct.cfil_entry** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %39, i64 %42
  store %struct.cfil_entry* %43, %struct.cfil_entry** %4, align 8
  %44 = load %struct.cfil_entry*, %struct.cfil_entry** %4, align 8
  %45 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %66

49:                                               ; preds = %34
  %50 = load %struct.cfil_entry*, %struct.cfil_entry** %4, align 8
  %51 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CFEF_SENT_SOCK_ATTACHED, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %66

57:                                               ; preds = %49
  %58 = load %struct.cfil_entry*, %struct.cfil_entry** %4, align 8
  %59 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @CFEF_CFIL_DETACHED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %66

65:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %69

66:                                               ; preds = %64, %56, %48
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %30

69:                                               ; preds = %65, %30
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %26, %10
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @IS_UDP(%struct.socket*) #1

declare dso_local i32 @cfil_filters_udp_attached(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
