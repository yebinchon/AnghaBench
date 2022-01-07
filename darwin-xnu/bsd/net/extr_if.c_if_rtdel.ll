; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtdel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@RTF_UP = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"if_rtdel: error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @if_rtdel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_rtdel(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %10 = bitcast %struct.radix_node* %9 to %struct.rtentry*
  store %struct.rtentry* %10, %struct.rtentry** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ifnet*
  store %struct.ifnet* %12, %struct.ifnet** %7, align 8
  %13 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %14 = icmp eq %struct.rtentry* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %18 = call i32 @RT_LOCK(%struct.rtentry* %17)
  %19 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %20 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %19, i32 0, i32 2
  %21 = load %struct.ifnet*, %struct.ifnet** %20, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %23 = icmp eq %struct.ifnet* %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %16
  %25 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %26 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @RTF_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %24
  %32 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %33 = call i32 @RT_UNLOCK(%struct.rtentry* %32)
  %34 = load i32, i32* @RTM_DELETE, align 4
  %35 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %36 = call i32 @rt_key(%struct.rtentry* %35)
  %37 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %41 = call i32 @rt_mask(%struct.rtentry* %40)
  %42 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %43 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rtrequest_locked(i32 %34, i32 %36, i32 %39, i32 %41, i32 %44, i32* null)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = load i32, i32* @LOG_WARNING, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @log(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %31
  br label %56

53:                                               ; preds = %24, %16
  %54 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %55 = call i32 @RT_UNLOCK(%struct.rtentry* %54)
  br label %56

56:                                               ; preds = %53, %52
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtrequest_locked(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
