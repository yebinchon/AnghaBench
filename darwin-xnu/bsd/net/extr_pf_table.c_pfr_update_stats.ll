; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_update_stats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pfr_ktable = type { i32, i32**, i32**, i32, i32, %struct.pfr_ktable* }
%struct.pf_addr = type { i32* }
%struct.pfr_kentry = type { i32**, i32**, i64 }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@PFR_OP_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pfr_update_stats: assertion failed.\0A\00", align 1
@PFR_OP_XPASS = common dso_local global i32 0, align 4
@pfr_sin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@pfr_sin6 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfr_update_stats(%struct.pfr_ktable* %0, %struct.pf_addr* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.pfr_ktable*, align 8
  %9 = alloca %struct.pf_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.pfr_kentry*, align 8
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %8, align 8
  store %struct.pf_addr* %1, %struct.pf_addr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %15, align 8
  %16 = load i32, i32* @pf_lock, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  %19 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %20 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %7
  %26 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %27 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %26, i32 0, i32 5
  %28 = load %struct.pfr_ktable*, %struct.pfr_ktable** %27, align 8
  %29 = icmp ne %struct.pfr_ktable* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %32 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %31, i32 0, i32 5
  %33 = load %struct.pfr_ktable*, %struct.pfr_ktable** %32, align 8
  store %struct.pfr_ktable* %33, %struct.pfr_ktable** %8, align 8
  br label %34

34:                                               ; preds = %30, %25, %7
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %36 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %128

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  switch i32 %43, label %44 [
  ]

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %47 = icmp eq %struct.pfr_kentry* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %50 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %48, %45
  %54 = phi i1 [ true, %45 ], [ %52, %48 ]
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @PFR_OP_PASS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @PFR_OP_XPASS, align 4
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %64, %53
  %67 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %68 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %81 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %79
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 4
  %94 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %95 = icmp ne %struct.pfr_kentry* %94, null
  br i1 %95, label %96, label %128

96:                                               ; preds = %66
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @PFR_OP_XPASS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %96
  %101 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %102 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %115 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %114, i32 0, i32 0
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %113
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  br label %128

128:                                              ; preds = %41, %100, %96, %66
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
