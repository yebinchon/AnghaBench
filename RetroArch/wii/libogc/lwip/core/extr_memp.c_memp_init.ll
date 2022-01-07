; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_memp.c_memp_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_memp.c_memp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memp = type { %struct.memp* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@memp_memory = common dso_local global i32* null, align 8
@MEMP_MAX = common dso_local global i64 0, align 8
@memp_sizes = common dso_local global i64* null, align 8
@memp_num = common dso_local global i64* null, align 8
@memp_tab = common dso_local global %struct.memp** null, align 8
@mutex = common dso_local global i32 0, align 4
@lwip_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memp_init() #0 {
  %1 = alloca %struct.memp*, align 8
  %2 = alloca %struct.memp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32*, i32** @memp_memory, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = bitcast i32* %7 to %struct.memp*
  store %struct.memp* %8, %struct.memp** %2, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %63, %0
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @MEMP_MAX, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = load i64*, i64** @memp_sizes, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 8
  %19 = call i64 @MEM_ALIGN_SIZE(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64*, i64** @memp_num, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %13
  %26 = load %struct.memp*, %struct.memp** %2, align 8
  %27 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.memp*, %struct.memp** %27, i64 %28
  store %struct.memp* %26, %struct.memp** %29, align 8
  %30 = load %struct.memp*, %struct.memp** %2, align 8
  store %struct.memp* %30, %struct.memp** %1, align 8
  store i64 0, i64* %4, align 8
  br label %31

31:                                               ; preds = %51, %25
  %32 = load i64, i64* %4, align 8
  %33 = load i64*, i64** @memp_num, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.memp*, %struct.memp** %1, align 8
  %40 = bitcast %struct.memp* %39 to i32*
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i64 @MEM_ALIGN(i32* %42)
  %44 = inttoptr i64 %43 to %struct.memp*
  %45 = load %struct.memp*, %struct.memp** %1, align 8
  %46 = getelementptr inbounds %struct.memp, %struct.memp* %45, i32 0, i32 0
  store %struct.memp* %44, %struct.memp** %46, align 8
  %47 = load %struct.memp*, %struct.memp** %1, align 8
  store %struct.memp* %47, %struct.memp** %2, align 8
  %48 = load %struct.memp*, %struct.memp** %1, align 8
  %49 = getelementptr inbounds %struct.memp, %struct.memp* %48, i32 0, i32 0
  %50 = load %struct.memp*, %struct.memp** %49, align 8
  store %struct.memp* %50, %struct.memp** %1, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.memp*, %struct.memp** %2, align 8
  %56 = getelementptr inbounds %struct.memp, %struct.memp* %55, i32 0, i32 0
  store %struct.memp* null, %struct.memp** %56, align 8
  %57 = load %struct.memp*, %struct.memp** %1, align 8
  store %struct.memp* %57, %struct.memp** %2, align 8
  br label %62

58:                                               ; preds = %13
  %59 = load %struct.memp**, %struct.memp*** @memp_tab, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.memp*, %struct.memp** %59, i64 %60
  store %struct.memp* null, %struct.memp** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %3, align 8
  br label %9

66:                                               ; preds = %9
  %67 = call i32 @LWP_SemInit(i32* @mutex, i32 1, i32 1)
  ret void
}

declare dso_local i64 @MEM_ALIGN_SIZE(i64) #1

declare dso_local i64 @MEM_ALIGN(i32*) #1

declare dso_local i32 @LWP_SemInit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
