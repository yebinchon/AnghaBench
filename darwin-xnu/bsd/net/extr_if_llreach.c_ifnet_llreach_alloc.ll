; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_llreach = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.ifnet*, i32, i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.ifnet = type { i32, i32 }
%struct.timeval = type { i32 }

@IF_LLREACH_MAXLEN = common dso_local global i32 0, align 4
@ll_reach_tree = common dso_local global i32 0, align 4
@LCK_RW_ASSERT_EXCLUSIVE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@IFD_ATTACHED = common dso_local global i32 0, align 4
@IFNET_RSSI_UNKNOWN = common dso_local global i32 0, align 4
@IFNET_LQM_THRESH_UNKNOWN = common dso_local global i32 0, align 4
@IFNET_NPM_THRESH_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.if_llreach* @ifnet_llreach_alloc(%struct.ifnet* %0, i8* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.if_llreach*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.if_llreach, align 8
  %13 = alloca %struct.if_llreach*, align 8
  %14 = alloca %struct.timeval, align 4
  store %struct.ifnet* %0, %struct.ifnet** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store %struct.if_llreach* null, %struct.if_llreach** %6, align 8
  br label %181

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @VERIFY(i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %12, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %12, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %31 = call i32 @bcopy(i8* %27, i32* %29, i32 %30)
  %32 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = call i32 @lck_rw_lock_shared(i32* %33)
  %35 = load i32, i32* @ll_reach_tree, align 4
  %36 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = call %struct.if_llreach* @RB_FIND(i32 %35, i32* %37, %struct.if_llreach* %12)
  store %struct.if_llreach* %38, %struct.if_llreach** %13, align 8
  %39 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %40 = icmp ne %struct.if_llreach* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %92, %41
  %43 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %44 = call i32 @IFLR_LOCK(%struct.if_llreach* %43)
  %45 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %46 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @VERIFY(i32 %49)
  %51 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %52 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %56 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @VERIFY(i32 %59)
  %61 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %62 = call i32 @IFLR_ADDREF_LOCKED(%struct.if_llreach* %61)
  %63 = call i8* (...) @net_uptime()
  %64 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %65 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %67 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %66)
  %68 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %69 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %68, i32 0, i32 0
  %70 = call i32 @lck_rw_done(i32* %69)
  %71 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  store %struct.if_llreach* %71, %struct.if_llreach** %6, align 8
  br label %181

72:                                               ; preds = %18
  %73 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = call i32 @lck_rw_lock_shared_to_exclusive(i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %79 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %78, i32 0, i32 0
  %80 = call i32 @lck_rw_lock_exclusive(i32* %79)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %83 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %82, i32 0, i32 0
  %84 = load i32, i32* @LCK_RW_ASSERT_EXCLUSIVE, align 4
  %85 = call i32 @LCK_RW_ASSERT(i32* %83, i32 %84)
  %86 = load i32, i32* @ll_reach_tree, align 4
  %87 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %88 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %87, i32 0, i32 1
  %89 = call %struct.if_llreach* @RB_FIND(i32 %86, i32* %88, %struct.if_llreach* %12)
  store %struct.if_llreach* %89, %struct.if_llreach** %13, align 8
  %90 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %91 = icmp ne %struct.if_llreach* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %42

93:                                               ; preds = %81
  %94 = load i32, i32* @M_WAITOK, align 4
  %95 = call %struct.if_llreach* @iflr_alloc(i32 %94)
  store %struct.if_llreach* %95, %struct.if_llreach** %13, align 8
  %96 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %97 = icmp eq %struct.if_llreach* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %100 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %99, i32 0, i32 0
  %101 = call i32 @lck_rw_done(i32* %100)
  store %struct.if_llreach* null, %struct.if_llreach** %6, align 8
  br label %181

102:                                              ; preds = %93
  %103 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %104 = call i32 @IFLR_LOCK(%struct.if_llreach* %103)
  %105 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %106 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %110 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  %113 = zext i1 %112 to i32
  %114 = call i32 @VERIFY(i32 %113)
  %115 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %116 = call i32 @IFLR_ADDREF_LOCKED(%struct.if_llreach* %115)
  %117 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %118 = call i32 @IFLR_ADDREF_LOCKED(%struct.if_llreach* %117)
  %119 = call i8* (...) @net_uptime()
  %120 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %121 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %120, i32 0, i32 10
  store i8* %119, i8** %121, align 8
  %122 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %123 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %122, i32 0, i32 10
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %126 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %125, i32 0, i32 11
  store i8* %124, i8** %126, align 8
  %127 = call i32 @getmicrotime(%struct.timeval* %14)
  %128 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %131 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %130, i32 0, i32 9
  store i32 %129, i32* %131, align 8
  %132 = load i64, i64* %11, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %135 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %137 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 1000
  %140 = call i32 @LL_COMPUTE_RTIME(i32 %139)
  %141 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %142 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %141, i32 0, i32 8
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @IFD_ATTACHED, align 4
  %144 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %145 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %149 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %150 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %149, i32 0, i32 6
  store %struct.ifnet* %148, %struct.ifnet** %150, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %153 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %152, i32 0, i32 5
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i8* %151, i8** %154, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %157 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %160 = call i32 @bcopy(i8* %155, i32* %158, i32 %159)
  %161 = load i32, i32* @IFNET_RSSI_UNKNOWN, align 4
  %162 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %163 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @IFNET_LQM_THRESH_UNKNOWN, align 4
  %165 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %166 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @IFNET_NPM_THRESH_UNKNOWN, align 4
  %168 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %169 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @ll_reach_tree, align 4
  %171 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 1
  %173 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %174 = call i32 @RB_INSERT(i32 %170, i32* %172, %struct.if_llreach* %173)
  %175 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  %176 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %175)
  %177 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 0
  %179 = call i32 @lck_rw_done(i32* %178)
  %180 = load %struct.if_llreach*, %struct.if_llreach** %13, align 8
  store %struct.if_llreach* %180, %struct.if_llreach** %6, align 8
  br label %181

181:                                              ; preds = %102, %98, %42, %17
  %182 = load %struct.if_llreach*, %struct.if_llreach** %6, align 8
  ret %struct.if_llreach* %182
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local %struct.if_llreach* @RB_FIND(i32, i32*, %struct.if_llreach*) #1

declare dso_local i32 @IFLR_LOCK(%struct.if_llreach*) #1

declare dso_local i32 @IFLR_ADDREF_LOCKED(%struct.if_llreach*) #1

declare dso_local i8* @net_uptime(...) #1

declare dso_local i32 @IFLR_UNLOCK(%struct.if_llreach*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @lck_rw_lock_shared_to_exclusive(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local i32 @LCK_RW_ASSERT(i32*, i32) #1

declare dso_local %struct.if_llreach* @iflr_alloc(i32) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @LL_COMPUTE_RTIME(i32) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.if_llreach*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
