; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_free_fragment.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_norm.c_pf_free_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_fragment = type { i32, i32 }
%struct.pf_frent = type { i64, i64, i32 }
%struct.pf_frcache = type { i64, i64, i32 }

@fr_next = common dso_local global i32 0, align 4
@pf_frent_pl = common dso_local global i32 0, align 4
@pf_nfrents = common dso_local global i32 0, align 4
@pf_cent_pl = common dso_local global i32 0, align 4
@pf_ncache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_fragment*)* @pf_free_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_free_fragment(%struct.pf_fragment* %0) #0 {
  %2 = alloca %struct.pf_fragment*, align 8
  %3 = alloca %struct.pf_frent*, align 8
  %4 = alloca %struct.pf_frcache*, align 8
  store %struct.pf_fragment* %0, %struct.pf_fragment** %2, align 8
  %5 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %6 = call i64 @BUFFER_FRAGMENTS(%struct.pf_fragment* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %10 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %9, i32 0, i32 1
  %11 = call %struct.pf_frent* @LIST_FIRST(i32* %10)
  store %struct.pf_frent* %11, %struct.pf_frent** %3, align 8
  br label %12

12:                                               ; preds = %27, %8
  %13 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %14 = icmp ne %struct.pf_frent* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %17 = load i32, i32* @fr_next, align 4
  %18 = call i32 @LIST_REMOVE(%struct.pf_frent* %16, i32 %17)
  %19 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %20 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @m_freem(i32 %21)
  %23 = load %struct.pf_frent*, %struct.pf_frent** %3, align 8
  %24 = call i32 @pool_put(i32* @pf_frent_pl, %struct.pf_frent* %23)
  %25 = load i32, i32* @pf_nfrents, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @pf_nfrents, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %29 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %28, i32 0, i32 1
  %30 = call %struct.pf_frent* @LIST_FIRST(i32* %29)
  store %struct.pf_frent* %30, %struct.pf_frent** %3, align 8
  br label %12

31:                                               ; preds = %12
  br label %74

32:                                               ; preds = %1
  %33 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %34 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %33, i32 0, i32 0
  %35 = call %struct.pf_frent* @LIST_FIRST(i32* %34)
  %36 = bitcast %struct.pf_frent* %35 to %struct.pf_frcache*
  store %struct.pf_frcache* %36, %struct.pf_frcache** %4, align 8
  br label %37

37:                                               ; preds = %68, %32
  %38 = load %struct.pf_frcache*, %struct.pf_frcache** %4, align 8
  %39 = icmp ne %struct.pf_frcache* %38, null
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = load %struct.pf_frcache*, %struct.pf_frcache** %4, align 8
  %42 = bitcast %struct.pf_frcache* %41 to %struct.pf_frent*
  %43 = load i32, i32* @fr_next, align 4
  %44 = call i32 @LIST_REMOVE(%struct.pf_frent* %42, i32 %43)
  %45 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %46 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %45, i32 0, i32 0
  %47 = call i64 @LIST_EMPTY(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %40
  %50 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %51 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %50, i32 0, i32 0
  %52 = call %struct.pf_frent* @LIST_FIRST(i32* %51)
  %53 = getelementptr inbounds %struct.pf_frent, %struct.pf_frent* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pf_frcache*, %struct.pf_frcache** %4, align 8
  %56 = getelementptr inbounds %struct.pf_frcache, %struct.pf_frcache* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br label %59

59:                                               ; preds = %49, %40
  %60 = phi i1 [ true, %40 ], [ %58, %49 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load %struct.pf_frcache*, %struct.pf_frcache** %4, align 8
  %64 = bitcast %struct.pf_frcache* %63 to %struct.pf_frent*
  %65 = call i32 @pool_put(i32* @pf_cent_pl, %struct.pf_frent* %64)
  %66 = load i32, i32* @pf_ncache, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* @pf_ncache, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %70 = getelementptr inbounds %struct.pf_fragment, %struct.pf_fragment* %69, i32 0, i32 0
  %71 = call %struct.pf_frent* @LIST_FIRST(i32* %70)
  %72 = bitcast %struct.pf_frent* %71 to %struct.pf_frcache*
  store %struct.pf_frcache* %72, %struct.pf_frcache** %4, align 8
  br label %37

73:                                               ; preds = %37
  br label %74

74:                                               ; preds = %73, %31
  %75 = load %struct.pf_fragment*, %struct.pf_fragment** %2, align 8
  %76 = call i32 @pf_remove_fragment(%struct.pf_fragment* %75)
  ret void
}

declare dso_local i64 @BUFFER_FRAGMENTS(%struct.pf_fragment*) #1

declare dso_local %struct.pf_frent* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.pf_frent*, i32) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_frent*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @pf_remove_fragment(%struct.pf_fragment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
