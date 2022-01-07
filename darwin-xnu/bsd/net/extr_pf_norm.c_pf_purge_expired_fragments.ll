; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_purge_expired_fragments.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_purge_expired_fragments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }
%struct.pf_fragment = type { i64, i32, i32, i32 }

@pf_default_rule = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PFTM_FRAG = common dso_local global i64 0, align 8
@pf_fragqueue = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"expiring IPv4 %d(0x%llx) from queue.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"expiring IPv6 %d(0x%llx) from queue.\0A\00", align 1
@pf_cachequeue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"expiring IPv4 %d(0x%llx) from cache.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"expiring IPv6 %d(0x%llx) from cache.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_purge_expired_fragments() #0 {
  %1 = alloca %struct.pf_fragment*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @pf_time_second()
  %4 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pf_default_rule, i32 0, i32 0), align 8
  %5 = load i64, i64* @PFTM_FRAG, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %3, %7
  store i64 %8, i64* %2, align 8
  br label %9

9:                                                ; preds = %49, %0
  %10 = load i32, i32* @pf_fragqueue, align 4
  %11 = call %struct.pf_fragment* @TAILQ_LAST(i32* @pf_fragqueue, i32 %10)
  store %struct.pf_fragment* %11, %struct.pf_fragment** %1, align 8
  %12 = icmp ne %struct.pf_fragment* %11, null
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %15 = call i32 @BUFFER_FRAGMENTS(%struct.pf_fragment* %14)
  %16 = call i32 @VERIFY(i32 %15)
  %17 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %18 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %52

23:                                               ; preds = %13
  %24 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %25 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %47 [
    i32 129, label %27
    i32 128, label %37
  ]

27:                                               ; preds = %23
  %28 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %29 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ntohs(i32 %30)
  %32 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %33 = call i32 @VM_KERNEL_ADDRPERM(%struct.pf_fragment* %32)
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @DPFPRINTF(i8* %35)
  br label %49

37:                                               ; preds = %23
  %38 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %39 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohl(i32 %40)
  %42 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %43 = call i32 @VM_KERNEL_ADDRPERM(%struct.pf_fragment* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @DPFPRINTF(i8* %45)
  br label %49

47:                                               ; preds = %23
  %48 = call i32 @VERIFY(i32 0)
  br label %49

49:                                               ; preds = %47, %37, %27
  %50 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %51 = call i32 @pf_free_fragment(%struct.pf_fragment* %50)
  br label %9

52:                                               ; preds = %22, %9
  br label %53

53:                                               ; preds = %106, %52
  %54 = load i32, i32* @pf_cachequeue, align 4
  %55 = call %struct.pf_fragment* @TAILQ_LAST(i32* @pf_cachequeue, i32 %54)
  store %struct.pf_fragment* %55, %struct.pf_fragment** %1, align 8
  %56 = icmp ne %struct.pf_fragment* %55, null
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %59 = call i32 @BUFFER_FRAGMENTS(%struct.pf_fragment* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @VERIFY(i32 %62)
  %64 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %65 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %2, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %110

70:                                               ; preds = %57
  %71 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %72 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %94 [
    i32 129, label %74
    i32 128, label %84
  ]

74:                                               ; preds = %70
  %75 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %76 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ntohs(i32 %77)
  %79 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %80 = call i32 @VM_KERNEL_ADDRPERM(%struct.pf_fragment* %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @DPFPRINTF(i8* %82)
  br label %96

84:                                               ; preds = %70
  %85 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %86 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  %89 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %90 = call i32 @VM_KERNEL_ADDRPERM(%struct.pf_fragment* %89)
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = call i32 @DPFPRINTF(i8* %92)
  br label %96

94:                                               ; preds = %70
  %95 = call i32 @VERIFY(i32 0)
  br label %96

96:                                               ; preds = %94, %84, %74
  %97 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %98 = call i32 @pf_free_fragment(%struct.pf_fragment* %97)
  %99 = call i64 @TAILQ_EMPTY(i32* @pf_cachequeue)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @pf_cachequeue, align 4
  %103 = call %struct.pf_fragment* @TAILQ_LAST(i32* @pf_cachequeue, i32 %102)
  %104 = load %struct.pf_fragment*, %struct.pf_fragment** %1, align 8
  %105 = icmp ne %struct.pf_fragment* %103, %104
  br label %106

106:                                              ; preds = %101, %96
  %107 = phi i1 [ true, %96 ], [ %105, %101 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @VERIFY(i32 %108)
  br label %53

110:                                              ; preds = %69, %53
  ret void
}

declare dso_local i64 @pf_time_second(...) #1

declare dso_local %struct.pf_fragment* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @BUFFER_FRAGMENTS(%struct.pf_fragment*) #1

declare dso_local i32 @DPFPRINTF(i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(%struct.pf_fragment*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pf_free_fragment(%struct.pf_fragment*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
