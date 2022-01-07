; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_free_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_free_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { %struct.pf_state*, %struct.pf_state* }
%struct.pf_state = type { i64, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_7__ = type { %struct.TYPE_12__* }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PFTM_UNLINKED = common dso_local global i64 0, align 8
@PFI_KIF_REF_STATE = common dso_local global i32 0, align 4
@state_list = common dso_local global i32 0, align 4
@entry_list = common dso_local global i32 0, align 4
@pf_state_pl = common dso_local global i32 0, align 4
@pf_status = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FCNT_STATE_REMOVALS = common dso_local global i64 0, align 8
@pfsyncif = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_free_state(%struct.pf_state* %0) #0 {
  %2 = alloca %struct.pf_state*, align 8
  store %struct.pf_state* %0, %struct.pf_state** %2, align 8
  %3 = load i32, i32* @pf_lock, align 4
  %4 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %5 = call i32 @LCK_MTX_ASSERT(i32 %3, i32 %4)
  %6 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %7 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PFTM_UNLINKED, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %14 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @VERIFY(i32 %20)
  %22 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %23 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %1
  %31 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %32 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %40 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i32 @pf_rm_rule(i32* null, %struct.TYPE_12__* %42)
  br label %44

44:                                               ; preds = %38, %30, %1
  %45 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %46 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %52 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  %60 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %61 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %50
  %69 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %70 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %78 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = call i32 @pf_rm_rule(i32* null, %struct.TYPE_12__* %80)
  br label %82

82:                                               ; preds = %76, %68, %50
  br label %83

83:                                               ; preds = %82, %44
  %84 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %85 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = icmp ne %struct.TYPE_12__* %87, null
  br i1 %88, label %89, label %114

89:                                               ; preds = %83
  %90 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %91 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %100 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, -1
  store i64 %105, i64* %103, align 8
  %106 = icmp sle i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %89
  %108 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %109 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = call i32 @pf_rm_rule(i32* null, %struct.TYPE_12__* %111)
  br label %113

113:                                              ; preds = %107, %89
  br label %114

114:                                              ; preds = %113, %83
  %115 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %116 = call i32 @pf_normalize_tcp_cleanup(%struct.pf_state* %115)
  %117 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %118 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PFI_KIF_REF_STATE, align 4
  %121 = call i32 @pfi_kif_unref(i32 %119, i32 %120)
  %122 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %123 = load i32, i32* @entry_list, align 4
  %124 = call i32 @TAILQ_REMOVE(i32* @state_list, %struct.pf_state* %122, i32 %123)
  %125 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %126 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %114
  %130 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %131 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @pf_tag_unref(i64 %132)
  br label %134

134:                                              ; preds = %129, %114
  %135 = load %struct.pf_state*, %struct.pf_state** %2, align 8
  %136 = call i32 @pool_put(i32* @pf_state_pl, %struct.pf_state* %135)
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pf_status, i32 0, i32 1), align 8
  %138 = load i64, i64* @FCNT_STATE_REMOVALS, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pf_status, i32 0, i32 0), align 8
  %143 = icmp sgt i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @VERIFY(i32 %144)
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pf_status, i32 0, i32 0), align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @pf_status, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @pf_rm_rule(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @pf_normalize_tcp_cleanup(%struct.pf_state*) #1

declare dso_local i32 @pfi_kif_unref(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pf_state*, i32) #1

declare dso_local i32 @pf_tag_unref(i64) #1

declare dso_local i32 @pool_put(i32*, %struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
