; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_dq_update_bins.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_dq_update_bins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i64, i32 }
%struct.timespec = type { i32 }
%struct.sfbbinstats = type { i32, i64 }
%struct.sfb_fcl = type { i32 }

@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_FC_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfb*, i64, i64, %struct.timespec*, i64)* @sfb_dq_update_bins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_dq_update_bins(%struct.sfb* %0, i64 %1, i64 %2, %struct.timespec* %3, i64 %4) #0 {
  %6 = alloca %struct.sfb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timespec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sfbbinstats*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sfb_fcl*, align 8
  %16 = alloca i32*, align 8
  store %struct.sfb* %0, %struct.sfb** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.timespec* %3, %struct.timespec** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.sfb_fcl* null, %struct.sfb_fcl** %15, align 8
  %17 = bitcast i64* %7 to i32*
  store i32* %17, i32** %16, align 8
  %18 = load %struct.sfb*, %struct.sfb** %6, align 8
  %19 = getelementptr inbounds %struct.sfb, %struct.sfb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = xor i32 %22, 1
  %24 = add nsw i32 %21, %23
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @VERIFY(i32 %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %146, %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @SFB_LEVELS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SFB_BINMASK(i32 %40)
  store i32 %41, i32* %14, align 4
  br label %50

42:                                               ; preds = %32
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SFB_BINMASK(i32 %48)
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.sfb*, %struct.sfb** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call %struct.sfbbinstats* @SFB_BINST(%struct.sfb* %51, i32 %52, i32 %53, i32 %54)
  store %struct.sfbbinstats* %55, %struct.sfbbinstats** %12, align 8
  %56 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %57 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %62 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp sge i64 %63, %64
  br label %66

66:                                               ; preds = %60, %50
  %67 = phi i1 [ false, %50 ], [ %65, %60 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @VERIFY(i32 %68)
  %70 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %71 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %76 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %80 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %66
  %84 = load %struct.sfb*, %struct.sfb** %6, align 8
  %85 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %86 = load %struct.sfb*, %struct.sfb** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @SFB_BINFT(%struct.sfb* %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.timespec*, %struct.timespec** %9, align 8
  %92 = call i32 @sfb_decrement_bin(%struct.sfb* %84, %struct.sfbbinstats* %85, i32 %90, %struct.timespec* %91)
  br label %93

93:                                               ; preds = %83, %66
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @SFB_FC_LEVEL, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %146

98:                                               ; preds = %93
  %99 = load %struct.sfb*, %struct.sfb** %6, align 8
  %100 = call i64 @SFB_QUEUE_DELAYBASED(%struct.sfb* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load %struct.sfb*, %struct.sfb** %6, align 8
  %104 = call i32 @SFB_IS_DELAYHIGH(%struct.sfb* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %108 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sfb*, %struct.sfb** %6, align 8
  %111 = getelementptr inbounds %struct.sfb, %struct.sfb* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sle i64 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106, %102
  %115 = load %struct.sfb*, %struct.sfb** %6, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call %struct.sfb_fcl* @SFB_FC_LIST(%struct.sfb* %115, i32 %116)
  store %struct.sfb_fcl* %117, %struct.sfb_fcl** %15, align 8
  br label %118

118:                                              ; preds = %114, %106
  br label %133

119:                                              ; preds = %98
  %120 = load %struct.sfbbinstats*, %struct.sfbbinstats** %12, align 8
  %121 = getelementptr inbounds %struct.sfbbinstats, %struct.sfbbinstats* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.sfb*, %struct.sfb** %6, align 8
  %124 = getelementptr inbounds %struct.sfb, %struct.sfb* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = ashr i32 %125, 2
  %127 = icmp sle i32 %122, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = load %struct.sfb*, %struct.sfb** %6, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call %struct.sfb_fcl* @SFB_FC_LIST(%struct.sfb* %129, i32 %130)
  store %struct.sfb_fcl* %131, %struct.sfb_fcl** %15, align 8
  br label %132

132:                                              ; preds = %128, %119
  br label %133

133:                                              ; preds = %132, %118
  %134 = load %struct.sfb_fcl*, %struct.sfb_fcl** %15, align 8
  %135 = icmp ne %struct.sfb_fcl* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %133
  %137 = load %struct.sfb_fcl*, %struct.sfb_fcl** %15, align 8
  %138 = getelementptr inbounds %struct.sfb_fcl, %struct.sfb_fcl* %137, i32 0, i32 0
  %139 = call i32 @STAILQ_EMPTY(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.sfb*, %struct.sfb** %6, align 8
  %143 = load %struct.sfb_fcl*, %struct.sfb_fcl** %15, align 8
  %144 = call i32 @sfb_fclist_append(%struct.sfb* %142, %struct.sfb_fcl* %143)
  br label %145

145:                                              ; preds = %141, %136, %133
  store %struct.sfb_fcl* null, %struct.sfb_fcl** %15, align 8
  br label %146

146:                                              ; preds = %145, %97
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %28

149:                                              ; preds = %28
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @SFB_BINMASK(i32) #1

declare dso_local %struct.sfbbinstats* @SFB_BINST(%struct.sfb*, i32, i32, i32) #1

declare dso_local i32 @sfb_decrement_bin(%struct.sfb*, %struct.sfbbinstats*, i32, %struct.timespec*) #1

declare dso_local i32 @SFB_BINFT(%struct.sfb*, i32, i32, i32) #1

declare dso_local i64 @SFB_QUEUE_DELAYBASED(%struct.sfb*) #1

declare dso_local i32 @SFB_IS_DELAYHIGH(%struct.sfb*) #1

declare dso_local %struct.sfb_fcl* @SFB_FC_LIST(%struct.sfb*, i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @sfb_fclist_append(%struct.sfb*, %struct.sfb_fcl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
