; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_state_other.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_test_state_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state = type { %struct.TYPE_17__*, i32, i32, %struct.pf_state_peer, %struct.pf_state_peer }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_27__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_18__ }
%struct.pf_state_peer = type { i64 }
%struct.pfi_kif = type { i32 }
%struct.pf_pdesc = type { i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, i32 }
%struct.pf_state_key_cmp = type { i32, i32, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_20__, i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_18__ }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_18__ }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i64 }

@PF_IN = common dso_local global i32 0, align 4
@PFOTHERS_SINGLE = common dso_local global i64 0, align 8
@PFOTHERS_MULTIPLE = common dso_local global i64 0, align 8
@PFTM_OTHER_MULTIPLE = common dso_local global i32 0, align 4
@PFTM_OTHER_SINGLE = common dso_local global i32 0, align 4
@PF_OUT = common dso_local global i32 0, align 4
@PF_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pf_state**, i32, %struct.pfi_kif*, %struct.pf_pdesc*)* @pf_test_state_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pf_test_state_other(%struct.pf_state** %0, i32 %1, %struct.pfi_kif* %2, %struct.pf_pdesc* %3) #0 {
  %5 = alloca %struct.pf_state**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pfi_kif*, align 8
  %8 = alloca %struct.pf_pdesc*, align 8
  %9 = alloca %struct.pf_state_peer*, align 8
  %10 = alloca %struct.pf_state_peer*, align 8
  %11 = alloca %struct.pf_state_key_cmp, align 8
  store %struct.pf_state** %0, %struct.pf_state*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pfi_kif* %2, %struct.pfi_kif** %7, align 8
  store %struct.pf_pdesc* %3, %struct.pf_pdesc** %8, align 8
  %12 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %14 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 6
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PF_IN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %4
  %21 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %22 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %28 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %27, i32 0, i32 3
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PF_ACPY(%struct.TYPE_18__* %26, %struct.TYPE_18__* %29, i32 %31)
  %33 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %36 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @PF_ACPY(%struct.TYPE_18__* %34, %struct.TYPE_18__* %37, i32 %39)
  %41 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %74

47:                                               ; preds = %4
  %48 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %49 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 1
  %54 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %55 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %54, i32 0, i32 3
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PF_ACPY(%struct.TYPE_18__* %53, %struct.TYPE_18__* %56, i32 %58)
  %60 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %63 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PF_ACPY(%struct.TYPE_18__* %61, %struct.TYPE_18__* %64, i32 %66)
  %68 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.pf_state_key_cmp, %struct.pf_state_key_cmp* %11, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %47, %20
  %75 = call i32 (...) @STATE_LOOKUP()
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %78 = load %struct.pf_state*, %struct.pf_state** %77, align 8
  %79 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %76, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %74
  %85 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %86 = load %struct.pf_state*, %struct.pf_state** %85, align 8
  %87 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %86, i32 0, i32 3
  store %struct.pf_state_peer* %87, %struct.pf_state_peer** %9, align 8
  %88 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %89 = load %struct.pf_state*, %struct.pf_state** %88, align 8
  %90 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %89, i32 0, i32 4
  store %struct.pf_state_peer* %90, %struct.pf_state_peer** %10, align 8
  br label %98

91:                                               ; preds = %74
  %92 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %93 = load %struct.pf_state*, %struct.pf_state** %92, align 8
  %94 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %93, i32 0, i32 4
  store %struct.pf_state_peer* %94, %struct.pf_state_peer** %9, align 8
  %95 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %96 = load %struct.pf_state*, %struct.pf_state** %95, align 8
  %97 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %96, i32 0, i32 3
  store %struct.pf_state_peer* %97, %struct.pf_state_peer** %10, align 8
  br label %98

98:                                               ; preds = %91, %84
  %99 = load %struct.pf_state_peer*, %struct.pf_state_peer** %9, align 8
  %100 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PFOTHERS_SINGLE, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load i64, i64* @PFOTHERS_SINGLE, align 8
  %106 = load %struct.pf_state_peer*, %struct.pf_state_peer** %9, align 8
  %107 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %98
  %109 = load %struct.pf_state_peer*, %struct.pf_state_peer** %10, align 8
  %110 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PFOTHERS_SINGLE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i64, i64* @PFOTHERS_MULTIPLE, align 8
  %116 = load %struct.pf_state_peer*, %struct.pf_state_peer** %10, align 8
  %117 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %114, %108
  %119 = call i32 (...) @pf_time_second()
  %120 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %121 = load %struct.pf_state*, %struct.pf_state** %120, align 8
  %122 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 4
  %123 = load %struct.pf_state_peer*, %struct.pf_state_peer** %9, align 8
  %124 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PFOTHERS_MULTIPLE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %118
  %129 = load %struct.pf_state_peer*, %struct.pf_state_peer** %10, align 8
  %130 = getelementptr inbounds %struct.pf_state_peer, %struct.pf_state_peer* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PFOTHERS_MULTIPLE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* @PFTM_OTHER_MULTIPLE, align 4
  %136 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %137 = load %struct.pf_state*, %struct.pf_state** %136, align 8
  %138 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 8
  br label %144

139:                                              ; preds = %128, %118
  %140 = load i32, i32* @PFTM_OTHER_SINGLE, align 4
  %141 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %142 = load %struct.pf_state*, %struct.pf_state** %141, align 8
  %143 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %142, i32 0, i32 1
  store i32 %140, i32* %143, align 8
  br label %144

144:                                              ; preds = %139, %134
  %145 = load %struct.pf_state**, %struct.pf_state*** %5, align 8
  %146 = load %struct.pf_state*, %struct.pf_state** %145, align 8
  %147 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = call i64 @STATE_ADDR_TRANSLATE(%struct.TYPE_17__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @PF_OUT, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %157 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  switch i32 %158, label %159 [
  ]

159:                                              ; preds = %155
  br label %165

160:                                              ; preds = %151
  %161 = load %struct.pf_pdesc*, %struct.pf_pdesc** %8, align 8
  %162 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  switch i32 %163, label %164 [
  ]

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164, %159
  br label %166

166:                                              ; preds = %165, %144
  %167 = load i32, i32* @PF_PASS, align 4
  ret i32 %167
}

declare dso_local i32 @PF_ACPY(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @STATE_LOOKUP(...) #1

declare dso_local i32 @pf_time_second(...) #1

declare dso_local i64 @STATE_ADDR_TRANSLATE(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
