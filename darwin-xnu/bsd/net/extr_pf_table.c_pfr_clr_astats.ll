; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clr_astats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_clr_astats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32 }
%struct.pfr_kentryworkq = type { i32 }
%struct.pfr_kentry = type { i32 }
%struct.pfr_addr = type { i32 }

@PFR_FLAG_ATOMIC = common dso_local global i32 0, align 4
@PFR_FLAG_DUMMY = common dso_local global i32 0, align 4
@PFR_FLAG_FEEDBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PFR_FB_CLEARED = common dso_local global i32 0, align 4
@PFR_FB_NONE = common dso_local global i32 0, align 4
@pfrke_workq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_clr_astats(%struct.pfr_table* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_kentryworkq, align 4
  %14 = alloca %struct.pfr_kentry*, align 8
  %15 = alloca %struct.pfr_addr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PFR_FLAG_ATOMIC, align 4
  %23 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ACCEPT_FLAGS(i32 %21, i32 %26)
  %28 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %29 = call i64 @pfr_validate_table(%struct.pfr_table* %28, i32 0, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %135

33:                                               ; preds = %5
  %34 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %35 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %34)
  store %struct.pfr_ktable* %35, %struct.pfr_ktable** %12, align 8
  %36 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %37 = icmp eq %struct.pfr_ktable* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %40 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* @ESRCH, align 4
  store i32 %46, i32* %6, align 4
  br label %135

47:                                               ; preds = %38
  %48 = call i32 @SLIST_INIT(%struct.pfr_kentryworkq* %13)
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %102, %47
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @COPYIN(i32 %54, %struct.pfr_addr* %15, i32 4, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EFAULT, align 4
  %60 = call i32 @senderr(i32 %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = call i64 @pfr_validate_addr(%struct.pfr_addr* %15)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = call i32 @senderr(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %69 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %68, %struct.pfr_addr* %15, i32 1)
  store %struct.pfr_kentry* %69, %struct.pfr_kentry** %14, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %67
  %75 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %76 = icmp ne %struct.pfr_kentry* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @PFR_FB_CLEARED, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @PFR_FB_NONE, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  %83 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %15, i32 0, i32 0
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @COPYOUT(%struct.pfr_addr* %15, i32 %84, i32 4, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @EFAULT, align 4
  %90 = call i32 @senderr(i32 %89)
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %67
  %93 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %94 = icmp ne %struct.pfr_kentry* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %97 = load i32, i32* @pfrke_workq, align 4
  %98 = call i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq* %13, %struct.pfr_kentry* %96, i32 %97)
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %95, %92
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 4
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %16, align 4
  br label %49

109:                                              ; preds = %49
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @PFR_FLAG_DUMMY, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq* %13, i32 0, i32 0)
  br label %116

116:                                              ; preds = %114, %109
  %117 = load i32*, i32** %10, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %19, align 4
  %121 = load i32*, i32** %10, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  store i32 0, i32* %6, align 4
  br label %135

123:                                              ; No predecessors!
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @PFR_FLAG_FEEDBACK, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @pfr_reset_feedback(i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %128, %123
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %122, %45, %31
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i32 @SLIST_INIT(%struct.pfr_kentryworkq*) #1

declare dso_local i64 @COPYIN(i32, %struct.pfr_addr*, i32, i32) #1

declare dso_local i32 @senderr(i32) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local i64 @COPYOUT(%struct.pfr_addr*, i32, i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.pfr_kentryworkq*, %struct.pfr_kentry*, i32) #1

declare dso_local i32 @pfr_clstats_kentries(%struct.pfr_kentryworkq*, i32, i32) #1

declare dso_local i32 @pfr_reset_feedback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
