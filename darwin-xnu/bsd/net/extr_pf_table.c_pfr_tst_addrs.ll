; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_tst_addrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_tst_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_ktable = type { i32 }
%struct.pfr_kentry = type { i64 }
%struct.pfr_addr = type { i32 }

@PFR_FLAG_REPLACE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@PFR_FB_NONE = common dso_local global i32 0, align 4
@PFR_FB_NOTMATCH = common dso_local global i32 0, align 4
@PFR_FB_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_tst_addrs(%struct.pfr_table* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfr_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pfr_ktable*, align 8
  %13 = alloca %struct.pfr_kentry*, align 8
  %14 = alloca %struct.pfr_addr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.pfr_table* %0, %struct.pfr_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @PFR_FLAG_REPLACE, align 4
  %19 = call i32 @ACCEPT_FLAGS(i32 %17, i32 %18)
  %20 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %21 = call i64 @pfr_validate_table(%struct.pfr_table* %20, i32 0, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %122

25:                                               ; preds = %5
  %26 = load %struct.pfr_table*, %struct.pfr_table** %7, align 8
  %27 = call %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table* %26)
  store %struct.pfr_ktable* %27, %struct.pfr_ktable** %12, align 8
  %28 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %29 = icmp eq %struct.pfr_ktable* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %32 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* @ESRCH, align 4
  store i32 %38, i32* %6, align 4
  br label %122

39:                                               ; preds = %30
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %108, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %115

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @COPYIN(i32 %45, %struct.pfr_addr* %14, i32 4, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EFAULT, align 4
  store i32 %50, i32* %6, align 4
  br label %122

51:                                               ; preds = %44
  %52 = call i64 @pfr_validate_addr(%struct.pfr_addr* %14)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %6, align 4
  br label %122

56:                                               ; preds = %51
  %57 = call i64 @ADDR_NETWORK(%struct.pfr_addr* %14)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %6, align 4
  br label %122

61:                                               ; preds = %56
  %62 = load %struct.pfr_ktable*, %struct.pfr_ktable** %12, align 8
  %63 = call %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable* %62, %struct.pfr_addr* %14, i32 0)
  store %struct.pfr_kentry* %63, %struct.pfr_kentry** %13, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @PFR_FLAG_REPLACE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %70 = call i32 @pfr_copyout_addr(%struct.pfr_addr* %14, %struct.pfr_kentry* %69)
  br label %71

71:                                               ; preds = %68, %61
  %72 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %73 = icmp eq %struct.pfr_kentry* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @PFR_FB_NONE, align 4
  br label %87

76:                                               ; preds = %71
  %77 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %78 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @PFR_FB_NOTMATCH, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @PFR_FB_MATCH, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  br label %87

87:                                               ; preds = %85, %74
  %88 = phi i32 [ %75, %74 ], [ %86, %85 ]
  %89 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %14, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %91 = icmp ne %struct.pfr_kentry* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load %struct.pfr_kentry*, %struct.pfr_kentry** %13, align 8
  %94 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %92, %87
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @COPYOUT(%struct.pfr_addr* %14, i32 %101, i32 4, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @EFAULT, align 4
  store i32 %106, i32* %6, align 4
  br label %122

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 4
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %8, align 4
  br label %40

115:                                              ; preds = %40
  %116 = load i32*, i32** %10, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %10, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %105, %59, %54, %49, %37, %23
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @ACCEPT_FLAGS(i32, i32) #1

declare dso_local i64 @pfr_validate_table(%struct.pfr_table*, i32, i32) #1

declare dso_local %struct.pfr_ktable* @pfr_lookup_table(%struct.pfr_table*) #1

declare dso_local i64 @COPYIN(i32, %struct.pfr_addr*, i32, i32) #1

declare dso_local i64 @pfr_validate_addr(%struct.pfr_addr*) #1

declare dso_local i64 @ADDR_NETWORK(%struct.pfr_addr*) #1

declare dso_local %struct.pfr_kentry* @pfr_lookup_addr(%struct.pfr_ktable*, %struct.pfr_addr*, i32) #1

declare dso_local i32 @pfr_copyout_addr(%struct.pfr_addr*, %struct.pfr_kentry*) #1

declare dso_local i64 @COPYOUT(%struct.pfr_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
