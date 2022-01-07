; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_setflags_ktable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_setflags_ktable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i32, %struct.pfr_ktable*, i64, %struct.pfr_ktable*, i32* }
%struct.pfr_kentryworkq = type { i32 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFR_TFLAG_REFERENCED = common dso_local global i32 0, align 4
@PFR_TFLAG_PERSIST = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@PFR_TFLAG_USRMASK = common dso_local global i32 0, align 4
@PFR_TFLAG_SETMASK = common dso_local global i32 0, align 4
@pfr_ktablehead = common dso_local global i32 0, align 4
@pfr_ktables = common dso_local global i32 0, align 4
@PFR_REFCNT_ANCHOR = common dso_local global i64 0, align 8
@PFR_TFLAG_REFDANCHOR = common dso_local global i32 0, align 4
@pfr_ktable_cnt = common dso_local global i32 0, align 4
@PFR_TFLAG_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfr_ktable*, i32)* @pfr_setflags_ktable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_setflags_ktable(%struct.pfr_ktable* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_ktable*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pfr_kentryworkq, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @pf_lock, align 4
  %7 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %8 = call i32 @LCK_MTX_ASSERT(i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PFR_TFLAG_REFERENCED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PFR_TFLAG_PERSIST, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %13, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @PFR_TFLAG_USRMASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PFR_TFLAG_SETMASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %75, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @pfr_ktablehead, align 4
  %40 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %41 = call i32 @RB_REMOVE(i32 %39, i32* @pfr_ktables, %struct.pfr_ktable* %40)
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 3
  %44 = load %struct.pfr_ktable*, %struct.pfr_ktable** %43, align 8
  %45 = icmp ne %struct.pfr_ktable* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %38
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %48 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %47, i32 0, i32 3
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %48, align 8
  %50 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @PFR_REFCNT_ANCHOR, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %46
  %58 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %59 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %58, i32 0, i32 3
  %60 = load %struct.pfr_ktable*, %struct.pfr_ktable** %59, align 8
  %61 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %62 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %61, i32 0, i32 3
  %63 = load %struct.pfr_ktable*, %struct.pfr_ktable** %62, align 8
  %64 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PFR_TFLAG_REFDANCHOR, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  call void @pfr_setflags_ktable(%struct.pfr_ktable* %60, i32 %68)
  br label %69

69:                                               ; preds = %57, %46
  br label %70

70:                                               ; preds = %69, %38
  %71 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %72 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %71, i32 1)
  %73 = load i32, i32* @pfr_ktable_cnt, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* @pfr_ktable_cnt, align 4
  br label %111

75:                                               ; preds = %33
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %82 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %87 = call i32 @pfr_enqueue_addrs(%struct.pfr_ktable* %86, %struct.pfr_kentryworkq* %5, i32* null, i32 0)
  %88 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %89 = call i32 @pfr_remove_kentries(%struct.pfr_ktable* %88, %struct.pfr_kentryworkq* %5)
  br label %90

90:                                               ; preds = %85, %80, %75
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @PFR_TFLAG_INACTIVE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %97 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %96, i32 0, i32 1
  %98 = load %struct.pfr_ktable*, %struct.pfr_ktable** %97, align 8
  %99 = icmp ne %struct.pfr_ktable* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %102 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %101, i32 0, i32 1
  %103 = load %struct.pfr_ktable*, %struct.pfr_ktable** %102, align 8
  %104 = call i32 @pfr_destroy_ktable(%struct.pfr_ktable* %103, i32 1)
  %105 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %106 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %105, i32 0, i32 1
  store %struct.pfr_ktable* null, %struct.pfr_ktable** %106, align 8
  br label %107

107:                                              ; preds = %100, %95, %90
  %108 = load i32, i32* %4, align 4
  %109 = load %struct.pfr_ktable*, %struct.pfr_ktable** %3, align 8
  %110 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %70
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.pfr_ktable*) #1

declare dso_local i32 @pfr_destroy_ktable(%struct.pfr_ktable*, i32) #1

declare dso_local i32 @pfr_enqueue_addrs(%struct.pfr_ktable*, %struct.pfr_kentryworkq*, i32*, i32) #1

declare dso_local i32 @pfr_remove_kentries(%struct.pfr_ktable*, %struct.pfr_kentryworkq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
