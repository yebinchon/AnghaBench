; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_check_enables.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_check_enables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_QUIET = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@SYSPROTO_CONTROL = common dso_local global i32 0, align 4
@g_OPT_ENABLE_NETIF = common dso_local global i32 0, align 4
@g_OPT_ENABLE_FLOWSWITCH = common dso_local global i32 0, align 4
@SK_FEATURE_NETNS = common dso_local global i32 0, align 4
@g_OPT_ENABLE_CHANNEL = common dso_local global i32 0, align 4
@g_is_ipsec_test = common dso_local global i64 0, align 8
@g_OPT_GET_CHANNEL_UUID = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*)* @check_enables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_enables(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %14, align 8
  store i32* %18, i32** %10, align 8
  br label %19

19:                                               ; preds = %17, %5
  store i32 4, i32* %12, align 4
  %20 = load i32, i32* @T_QUIET, align 4
  %21 = load i32, i32* @T_WITH_ERRNO, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %24 = load i32, i32* @g_OPT_ENABLE_NETIF, align 4
  %25 = call i32 @getsockopt(i32 %22, i32 %23, i32 %24, i32* %11, i32* %12)
  %26 = call i32 @T_EXPECT_POSIX_ZERO(i32 %25, i32* null)
  %27 = load i32, i32* @T_QUIET, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @T_EXPECT_EQ_ULONG(i64 %29, i32 4, i32* null)
  %31 = load i32, i32* @T_QUIET, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @T_EXPECT_EQ(i32 %32, i32 %33, i32* null)
  store i32 4, i32* %12, align 4
  %35 = load i32, i32* @T_QUIET, align 4
  %36 = load i32, i32* @T_WITH_ERRNO, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %39 = load i32, i32* @g_OPT_ENABLE_FLOWSWITCH, align 4
  %40 = call i32 @getsockopt(i32 %37, i32 %38, i32 %39, i32* %11, i32* %12)
  %41 = call i32 @T_EXPECT_POSIX_ZERO(i32 %40, i32* null)
  %42 = load i32, i32* @T_QUIET, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @T_EXPECT_EQ_ULONG(i64 %44, i32 4, i32* null)
  %46 = call i32 (...) @get_skywalk_features()
  %47 = load i32, i32* @SK_FEATURE_NETNS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %19
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @T_QUIET, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @T_EXPECT_EQ(i32 %55, i32 %56, i32* null)
  br label %62

58:                                               ; preds = %50
  %59 = load i32, i32* @T_QUIET, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @T_EXPECT_EQ(i32 %60, i32 0, i32* null)
  br label %62

62:                                               ; preds = %58, %53
  br label %67

63:                                               ; preds = %19
  %64 = load i32, i32* @T_QUIET, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @T_EXPECT_EQ(i32 %65, i32 0, i32* null)
  br label %67

67:                                               ; preds = %63, %62
  store i32 4, i32* %12, align 4
  %68 = load i32, i32* @T_QUIET, align 4
  %69 = load i32, i32* @T_WITH_ERRNO, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %72 = load i32, i32* @g_OPT_ENABLE_CHANNEL, align 4
  %73 = call i32 @getsockopt(i32 %70, i32 %71, i32 %72, i32* %11, i32* %12)
  %74 = call i32 @T_EXPECT_POSIX_ZERO(i32 %73, i32* null)
  %75 = load i32, i32* @T_QUIET, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = call i32 @T_EXPECT_EQ_ULONG(i64 %77, i32 4, i32* null)
  %79 = load i64, i64* @g_is_ipsec_test, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %67
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @T_QUIET, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @T_EXPECT_EQ(i32 %86, i32 0, i32* null)
  br label %93

88:                                               ; preds = %81, %67
  %89 = load i32, i32* @T_QUIET, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @T_EXPECT_EQ(i32 %90, i32 %91, i32* null)
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %93
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @uuid_clear(i32* %97)
  store i32 8, i32* %13, align 4
  %99 = load i32, i32* @T_QUIET, align 4
  %100 = load i32, i32* @T_WITH_ERRNO, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %103 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @getsockopt(i32 %101, i32 %102, i32 %103, i32* %104, i32* %13)
  %106 = call i32 @T_EXPECT_POSIX_ZERO(i32 %105, i32* null)
  %107 = load i32, i32* @T_QUIET, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = call i32 @T_EXPECT_EQ_ULONG(i64 %109, i32 8, i32* null)
  %111 = load i32, i32* @T_QUIET, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @uuid_is_null(i32* %112)
  %114 = call i32 @T_EXPECT_FALSE(i32 %113, i32* null)
  br label %134

115:                                              ; preds = %93
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @uuid_clear(i32* %116)
  store i32 8, i32* %13, align 4
  %118 = load i32, i32* @T_QUIET, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %121 = load i32, i32* @g_OPT_GET_CHANNEL_UUID, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = call i32 @getsockopt(i32 %119, i32 %120, i32 %121, i32* %122, i32* %13)
  %124 = load i32, i32* @ENXIO, align 4
  %125 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %123, i32 %124, i32* null)
  %126 = load i32, i32* @T_QUIET, align 4
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = call i32 @T_EXPECT_EQ_ULONG(i64 %128, i32 8, i32* null)
  %130 = load i32, i32* @T_QUIET, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @uuid_is_null(i32* %131)
  %133 = call i32 @T_EXPECT_TRUE(i32 %132, i32* null)
  br label %134

134:                                              ; preds = %115, %96
  ret void
}

declare dso_local i32 @T_EXPECT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @T_EXPECT_EQ_ULONG(i64, i32, i32*) #1

declare dso_local i32 @T_EXPECT_EQ(i32, i32, i32*) #1

declare dso_local i32 @get_skywalk_features(...) #1

declare dso_local i32 @uuid_clear(i32*) #1

declare dso_local i32 @T_EXPECT_FALSE(i32, i32*) #1

declare dso_local i32 @uuid_is_null(i32*) #1

declare dso_local i32 @T_EXPECT_POSIX_FAILURE(i32, i32, i32*) #1

declare dso_local i32 @T_EXPECT_TRUE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
